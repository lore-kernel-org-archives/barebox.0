Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOfgo-00065e-HJ
 for barebox@lists.infradead.org; Thu, 09 May 2019 09:50:12 +0000
Date: Thu, 9 May 2019 11:50:08 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190509095008.jvyh2wmryq2xgipg@pengutronix.de>
References: <20190508090307.17729-1-s.hauer@pengutronix.de>
 <20190508090307.17729-9-s.hauer@pengutronix.de>
 <20190508110254.rpupxhasd6lvn7g7@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190508110254.rpupxhasd6lvn7g7@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 08/10] filetype: Detect Layerscape PBL images
To: Roland Hieber <rhi@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Wed, May 08, 2019 at 01:02:54PM +0200, Roland Hieber wrote:
> Hi Sascha,
> 
> On Wed, May 08, 2019 at 11:03:05AM +0200, Sascha Hauer wrote:
> > The Layerscape SoCs have their own boot image format. Add filetype
> > detection for it.
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> >  common/filetype.c  | 4 ++++
> >  include/filetype.h | 1 +
> >  2 files changed, 5 insertions(+)
> > 
> > diff --git a/common/filetype.c b/common/filetype.c
> > index fb029a7739..f8ae214446 100644
> > --- a/common/filetype.c
> > +++ b/common/filetype.c
> > @@ -75,6 +75,7 @@ static const struct filetype_str filetype_str[] = {
> >  	[filetype_elf] = { "ELF", "elf" },
> >  	[filetype_imx_image_v1] = { "i.MX image (v1)", "imx-image-v1" },
> >  	[filetype_imx_image_v2] = { "i.MX image (v2)", "imx-image-v2" },
> > +	[filetype_layerscape_image] = { "Layerscape image", "layerscape PBL" },
> 
> The comment above that array says for the "shortname" member:
> 
>   const char *shortname;  /* short string without spaces for shell scripts */
> 
> So I would recommend to "layerscape-pbl" instead.

I should know that as I have written the comment :-/

Here is a v2 that also detects the QSPI image which have an endianess
swapped header.

Sascha

------------------------8<-----------------------------

From 0aafb86e38c5e436fee409f2b94b145e22c4a8be Mon Sep 17 00:00:00 2001
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 3 May 2019 13:10:53 +0200
Subject: [PATCH] filetype: Detect Layerscape PBL images

The Layerscape SoCs have their own boot image format. Add filetype
detection for it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/filetype.c  | 7 +++++++
 include/filetype.h | 2 ++
 2 files changed, 9 insertions(+)

diff --git a/common/filetype.c b/common/filetype.c
index fb029a7739..e2d707b156 100644
--- a/common/filetype.c
+++ b/common/filetype.c
@@ -75,6 +75,8 @@ static const struct filetype_str filetype_str[] = {
 	[filetype_elf] = { "ELF", "elf" },
 	[filetype_imx_image_v1] = { "i.MX image (v1)", "imx-image-v1" },
 	[filetype_imx_image_v2] = { "i.MX image (v2)", "imx-image-v2" },
+	[filetype_layerscape_image] = { "Layerscape image", "layerscape-PBL" },
+	[filetype_layerscape_qspi_image] = { "Layerscape QSPI image", "layerscape-qspi-PBL" },
 };
 
 const char *file_type_to_string(enum filetype f)
@@ -329,6 +331,11 @@ enum filetype file_detect_type(const void *_buf, size_t bufsize)
 	if (is_sparse_image(_buf))
 		return filetype_android_sparse;
 
+	if (buf[0] == 0x55aa55aa && buf[1] == 0x0001ee01)
+		return filetype_layerscape_image;
+	if (buf[0] == 0x01ee0100 && buf[1] == 0xaa55aa55)
+		return filetype_layerscape_qspi_image;
+
 	if (bufsize < 64)
 		return filetype_unknown;
 
diff --git a/include/filetype.h b/include/filetype.h
index 395053dd59..dcb331a6c9 100644
--- a/include/filetype.h
+++ b/include/filetype.h
@@ -45,6 +45,8 @@ enum filetype {
 	filetype_elf,
 	filetype_imx_image_v1,
 	filetype_imx_image_v2,
+	filetype_layerscape_image,
+	filetype_layerscape_qspi_image,
 	filetype_max,
 };
 
-- 
2.20.1

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
