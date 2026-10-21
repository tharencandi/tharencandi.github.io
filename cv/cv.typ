#import "@preview/basic-resume:0.2.9": *

// Personal Information
#let name = "Tharen Candi"
#let location = "Padova, Italy"
#let email = "candi.tharen@gmail.com"
#let github = "https://github.com/tharencandi"
#let linkedin = "https://www.linkedin.com/in/tharencandi/"
#let personal-site = "https://tharencandi.net"
#let phone = "+39 3761273583"

// Contact details are written out below rather than passed to the template,
// so links show a short label instead of the full URL. The negative pad
// takes up the space of the template's (now empty) contact line.
#show: resume.with(
  author: name,
  accent-color: "#26428b",
  font: "New Computer Modern",
  paper: "us-letter",
  author-position: left,
  personal-info-position: left,
)

#pad(top: -1.2em)[
  #(
    phone,
    location,
    link("mailto:" + email)[#email],
    link(github)[GitHub],
    link(linkedin)[LinkedIn],
    link(personal-site)[Website],
  ).join("  |  ")
]

Italian/Australian dual citizen. MSc Computer Science (AI) student working at the intersection of AI and systems: TinyML, embedded systems, computer vision, representation learning. Graduating April 2027, and seeking a graduate role.

== Education

#edu(
  institution: "University of Padova",
  location: "Padova, Italy",
  dates: dates-helper(start-date: "Oct 2024", end-date: "Apr 2027 (expected)"),
  degree: "MSc Computer Science (AI Major) | GPA: 28.08/30",
)

#edu(
  institution: "University of Sydney",
  location: "Sydney, AUS",
  dates: dates-helper(start-date: "Feb 2020", end-date: "Aug 2023"),
  degree: "BComp (Computer Science) | WAM: 82.2 (Distinction)",
)

#edu(
  institution: "EPFL",
  location: "Lausanne, CH",
  dates: dates-helper(start-date: "Sep 2022", end-date: "Feb 2023"),
  degree: "Exchange Program (Computer Science) | GPA: 5.6/6.0",
)

== Research and Projects

#project(
  role: "MSc Thesis: Closed-Loop On-Device Perception for Tiny Robots",
  name: "MIG, IAS-Lab",
  dates: dates-helper(start-date: "2026", end-date: "Present"),
)
- Integrating Rust TinyML inference (microflow-rs) into RIOT OS on ESP32-S3 for closed-loop tiny-robot navigation.
- Writing a RIOT driver for the Arducam OV2640 SPI camera (for upstream) towards a live on-device segmentation demo.
- Developing TinyML models for on-device perception.

#project(
  role: "The Limits of Cross-Lingual Transfer: SignCLIP on LIS",
  name: "Research",
  dates: dates-helper(start-date: "Feb 2026", end-date: "Present"),
)
- First study of SignCLIP on low-resource Italian Sign Language. Revealed negative transfer effect for non-iconic signs.
- Ablated six contrastive losses: GlobalNCE raised zero-shot R\@1 from 3.7% to 76.2%; linear probe (80.2%) matches SOTA.

#project(
  role: "Universal Sign Language Representation Learning",
  name: "Independent Research",
  dates: dates-helper(start-date: "2026", end-date: "Present"),
)
- Developing a pose-based model that learns cross-lingual sign embeddings by predicting into a frozen text space.

#project(
  role: "3D Pinna Landmark Extraction",
  name: "Huawei Munich Tech Arena",
  dates: dates-helper(start-date: "Aug 2026", end-date: "Sep 2026"),
)
- Predicted 85 ear landmarks from 3D scans, fusing DGCNN, HRNet and Point2SSM++ (\~1.2 mm mean error).

#project(
  role: "Multimodal Speech Emotion Recognition",
  name: "MSc Course Project",
  dates: "2026",
)
- Late fusion of wav2vec 2.0 audio and MediaPipe face features on RAVDESS.

#project(
  role: "Hard Real-Time Systems: Ada Ravenscar vs. Rust RTIC",
  name: "MSc Exam Project",
  dates: dates-helper(start-date: "Jan 2026", end-date: "Feb 2026"),
)
- Compared Ada Ravenscar and Rust RTIC on ARM Cortex-M4, with MAST schedulability analysis and WCET profiling.

#project(
  role: "Glioblastoma Cell Segmentation Pipeline",
  name: "Undergraduate Capstone",
  dates: dates-helper(start-date: "Feb 2023", end-date: "Aug 2023"),
)
- Deployed a deep learning pipeline segmenting gigapixel whole-slide images (TensorFlow U-Net, OpenCV, Celery, Redis).

== Work Experience

#work(
  title: "Graduate Intern - Carbon Trading and Origination",
  location: "",
  company: "Glencore",
  dates: dates-helper(start-date: "Jul 2024", end-date: "Sep 2024"),
)
- Built ETL pipelines for demand forecasting (Python, SQL Server, ActiveBatch), automating a 5-hour manual process.
- Conducted carbon-market modelling and analysis, and wrote technical and end-user documentation.

#work(
  title: "Private Tutor",
  location: "Sydney",
  company: "Self-employed",
  dates: dates-helper(start-date: "Feb 2021", end-date: "Jul 2024"),
)
- Tutored university students in OOP and systems programming (C, Java, Python).

#grid(
  columns: (1fr, 1fr),
  column-gutter: 2em,
  [
    == Honours and Awards
    - *Master's Study Grant*: Italian MFA (2024, 2025)
    - *Dean's List*: University of Sydney (2023)
    - *Global Mobility Scholarship*: USYD (2022)
    - *HSC Top Achiever*: 6th in State for IPT (2019)
  ],
  [
    == Skills
    - *Languages*: Python, C/C++, Rust, Ada, Java, Scala
    - *ML*: PyTorch, TensorFlow, Hugging Face, OpenCV
    - *Systems*: RIOT OS, RTIC, ROS 2, Linux, CUDA, Git
    - *Spoken*: English (native), Italian (B2), Greek (A1)
  ]
)
