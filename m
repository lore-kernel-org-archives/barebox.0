Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from f314.mail.ru ([128.140.169.178])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UmQuH-0008CI-4H
 for barebox@lists.infradead.org; Tue, 11 Jun 2013 15:54:50 +0000
From: =?UTF-8?B?QWxleGFuZGVyIFNoaXlhbg==?= <shc_work@mail.ru>
Mime-Version: 1.0
Date: Tue, 11 Jun 2013 19:54:23 +0400
Message-ID: <1370966063.553147631@f314.mail.ru>
In-Reply-To: <20130611152747.GP32299@pengutronix.de>
References: <1370773361-25588-1-git-send-email-shc_work@mail.ru>
 <20130611152747.GP32299@pengutronix.de>
Reply-To: =?UTF-8?B?QWxleGFuZGVyIFNoaXlhbg==?= <shc_work@mail.ru>
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
Subject: =?UTF-8?B?UmVbMl06IFtQQVRDSF0gQVJNOiBwY20wMzg6IEF2b2lkIHdhcm5pbmcgaWYg?=
 =?UTF-8?B?Z2FkZ2V0IHN1cHBvcnQgbm90IGNvbXBpbGVkIGlu?=
To: =?UTF-8?B?U2FzY2hhIEhhdWVy?= <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

> On Sun, Jun 09, 2013 at 02:22:41PM +0400, Alexander Shiyan wrote:
> > 
> > Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
> > ---
> >  arch/arm/boards/pcm038/pcm038.c | 3 ++-
> >  1 file changed, 2 insertions(+), 1 deletion(-)
> > 
> > diff --git a/arch/arm/boards/pcm038/pcm038.c b/arch/arm/boards/pcm038/pcm038.c
> > index 49677c2..dec5164 100644
> > --- a/arch/arm/boards/pcm038/pcm038.c
> > +++ b/arch/arm/boards/pcm038/pcm038.c
> > @@ -328,7 +328,8 @@ static int pcm038_devices_init(void)
> >  	mdelay(1);
> >  	imx_gpio_mode(PE1_PF_USBOTG_STP);
> >  
> > -	imx27_add_usbotg(&pcm038_otg_pdata);
> > +	if (IS_ENABLED(CONFIG_USB_GADGET_DRIVER_ARC))
> > +		imx27_add_usbotg(&pcm038_otg_pdata);
> 
> What warning do you get without this patch?

Runtime warning "No supported role" from chipidea driver.

---
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
