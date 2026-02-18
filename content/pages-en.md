# Page Content — English

This file contains all final content for the 9 English pages.
Ready to copy-paste into Elementor.

---

## 1. Home (Landing Page)

### Hero Title
Hillcrest Farm S.E.N.C.

### Hero Subtitle
Premium Peonies — Knowlton, Eastern Townships

### Introduction Text
Welcome to Hillcrest Farm — nestled in the heart of Knowlton, Quebec, in the storied Eastern Townships. Here, amid the rolling hills and tranquil shores of Lac Brome, we cultivate some of the most breathtaking peonies in Canada.

**From our fields to your hands — discover the beauty of the season.**

### CTA Buttons
- **Button 1:** Shop Flowers → link to /en/buy-fresh-flowers/
- **Button 2:** For Florists → link to /en/for-florists/

---

## 2. About Us

### Title
Our Story

### Content
Hillcrest Farm S.E.N.C. is a family peony farm rooted in the rich landscape of Knowlton, Quebec — a historic village in the Eastern Townships, first settled by United Empire Loyalists.

We grow premium peonies that celebrate the beauty of each fleeting season, from our fields near the tranquil shores of Lac Brome.

### Design Notes
- Lifestyle photography
- Warm editorial layout
- Loyalist heritage note

---

## 3. Our Peonies

### Title
Our Peonies

### Content
From classic blush doubles to dramatic coral singles, our peonies are grown with meticulous care from bud to bloom. Each variety is selected for its beauty, fragrance, and longevity — perfect for weddings, events, and everyday moments of elegance.

### Gallery Structure (for each variety)
- **Variety name**
- **Color**
- **Bloom time**
- **Fragrance** (light / medium / strong)
- **High-resolution photo**

### Design Notes
- Masonry grid gallery
- Use CSS class `hc-peony-gallery` and `hc-peony-card`

---

## 4. Buy Fresh Flowers

### Title
Buy Fresh Flowers

### Content
Peonies are available fresh-cut during our blooming season, typically late spring to early summer.

Order ahead to reserve your bouquet, or visit us at the farm. We also offer U-Cut options — come select your own blooms straight from the field.

### Off-Season Message (CSS class: hc-seasonal-notice)
Our fresh peonies are available from late May through early July. Sign up for our newsletter to be notified when the season opens.

### Design Notes
- WooCommerce shop
- Seasonal availability toggle
- Out-of-season message visible during fall/winter months

---

## 5. For Florists

### Title
For Florists

### Content
Are you a florist looking for locally grown, premium peonies? We supply professional florists throughout the Eastern Townships and beyond.

Contact us to discuss availability, pricing, and minimum orders.

### Contact Form Fields (Contact Form 7)
1. **Full Name** (text, required)
2. **Business Name** (text, required)
3. **Email** (email, required)
4. **Phone** (tel, optional)
5. **Weekly Volume Needed** (text, optional)
6. **Message** (textarea, required)

### Suggested Contact Form 7 Code
```
[text* your-name placeholder "Full Name"]
[text* business-name placeholder "Business Name"]
[email* your-email placeholder "Email"]
[tel your-phone placeholder "Phone"]
[text weekly-volume placeholder "Weekly Volume Needed"]
[textarea* your-message placeholder "Your message"]
[submit "Send"]
```

---

## 6. Peony Roots

### Title
Peony Roots

### Content
Bring the beauty of Hillcrest Farm to your own garden. Each fall, we offer a curated selection of peony roots — ideal for home gardeners who want to enjoy these magnificent blooms for decades to come.

Quantities are limited; pre-ordering is strongly recommended.

### Design Notes
- WooCommerce product listings, active late summer–fall only
- Downloadable planting care guide PDF (to be created)

---

## 7. JB SkinSavvi & Boutique

### Title
JB SkinSavvi & Boutique

### Content
The beauty of our peonies doesn't end in the field. During blooming season, fresh Hillcrest Farm bouquets are available at JB SkinSavvi — our skincare boutique in the heart of Knowlton village.

JB SkinSavvi also features a line of peony-inspired skincare products, crafted with the same care we bring to our farm. Visit us in store or explore the collection online at [jbskinsavvi.com](https://jbskinsavvi.com).

### Design Notes
- jbskinsavvi.com link opens in new tab (`target="_blank" rel="noopener"`)
- Boutique address with embedded Google Map
- Cohesive elegant cross-branding

---

## 8. Newsletter

### Title
Newsletter

### Content
Be the first to know when our peonies are in bloom. Sign up for our newsletter and receive seasonal updates, bloom announcements, root sale notifications, and exclusive offers from Hillcrest Farm.

### Design Notes
- Email signup form (MailPoet)
- Also embedded in the footer
- Language preference option at signup

---

## 9. Social Media

### Content
Follow Hillcrest Farm on social media for behind-the-scenes glimpses of our farm, photos of our peonies in bloom, and the latest news of the season.

### Design Notes
- Instagram and Facebook icons in footer
- Optional: live Instagram feed embed on homepage (Smash Balloon plugin)
