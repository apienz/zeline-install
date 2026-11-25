# Instalasi Zeline

Zeline dibuat oleh **Mftrferdinand**. Repository ini hanya berisi panduan instalasi Zeline dari PyPI dan bukan repository resmi Zeline.

Sumber paket yang dipakai: [PyPI zeline 0.4.6](https://pypi.org/project/zeline/0.4.6/).

## Persyaratan

- Ubuntu/Debian
- Python 3.10 atau lebih baru
- Node.js 18+ dan npm bila memakai gateway WhatsApp

## Instalasi cepat

```bash
bash install.sh
```

## Instalasi manual

```bash
sudo apt update
sudo apt install -y python3 python3-venv python3-pip
python3 -m venv ~/.venvs/zeline
~/.venvs/zeline/bin/pip install --upgrade pip
~/.venvs/zeline/bin/pip install zeline==0.4.6
~/.venvs/zeline/bin/zeline setup
```

## Verifikasi

```bash
~/.venvs/zeline/bin/zeline version
~/.venvs/zeline/bin/zeline doctor
~/.venvs/zeline/bin/zeline gateway status
```

## Catatan keamanan

Jalankan `zeline setup` langsung di VPS. Jangan membagikan API key, token bot, folder `~/.zeline`, atau file `.env` ke chat, repository, atau pihak lain.

## Credit

- Zeline: Mftrferdinand
- Paket: PyPI `zeline` 0.4.6
