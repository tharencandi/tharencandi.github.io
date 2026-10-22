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
{% for s in site.data.skills %}{% if s.long %}- **{{ s.title }}:** {{ s.long }}
{% endif %}{% endfor %}{: .skills}

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
