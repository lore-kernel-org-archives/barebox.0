Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UoTcN-0006mT-IQ
 for barebox@lists.infradead.org; Mon, 17 Jun 2013 07:12:48 +0000
Date: Mon, 17 Jun 2013 09:12:25 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130617071225.GG32299@pengutronix.de>
References: <1370773361-25588-1-git-send-email-shc_work@mail.ru>
 <20130611152747.GP32299@pengutronix.de>
 <1370966063.553147631@f314.mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1370966063.553147631@f314.mail.ru>
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
Subject: Re: [PATCH] ARM: pcm038: Avoid warning if gadget support not
 compiled in
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Tue, Jun 11, 2013 at 07:54:23PM +0400, Alexander Shiyan wrote:
> > On Sun, Jun 09, 2013 at 02:22:41PM +0400, Alexander Shiyan wrote:
> > > 
> > > Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
> > > ---
> > >  arch/arm/boards/pcm038/pcm038.c | 3 ++-
> > >  1 file changed, 2 insertions(+), 1 deletion(-)
> > > 
> > > diff --git a/arch/arm/boards/pcm038/pcm038.c b/arch/arm/boards/pcm038/pcm038.c
> > > index 49677c2..dec5164 100644
> > > --- a/arch/arm/boards/pcm038/pcm038.c
> > > +++ b/arch/arm/boards/pcm038/pcm038.c
> > > @@ -328,7 +328,8 @@ static int pcm038_devices_init(void)
> > >  	mdelay(1);
> > >  	imx_gpio_mode(PE1_PF_USBOTG_STP);
> > >  
> > > -	imx27_add_usbotg(&pcm038_otg_pdata);
> > > +	if (IS_ENABLED(CONFIG_USB_GADGET_DRIVER_ARC))
> > > +		imx27_add_usbotg(&pcm038_otg_pdata);
> > 
> > What warning do you get without this patch?
> 
> Runtime warning "No supported role" from chipidea driver.

Applied now, thanks

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
