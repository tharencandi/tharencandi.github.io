# Tharen Candi - CV and Project Showcase
📍 Padova, Italy | 📧 candi.tharen@gmail.com

[Email](mailto:candi.tharen@gmail.com) / [LinkedIn](https://www.linkedin.com/in/tharen-candi-191620214/) / [GitHub](https://github.com/tharencandi/) / [CV web-version](https://tharencandi.github.io)

## 🔗 Featured Links
- [The Limits of Cross-Lingual Transfer: Evaluating SignCLIP on LIS](https://tharencandi.net/signclip-lis-experiments/)
- [Hard Real-Time Systems Analysis (RTIC, Ravenscar, MAST)](https://tharencandi.net/rtic-ravenscar-mast-analysis/)
- [Evaluating Dynamic Object Removal and Scene Stabilisation Strategies for Multi-View Consistent Video](https://tharencandi.net/dynamic-object-removal-for-diffusion-gen-videos-and-3dgs-recon/)
- [NLP & AI Notes (UniPD)](https://tharencandi.net/nlp-unipd-notes/)

## 👋 Summary
_Master's student in Computer Science (AI major) based in Padova, Italy. Australian and Italian dual citizen 🇦🇺🇮🇹_

I'm interested in the intersection of AI and systems. I'm currently working on my thesis with the Machine Intelligence Group (MIG) at IAS-Lab, supervised by Professor Nicola Bellotto, building a RIOT-based platform for on-device terrain segmentation for closed-loop tiny-robot navigation. I will graduate in early April 2027.

Alongside my thesis, I do research on sign language recognition and multilingual representation learning.

**Interests**
- **Systems:** ML systems, TinyML, embedded and real-time systems, robotics
- **AI:** deep learning, computer vision, multimodal fusion, representation learning

My goal is to work on innovative technologies that positively impact people's lives.

## 🛠️ Skills
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

## 🎓 Education

**MSc Computer Science (AI Major)** @ [University of Padova](https://www.unipd.it/) _(Oct 2024 - Present)_ <br>
GPA: 28.08/30

**BComp (Computer Science)** @ [University of Sydney](https://www.sydney.edu.au/) _(Feb 2020 - Aug 2023)_ <br>
WAM: 82.2 (Distinction)

**Exchange Program (Computer Science)** @ [EPFL](https://www.epfl.ch/) _(Sep 2022 - Feb 2023)_ <br>
GPA: 5.6/6.0

**14-week Intensive Italian Language and Cultural Immersion Course** @ [Centro di Lingua e Cultura Italiana per Stranieri](https://scuola-italiano-milano.com/en/) _(Mar 2023 - Jun 2023)_ <br>
Milan, Italy

**Higher School Certificate** @ [Trinity Grammar School](https://www.trinity.nsw.edu.au/) _(2019)_ <br>
ATAR: 97.65 · Sabre fencing vice-captain

## 👨‍💻 Projects

### Master's

**MSc Thesis: On-Device Learned Perception for Tiny Robots** <br>
_MSc Thesis, Machine Intelligence Group (IAS-Lab), University of Padova (2026 - Present)_
- Integrating Rust-based TinyML inference (MicroFlow) into RIOT OS on ESP32-S3 for closed-loop tiny-robot navigation
- Developing a RIOT driver for the Arducam Mini 2MP Plus (OV2640, SPI) camera with JPEG and raw output, to be contributed upstream
- Training and developing Tiny Vision models
- Targeting a live on-device segmentation demo
- _Technologies used_: Rust, C, RIOT OS, ESP32-S3, MicroFlow, TinyML
<br><br>

**Universal Sign Language Representations for ISLR** <br>
_Independent Research (2026 - Present)_
- Exploring multilingual, language-universal sign representations, motivated by the cross-lingual transfer limits I found in SignCLIP
- Developing a pose-based architecture that learns language-gated sign embeddings by predicting into a frozen text-embedding space, so representations carry semantic meaning across sign languages
- _Technologies used_: Python, PyTorch, MediaPipe
<br><br>

**[The Limits of Cross-Lingual Transfer: Evaluating SignCLIP on Italian Sign Language (LIS)](https://tharencandi.net/signclip-lis-experiments/)** <br>
_Research (Feb 2026 - Present)_
- First study of SignCLIP's multilingual transfer to LIS across zero-shot, few-shot and fine-tuning, on the A3LIS-147 and SignIT datasets
- Showed that aligning many sign languages to one English text space causes negative zero-shot transfer: it helps iconic signs and hurts non-iconic ones
- Ran a fine-tuning ablation over six contrastive objectives (InfoNCE, SupCon, GlobalNCE, DHN-NCE, ProLIP, cross-entropy). GlobalNCE raised zero-shot R@1 from 3.7% to 76.2%, and its linear probe (80.2%) matches the previous state of the art on A3LIS-147
- On SignIT, outperformed all of the original authors' non-video baselines using pose keypoints only
- _Technologies used_: Python, PyTorch, fairseq, MediaPipe Holistic, scikit-learn
<br><br>

**Automatic Extraction of Anatomical Landmarks of Pinna Shape** <br>
_Huawei Munich Tech Arena 2026 · Team GoMuDada (Aug 2026 - Sep 2026)_
- Built a pipeline that predicts 85 anatomical ear landmarks from 3D head scans, for personalised spatial audio (HRTF)
- Fused three different networks (multi-hypothesis DGCNN, HRNet heatmaps on rendered depth/curvature images, Point2SSM++) with per-landmark agreement weighting, deployed as cross-validated ensembles
- Completed dense ear contours with a statistical shape model guiding geodesic paths on the mesh, then a graph-attention refiner, reaching ~1.2 mm mean error
- Generated synthetic training ears via PCA shape sampling and RBF mesh warping, cutting anchor error by 4%
- _Technologies used_: Python, PyTorch, NumPy, SciPy, scikit-learn, trimesh, point-cloud deep learning
<br><br>

**Multimodal Speech Emotion Recognition on RAVDESS** <br>
_Master's Course Project, Speech Processing (2026)_
- Built an audio-visual emotion recognition system on RAVDESS, combining self-supervised speech representations with a facial-expression branch through late fusion
- Compared three audio approaches: frozen wav2vec 2.0 probing, LoRA-adapted wav2vec 2.0, and zero-shot emotion2vec
- Designed a visual branch on MediaPipe facial blendshapes, using a temporal CNN-GRU with dilated residual blocks
- Found that LoRA improved audio-only performance but degraded after fusion compared with the frozen probe, showing that the best single-modality model is not always the best one to fuse
- _Technologies used_: Python, PyTorch, Hugging Face, PEFT/LoRA, MediaPipe
<br><br>

**[Hard Real-Time Systems: Ada Ravenscar vs. Rust RTIC](https://tharencandi.net/rtic-ravenscar-mast-analysis/)** <br>
_Master's Exam Project (Jan 2026 - Feb 2026)_
- Conducted a comparative evaluation of Ada Ravenscar and Rust RTIC for hard real-time systems on ARM Cortex-M4
- Used the MAST suite for schedulability analysis and profiled worst-case execution time (WCET)
- _Technologies used_: Ada, Rust, RTIC, Ravenscar, ARM Cortex-M4, MAST
<br><br>

### Undergraduate

**Glioblastoma Cell Segmentation Pipeline** <br>
_Undergraduate Capstone Project (Feb 2023 - Aug 2023)_
- Engineered and deployed an automated deep learning pipeline for segmentation of gigapixel whole-slide images
- Trained a DRAN CNN (U-Net) in TensorFlow, and built the pipeline with OpenCV, Celery and Redis
- _Technologies used_: Python, TensorFlow, Keras, OpenCV, NumPy, Celery, Redis, Flask, Linux
<br><br>

**JOS Operating System Kernel** <br>
_Undergraduate Coursework @ EPFL (Sep 2022 - Feb 2023)_
- Built a 32-bit x86 kernel in C and Assembly: boot process, memory management, user environments, preemptive multitasking, file system, spawn and shell
- _Technologies used_: C, Assembly, x86, kernel programming
<br><br>

**Multiplayer Battleships for the Nintendo DS** <br>
_Embedded Software Project_
- Designed and implemented a multiplayer game entirely in C, working directly with the NDS hardware: interrupts, Wi-Fi, graphics and button input
- Wrote `txt4libnds`, a small text-engine library for creating and managing text objects in libnds projects
- _Technologies used_: C, libnds, embedded programming
<br><br>

### Other
- **Multiprocessor (NUMA) and CUDA experiments in C**<br>
  _Experiments on the specific challenges of maximising performance on multiprocessor CPU and GPU systems._
- **Motion block visualisation**<br>
  _Motion estimation and visualisation in Python with OpenCV, using sqrt(SSD) macroblock matching._
- **16-bit CPU design in Verilog**<br>
  _Designed and implemented a 16-bit CPU with an 18-instruction ISA, plus a Python assembler._
- **Functional programming in Scala**<br>
  _Labs from Martin Odersky's functional programming course._
- **Thread-safe B-tree data structure in C**

## 🛠️ Work Experience

**Graduate Intern - Carbon Trading and Origination** @ [Glencore](https://www.glencore.com/) _(Jul 2024 - Sep 2024)_ <br>
- Developed ETL data pipelines and automated processes for supply and demand forecasting (Python, SQL Server, ActiveBatch), turning a 5-hour manual process into a fully automated system
- Conducted market modelling and analysis in the carbon trading sector in Excel
- Wrote technical and end-user documentation for internal tools and processes

***Skills***: _Python, SQL Server, ActiveBatch, ETL, data analysis, Excel, technical documentation_
<br><br>

**Private Tutor** @ Self-employed _(Feb 2021 - Jul 2024)_ <br>
- Tutored university students in OOP and systems programming using C, Java and Python

***Skills***: _teaching, C, Java, Python, OOP, systems programming, communication_
<br><br>

**Online Department Shift Leader** @ [Coles](https://www.coles.com.au/) _(Aug 2021 - Aug 2022)_ <br>
- Led online order fulfilment for pickup and delivery, managing time-sensitive logistics and customer service
<br><br>

**Musical Staff** @ [Trinity Grammar School](https://www.trinity.nsw.edu.au/) _(Dec 2019 - Mar 2020)_ <br>
- Played 🎸 and 🎹 in the school production of _School of Rock: The Musical_ and helped students learn their instruments for their on-stage roles
<br><br>

## 🏆 Honours and Awards

**Master's Study Grant** by [Italian Ministry of Foreign Affairs](https://www.esteri.it/) _(2024, 2025)_ <br>
Study grant for a Master's degree in Italy.

**Dean's List for Excellence in Academic Performance** @ [USYD](https://www.sydney.edu.au/) _(2023)_ <br>
Academic excellence in the Bachelor of Computing.

**Vice-Chancellor's Global Mobility Scholarship** @ [USYD](https://www.sydney.edu.au/) _(2022)_ <br>
Scholarship for high-achieving students to study on exchange.

**HSC Top Achiever in Information Processes and Technology** by [NESA](https://educationstandards.nsw.edu.au/) _(2019)_ <br>
Ranked 6th in the state.

**School Subject Prizes** @ [Trinity Grammar School](https://www.trinity.nsw.edu.au/) _(2018 - 2019)_ <br>
First in course for Software Design and Development, Information Processes and Technology, and Advanced English, in both Year 11 and Year 12.

**Battle of the Bands Winner** @ [Trinity Grammar School](https://www.trinity.nsw.edu.au/) _(2019)_ <br>
For a performance of "The End" medley by The Beatles.