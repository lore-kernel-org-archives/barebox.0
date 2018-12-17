Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gYqqp-0007qv-1S
 for barebox@lists.infradead.org; Mon, 17 Dec 2018 11:14:20 +0000
Date: Mon, 17 Dec 2018 12:14:07 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20181217111407.bsdwqy2lqfinwj2p@pengutronix.de>
References: <1545044070.6213.11.camel@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1545044070.6213.11.camel@phytec.de>
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
Subject: Re: AM335x NAND boot on next
To: Teresa Remmet <t.remmet@phytec.de>
Cc: Barebox List <barebox@lists.infradead.org>

Hi Teresa,

On Mon, Dec 17, 2018 at 11:54:30AM +0100, Teresa Remmet wrote:
> Hello Sascha,
> 
> I watend to test the gpmc driver changes for our am335x boards using
> latest next. I noticed that booting from nand is not working correct
> any more. The MLO can not correctly obtain the image size of the
> barebox image.

Ups, right. Try the following.

While you are testing this board anyway could you see if the NAND
generally still works on AM33xx? There are sitting some changes to the
NAND driver in next.

Sascha

-----------------------8<-----------------------------

From 197806965fe26a444d40791fde5acff7eb4cd805 Mon Sep 17 00:00:00 2001
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 17 Dec 2018 12:09:23 +0100
Subject: [PATCH] Images: Add image size to built images

This brings back the image size written into the built images which got
lost in the conversion to using piggydata in the PBL images.

Fixes: 5a1a5ed253 ("ARM: images: use piggydata")

Reported-by: Teresa Remmet <t.remmet@phytec.de>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 images/Makefile | 1 +
 1 file changed, 1 insertion(+)

diff --git a/images/Makefile b/images/Makefile
index 4c6d486f08..41509aa957 100644
--- a/images/Makefile
+++ b/images/Makefile
@@ -66,6 +66,7 @@ $(obj)/%.pbl: $(pbl-lds) $(barebox-pbl-common) $(obj)/piggy.o FORCE
 
 $(obj)/%.pblb: $(obj)/%.pbl FORCE
 	$(call if_changed,objcopy_bin,$(*F))
+	$(Q)$(objtree)/scripts/fix_size -f $@
 
 $(obj)/%.s: $(obj)/% FORCE
 	$(call if_changed,disasm)
-- 
2.19.1

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
