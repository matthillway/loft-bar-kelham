# Loft Bar Kelham Website

## Project Overview
Single-page landing website for Loft Bar Kelham, a cocktail bar in Sheffield's Kelham Island area.

**Live URL:** https://www.theloftbar.uk
**GitHub:** https://github.com/matthillway/loft-bar-kelham
**Owner:** Matt Fitzgerald (Hillway Hospitality)

## Tech Stack
- **Framework:** Astro 5.x
- **Styling:** Tailwind CSS 4.x
- **Contact Form:** Web3Forms
- **Hosting:** one.com (SFTP deployment)
- **Domain:** www.theloftbar.uk

## Deployment

### SFTP Credentials (one.com)
```
Host: ssh.cn4oam3ha.service.one
Username: cn4oam3ha_ssh
Port: 22
Password: Blades12345!
```

### Deploy Commands
```bash
# Build production
npm run build

# Deploy via SFTP (using lftp)
lftp -e "set sftp:auto-confirm yes; open -u cn4oam3ha_ssh,Blades12345! sftp://ssh.cn4oam3ha.service.one:22; mirror -R --verbose dist/ /www/; quit"
```

## Project Structure
```
src/
├── layouts/
│   └── Layout.astro      # Base HTML layout
├── components/
│   ├── Navigation.astro  # Sticky header nav
│   ├── Hero.astro        # Full-screen hero
│   ├── About.astro       # About section
│   ├── Drinks.astro      # Signature cocktails
│   ├── Gallery.astro     # Photo grid
│   ├── Location.astro    # Map & address
│   ├── Contact.astro     # Enquiry form
│   └── Footer.astro      # Site footer
├── pages/
│   └── index.astro       # Main page
└── styles/
    └── global.css        # Tailwind + custom CSS
```

## Design System

### Colors
- **Charcoal (Primary):** #1a1a1a
- **Copper (Accent):** #b87333
- **Cream (Text):** #f5f5dc
- **Card Background:** #252525

### Typography
- **Headings:** Playfair Display (serif)
- **Body:** Inter (sans-serif)

### Aesthetic
Industrial cocktail bar - exposed brick, oak beams, moody lighting, warm copper accents

## Contact Details
- **Email:** hello@theloftbar.uk
- **Instagram:** @loftkelham
- **Address:** 23 Alma Street, Kelham Island, Sheffield, S3 8SA

## Development
```bash
npm run dev      # Start dev server
npm run build    # Production build
npm run preview  # Preview production build
```

## Last Updated
January 2025 - Initial build
