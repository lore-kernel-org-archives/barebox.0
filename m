Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hueaZ-0000Gk-1C
 for barebox@lists.infradead.org; Mon, 05 Aug 2019 15:07:56 +0000
Date: Mon, 5 Aug 2019 17:07:53 +0200
From: Roland Hieber <rhi@pengutronix.de>
Message-ID: <20190805150753.wwg4ddliy6w43udw@pengutronix.de>
References: <1563436921-362991-1-git-send-email-m.otto@phytec.de>
 <1563436921-362991-4-git-send-email-m.otto@phytec.de>
 <20190805110213.pfqdnyeecyc3rhmq@pengutronix.de>
 <20190805123540.44he42heamdwr7en@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190805123540.44he42heamdwr7en@pengutronix.de>
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
Subject: Re: [PATCH v3 4/4] Makefile: add creation of signed/encrypted images
 for imx6, imx7, imx8
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Maik Otto <m.otto@phytec.de>, barebox@lists.infradead.org

On Mon, Aug 05, 2019 at 02:35:40PM +0200, Roland Hieber wrote:
> On Mon, Aug 05, 2019 at 01:02:13PM +0200, Sascha Hauer wrote:
> > Hi Maik,
> > 
> > On Thu, Jul 18, 2019 at 10:02:01AM +0200, Maik Otto wrote:
> > > add in the images/Makefile.imx the support of building for signed, usb
> > > signed and encrypted/signed images for NXP i.MX HABV4
> > > support for NXP i.mx6, i.mx7 and i.mx8
> > > 
> > > Signed-off-by: Maik Otto <m.otto@phytec.de>
> > > ---
> > > Changes in v3:
> > >     - nothing
> > > Changes in v2:
> > >     - was Patch 2/4 in v1
> > >     - no dynamic variable, parallel building of different image types now
> > > ---
> > >  images/Makefile.imx | 322 +++++++++++++++++++++++++++++++++++++++++++++++++++-
> > >  1 file changed, 321 insertions(+), 1 deletion(-)
> > > 
> > > diff --git a/images/Makefile.imx b/images/Makefile.imx
> > > index 9a7187a..9c70703 100644
> > > --- a/images/Makefile.imx
> > > +++ b/images/Makefile.imx
> > > @@ -147,216 +147,388 @@ pblb-$(CONFIG_MACH_REALQ7) += start_imx6_realq7
> > >  CFG_start_imx6_realq7.pblb.imximg = $(board)/datamodul-edm-qmx6/flash-header.imxcfg
> > >  FILE_barebox-datamodul-edm-qmx6.img = start_imx6_realq7.pblb.imximg
> > >  image-$(CONFIG_MACH_REALQ7) += barebox-datamodul-edm-qmx6.img
> > > +FILE_barebox-datamodul-edm-qmx6-s.img = start_imx6_realq7.pblb.simximg
> > > +FILE_barebox-datamodul-edm-qmx6-us.img = start_imx6_realq7.pblb.usimximg
> > > +FILE_barebox-datamodul-edm-qmx6-es.img = start_imx6_realq7.pblb.esimximg
> > > +habv4image-$(CONFIG_MACH_REALQ7) += barebox-datamodul-edm-qmx6
> > 
> > This file contains way to much boilerplate already for my taste. Adding four
> > more lines for every board is not something I like to do.
> > 
> > Can we add even more magic to get rid of these additional lines?
> 
> You mean like... (untested)
[...]

Here's a tested prototype (needed some more eval and strip):

----------------- 8< -----------------
diff --git a/images/Makefile.imx b/images/Makefile.imx
index 9a7187ac7807..f58c0411871d 100644
--- a/images/Makefile.imx
+++ b/images/Makefile.imx
@@ -2,6 +2,19 @@
 # barebox image generation Makefile for i.MX images
 #
 
+# params: CONFIG symbol, entry point, board identifier string
+define build_imx_img =
+$(eval
+pblb-$($(strip $(1))) += $(strip $(2))
+CFG_$(strip $(2)).pblb.imximg = $(board)/$(strip $(3))/flash-header.imxcfg
+FILE_barebox-$(strip $(3)).img    = $(strip $(2)).pblb.imximg
+FILE_barebox-$(strip $(3))-s.img  = $(strip $(2)).pblb.simximg
+FILE_barebox-$(strip $(3))-us.img = $(strip $(2)).pblb.usimximg
+FILE_barebox-$(strip $(3))-es.img = $(strip $(2)).pblb.esimximg
+image-$($(strip $(1))) += barebox-$(strip $(3)).img
+)
+endef
+
 # %.imximg - convert into i.MX image
 # ----------------------------------------------------------------
 
@@ -143,15 +156,8 @@ FILE_barebox-tx53-1011.img = start_imx53_tx53_1011.pblb.imximg
 image-$(CONFIG_MACH_TX53) += barebox-tx53-1011.img
 
 # ----------------------- i.MX6 based boards ---------------------------
-pblb-$(CONFIG_MACH_REALQ7) += start_imx6_realq7
-CFG_start_imx6_realq7.pblb.imximg = $(board)/datamodul-edm-qmx6/flash-header.imxcfg
-FILE_barebox-datamodul-edm-qmx6.img = start_imx6_realq7.pblb.imximg
-image-$(CONFIG_MACH_REALQ7) += barebox-datamodul-edm-qmx6.img
-
-pblb-$(CONFIG_MACH_GUF_SANTARO) += start_imx6q_guf_santaro
-CFG_start_imx6q_guf_santaro.pblb.imximg = $(board)/guf-santaro/flash-header.imxcfg
-FILE_barebox-guf-santaro.img = start_imx6q_guf_santaro.pblb.imximg
-image-$(CONFIG_MACH_GUF_SANTARO) += barebox-guf-santaro.img
+$(call build_imx_img, CONFIG_MACH_REALQ7, start_imx6_realq, datamodul-edm-qmx6)
+$(call build_imx_img, CONFIG_MACH_GUF_SANTARO, start_imx6q_guf_santaro, guf-santaro)
 
 pblb-$(CONFIG_MACH_GK802) += start_imx6_gk802
 CFG_start_imx6_gk802.pblb.imximg = $(board)/gk802/flash-header.imxcfg
----------------- 8< -----------------

Depending on your thoughts regarding the other questions in my previous
mail, I can make this into a proper patch.

 - Roland

-- 
Roland Hieber                     | r.hieber@pengutronix.de     |
Pengutronix e.K.                  | https://www.pengutronix.de/ |
Peiner Str. 6-8, 31137 Hildesheim | Phone: +49-5121-206917-5086 |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
