---
layout: default
title: Tharen Candi  # explicit, so GitHub Pages does not use the first heading
image:
  path: /assets/img/share.jpg
  width: 1200
  height: 630
  alt: Tharen Candi, MSc Computer Science (AI), University of Padova
---

## Featured Links
- [The Limits of Cross-Lingual Transfer: Evaluating SignCLIP on LIS](https://tharencandi.net/signclip-lis-experiments/)
- [Hard Real-Time Systems Analysis (RTIC, Ravenscar, MAST)](https://tharencandi.net/rtic-ravenscar-mast-analysis/)
- [Evaluating Dynamic Object Removal and Scene Stabilisation Strategies for Multi-View Consistent Video](https://tharencandi.net/dynamic-object-removal-for-diffusion-gen-videos-and-3dgs-recon/)
- [NLP & AI Notes (UniPD)](https://tharencandi.net/nlp-unipd-notes/)

## Summary
_Master's student in Computer Science (AI major) based in Padova, Italy. Australian and Italian dual citizen 🇦🇺🇮🇹_

I'm interested in the intersection of AI and systems. I'm currently working on my thesis with the Machine Intelligence Group (MIG) at IAS-Lab, supervised by Professor Nicola Bellotto, building a RIOT-based platform for on-device terrain segmentation for closed-loop tiny-robot navigation. I will graduate in early April 2027.

Alongside my thesis, I do research on sign language recognition and multilingual representation learning.

**Interests**
- **Systems:** ML systems, TinyML, embedded and real-time systems, robotics
- **AI:** deep learning, computer vision, multimodal fusion, representation learning

My goal is to work on innovative technologies that positively impact people's lives.

## Skills
- **Programming Languages:** Python, C/C++, Rust, Ada, Java, Scala
- **ML & Data:** PyTorch, TensorFlow, Hugging Face, OpenCV, MediaPipe, NumPy, PEFT/LoRA
- **TinyML & Edge AI:** MicroFlow, LiteRT (TensorFlow Lite Micro), on-device inference
- **Embedded & Real-Time:** RIOT OS, Rust RTIC, embedded Rust/C, Ada Ravenscar, ESP32/ESP32-S3, ARM Cortex-M4, device drivers (SPI/I2C), WCET analysis, MAST
- **Robotics:** ROS 2
- **Parallel & Concurrent:** CUDA, OpenMP, pthreads, multi-core programming
- **Systems & Tools:** Linux/Debian, Bash, Git, OS kernels
- **DevOps & Automation:** CI/CD (Jenkins), ActiveBatch, ETL pipelines, automated testing
- **Databases:** PostgreSQL, SQL Server, SQLite
- **Web & Networking:** REST APIs, web protocols, networking
- **Methodologies:** Agile, Scrum, XP, Jira, UML
- **Spoken Languages:** 🇦🇺 English (native), 🇮🇹 Italian (B2), 🇬🇷 Greek (A1)
{: .skills}

## Education
{% for e in site.data.education %}{% include entry.html entry=e %}{% endfor %}

## Projects

### Master's
{% for e in site.data.projects.masters %}{% include entry.html entry=e %}{% endfor %}

### Undergraduate
{% for e in site.data.projects.undergrad %}{% include entry.html entry=e %}{% endfor %}

### Other
<div class="compact">
{% for e in site.data.projects.other %}{% include entry.html entry=e %}{% endfor %}
</div>

## Work Experience
{% for e in site.data.experience %}{% include entry.html entry=e %}{% endfor %}

## Honours and Awards
{% for e in site.data.awards %}{% include entry.html entry=e %}{% endfor %}
