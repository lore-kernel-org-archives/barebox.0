Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1duYqf-0006Ct-SD
 for barebox@lists.infradead.org; Wed, 20 Sep 2017 06:51:08 +0000
Date: Wed, 20 Sep 2017 08:50:40 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170920065040.k6wrifq5ghc4qed2@pengutronix.de>
References: <20170915090708.29889-1-l.stach@pengutronix.de>
 <20170915090708.29889-2-l.stach@pengutronix.de>
 <20170916134809.GC6457@ravnborg.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170916134809.GC6457@ravnborg.org>
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
Subject: Re: [PATCH 2/2] imx-bbu-nand-fcb: fix build on MX28 only
To: Sam Ravnborg <sam@ravnborg.org>
Cc: barebox@lists.infradead.org

On Sat, Sep 16, 2017 at 03:48:09PM +0200, Sam Ravnborg wrote:
> Hi Lucas.
> 
> On Fri, Sep 15, 2017 at 11:07:08AM +0200, Lucas Stach wrote:
> > This code may be compiled without ARCH_IMX6 present, so it must not
> > depend on any functions provided by the architecture support.
> > 
> > Fixes: a2618c215bff (imx-bbu-nand-fcb: add support for imx6ul)
> > Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> > ---
> >  common/imx-bbu-nand-fcb.c | 15 ++++++++++++---
> >  1 file changed, 12 insertions(+), 3 deletions(-)
> > 
> > diff --git a/common/imx-bbu-nand-fcb.c b/common/imx-bbu-nand-fcb.c
> > index 7218c5e1ccda..bd539bafa7f7 100644
> > --- a/common/imx-bbu-nand-fcb.c
> > +++ b/common/imx-bbu-nand-fcb.c
> > @@ -38,9 +38,12 @@
> >  #include <io.h>
> >  #include <crc.h>
> >  #include <mach/generic.h>
> > -#include <mach/imx6.h>
> >  #include <mtd/mtd-peb.h>
> >  
> > +#ifdef CONFIG_ARCH_IMX6
> > +#include <mach/imx6.h>
> > +#endif
> > +
> >  struct dbbt_block {
> >  	uint32_t Checksum;
> >  	uint32_t FingerPrint;
> > @@ -141,7 +144,8 @@ static uint8_t reverse_bit(uint8_t b)
> >  	return b;
> >  }
> >  
> > -static void encode_bch_ecc(void *buf, struct fcb_block *fcb, int eccbits)
> > +static void __maybe_unused encode_bch_ecc(void *buf, struct fcb_block *fcb,
> > +					  int eccbits)
> >  {
> >  	int i, j, m = 13;
> >  	int blocksize = 128;
> > @@ -441,9 +445,11 @@ static int read_fcb(struct mtd_info *mtd, int num, struct fcb_block **retfcb)
> >  		goto err;
> >  	}
> >  
> > +#if IS_ENABLED(CONFIG_ARCH_IMX6)
> >  	if (cpu_is_mx6ul() || cpu_is_mx6ull())
> >  		fcb = read_fcb_bch(rawpage, 40);
> >  	else
> > +#endif
> >  		fcb = read_fcb_hamming_13_8(rawpage);
> 
> ifdef out an if else like this is ugly and confusing.

I agree.

> 
> Consider using the much more readable variant:
> 	if (IS_ENABLED(CONFIG_ARCH_IMX6) && (cpu_is_mx6ul() || cpu_is_mx6ull()))
> 		fcb = read_fcb_bch(rawpage, 40);
> 	else
> 		fcb = read_fcb_hamming_13_8(rawpage);

Using IS_ENABLED() is not possible here since cpu_is_mx6ul() is not
declared on i.MX28.

The following should work. Untested though.

Sascha

------------------------8<---------------------------------

From 97a3b800b02f441e13c23872cc2eebde1a475b4d Mon Sep 17 00:00:00 2001
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 20 Sep 2017 08:46:17 +0200
Subject: [PATCH] imx-bbu-nand-fcb: fix build on MX28 only

This code may be compiled without ARCH_IMX6 present, so it must not
depend on any functions provided by the architecture support.
Fixes: a2618c215bff (imx-bbu-nand-fcb: add support for imx6ul)

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/imx-bbu-nand-fcb.c | 18 +++++++++++++++---
 1 file changed, 15 insertions(+), 3 deletions(-)

diff --git a/common/imx-bbu-nand-fcb.c b/common/imx-bbu-nand-fcb.c
index 7218c5e1cc..7bf8aaa5ed 100644
--- a/common/imx-bbu-nand-fcb.c
+++ b/common/imx-bbu-nand-fcb.c
@@ -38,9 +38,21 @@
 #include <io.h>
 #include <crc.h>
 #include <mach/generic.h>
-#include <mach/imx6.h>
 #include <mtd/mtd-peb.h>
 
+#ifdef CONFIG_ARCH_IMX6
+#include <mach/imx6.h>
+static inline int fcb_is_bch_encoded(void)
+{
+	return cpu_is_mx6ul() || cpu_is_mx6ull();
+}
+#else
+static inline int fcb_is_bch_encoded(void)
+{
+	return 0;
+}
+#endif
+
 struct dbbt_block {
 	uint32_t Checksum;
 	uint32_t FingerPrint;
@@ -441,7 +453,7 @@ static int read_fcb(struct mtd_info *mtd, int num, struct fcb_block **retfcb)
 		goto err;
 	}
 
-	if (cpu_is_mx6ul() || cpu_is_mx6ull())
+	if (fcb_is_bch_encoded())
 		fcb = read_fcb_bch(rawpage, 40);
 	else
 		fcb = read_fcb_hamming_13_8(rawpage);
@@ -899,7 +911,7 @@ static int imx_bbu_write_fcbs_dbbts(struct mtd_info *mtd, struct fcb_block *fcb)
 
 	fcb_raw_page = xzalloc(mtd->writesize + mtd->oobsize);
 
-	if (cpu_is_mx6ul() || cpu_is_mx6ull()) {
+	if (fcb_is_bch_encoded()) {
 		/* 40 bit BCH, for i.MX6UL(L) */
 		encode_bch_ecc(fcb_raw_page + 32, fcb, 40);
 	} else {
-- 
2.11.0

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
