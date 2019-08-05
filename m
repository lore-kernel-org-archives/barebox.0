Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hucDO-0002uo-3i
 for barebox@lists.infradead.org; Mon, 05 Aug 2019 12:35:54 +0000
Date: Mon, 5 Aug 2019 14:35:40 +0200
From: Roland Hieber <rhi@pengutronix.de>
Message-ID: <20190805123540.44he42heamdwr7en@pengutronix.de>
References: <1563436921-362991-1-git-send-email-m.otto@phytec.de>
 <1563436921-362991-4-git-send-email-m.otto@phytec.de>
 <20190805110213.pfqdnyeecyc3rhmq@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190805110213.pfqdnyeecyc3rhmq@pengutronix.de>
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

On Mon, Aug 05, 2019 at 01:02:13PM +0200, Sascha Hauer wrote:
> Hi Maik,
> 
> On Thu, Jul 18, 2019 at 10:02:01AM +0200, Maik Otto wrote:
> > add in the images/Makefile.imx the support of building for signed, usb
> > signed and encrypted/signed images for NXP i.MX HABV4
> > support for NXP i.mx6, i.mx7 and i.mx8
> > 
> > Signed-off-by: Maik Otto <m.otto@phytec.de>
> > ---
> > Changes in v3:
> >     - nothing
> > Changes in v2:
> >     - was Patch 2/4 in v1
> >     - no dynamic variable, parallel building of different image types now
> > ---
> >  images/Makefile.imx | 322 +++++++++++++++++++++++++++++++++++++++++++++++++++-
> >  1 file changed, 321 insertions(+), 1 deletion(-)
> > 
> > diff --git a/images/Makefile.imx b/images/Makefile.imx
> > index 9a7187a..9c70703 100644
> > --- a/images/Makefile.imx
> > +++ b/images/Makefile.imx
> > @@ -147,216 +147,388 @@ pblb-$(CONFIG_MACH_REALQ7) += start_imx6_realq7
> >  CFG_start_imx6_realq7.pblb.imximg = $(board)/datamodul-edm-qmx6/flash-header.imxcfg
> >  FILE_barebox-datamodul-edm-qmx6.img = start_imx6_realq7.pblb.imximg
> >  image-$(CONFIG_MACH_REALQ7) += barebox-datamodul-edm-qmx6.img
> > +FILE_barebox-datamodul-edm-qmx6-s.img = start_imx6_realq7.pblb.simximg
> > +FILE_barebox-datamodul-edm-qmx6-us.img = start_imx6_realq7.pblb.usimximg
> > +FILE_barebox-datamodul-edm-qmx6-es.img = start_imx6_realq7.pblb.esimximg
> > +habv4image-$(CONFIG_MACH_REALQ7) += barebox-datamodul-edm-qmx6
> 
> This file contains way to much boilerplate already for my taste. Adding four
> more lines for every board is not something I like to do.
> 
> Can we add even more magic to get rid of these additional lines?

You mean like... (untested)

----------------- 8< -----------------
# params: CONFIG symbol, entry point, board identifier string
define build_imx_img =
pblb-$($(1)) += $(2)
CFG_$(2).pblb.imximg = $(board)/$(3)/flash-header.imxcfg
FILE_barebox-$(3).img = $(2).pblb.imximg
FILE_barebox-$(3)-s.img = $(2).pblb.simximg
FILE_barebox-$(3)-us.img = $(2).pblb.usimximg
FILE_barebox-$(3)-es.img = $(2).pblb.esimximg
image-$($(1)) += barebox-$(3).img
habv4image-$($(1)) += barebox-$(3)
endef

# [...]

$(call build_imx_img, CONFIG_MACH_REALQ7, start_imx6_realq, datamodul-edm-qmx6)
$(call build_imx_img, CONFIG_MACH_GUF_SANTARO, start_imx6q_guf_santaro, guf-santaro)
$(call build_imx_img, CONFIG_MACH_GK802, start_imx6_gk802, gk802)
$(call build_imx_img, CONFIG_MACH_TQMA6X, start_imx6dl_mba6x, tqma6x)
# [...]
----------------- >8 -----------------

We could also go further and only use the "board identifier" to
determine the CONFIG_MACH_* symbol and the name of the entry point, but
this would probably mean refactoring a lot of board code to conform to
the new scheme. Also I'm not sure whether we can just build *-us.img and
habv4image-$(CONFIG_*) unconditionally for every board. This looks like
another documentation patch opportunity...  :-)

But the result seems much more readable to me.

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
