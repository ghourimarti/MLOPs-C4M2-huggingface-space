from transformers import pipeline
import gradio as gr
summarizer = pipeline("summarization", model="t5-base", tokenizer="t5-small", truncation=True, framework="tf")
def translate(text):
    text = text.replace('&quot;', '"')
    text = text.replace('&apos;', "'")
    text = text.replace('&amp;', "&")
    result = summarizer(text, min_length=180, truncation=True)
    return result[0]["summary_text"]

iface = gr.Interface(
    fn=translate,
    inputs=gr.inputs.Textbox(lines=10, placeholder="Enter text to summarize..."),
    outputs="text"
)
iface.launch()