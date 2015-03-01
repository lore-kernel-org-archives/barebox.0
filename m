Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YS2ip-0006ID-CY
 for barebox@lists.infradead.org; Sun, 01 Mar 2015 12:11:48 +0000
Message-ID: <1425211847.2197.3.camel@lynxeye.de>
From: Lucas Stach <dev@lynxeye.de>
Date: Sun, 01 Mar 2015 13:10:47 +0100
In-Reply-To: <20150301072330.GB11010@pengutronix.de>
References: <1425064938-11558-1-git-send-email-dev@lynxeye.de>
 <1425064938-11558-4-git-send-email-dev@lynxeye.de>
 <20150301072330.GB11010@pengutronix.de>
Mime-Version: 1.0
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
Subject: Re: [PATCH 4/5] ARM: tegra: add barebox update handler to Beaver board
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Am Sonntag, den 01.03.2015, 08:23 +0100 schrieb Sascha Hauer:
> On Fri, Feb 27, 2015 at 08:22:17PM +0100, Lucas Stach wrote:
> > Signed-off-by: Lucas Stach <dev@lynxeye.de>
> > ---
> >  arch/arm/boards/nvidia-beaver/board.c | 4 ++++
> >  1 file changed, 4 insertions(+)
> > 
> > diff --git a/arch/arm/boards/nvidia-beaver/board.c b/arch/arm/boards/nvidia-beaver/board.c
> > index d270301..b4d856e 100644
> > --- a/arch/arm/boards/nvidia-beaver/board.c
> > +++ b/arch/arm/boards/nvidia-beaver/board.c
> > @@ -19,6 +19,7 @@
> >  #include <gpio.h>
> >  #include <i2c/i2c.h>
> >  #include <init.h>
> > +#include <mach/tegra-bbu.h>
> >  
> >  static int nvidia_beaver_fs_init(void)
> >  {
> > @@ -53,6 +54,9 @@ static int nvidia_beaver_device_init(void)
> >  
> >  	barebox_set_hostname("beaver");
> >  
> > +	tegra_bbu_register_emmc_handler("eMMC", "/dev/disk0.boot0",
> > +					BBU_HANDLER_FLAG_DEFAULT);
> 
> 'disk0' is not a persistent name and will change when your SD slots are
> probed in a different order. You should add aliases to the device nodes
> and use of_alias_get() to obtain them, see for example imx-esdhc.c
> 
It's not a problem for these patches, as both boards have their
environment on disk0.boot1, so the eMMC will always be the first SDMMC
device to be detected and consequently always get number 0 assigned.

But in general I agree with you and will add the alias handling in a
follow on series.

Regards,
Lucas



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
