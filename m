Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dT1GQ-0004pj-7L
 for barebox@lists.infradead.org; Thu, 06 Jul 2017 07:31:53 +0000
Received: from [2001:67c:670:100:5054:ff:fe2a:3aa] (helo=pty.hi.pengutronix.de)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.84_2)
 (envelope-from <mol@pengutronix.de>) id 1dT1Ft-0002al-2s
 for barebox@lists.infradead.org; Thu, 06 Jul 2017 09:31:17 +0200
Received: from mol by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <mol@pengutronix.de>) id 1dT1Fs-0005JS-RT
 for barebox@lists.infradead.org; Thu, 06 Jul 2017 09:31:16 +0200
Date: Thu, 6 Jul 2017 09:31:16 +0200
From: Michael Olbrich <m.olbrich@pengutronix.de>
Message-ID: <20170706073116.jkfwdmxibbgopmmz@pengutronix.de>
References: <20170705105637.4484-1-s.trumtrar@pengutronix.de>
 <20170705105637.4484-2-s.trumtrar@pengutronix.de>
 <1499252725.22075.6.camel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1499252725.22075.6.camel@pengutronix.de>
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
Subject: Re: [PATCH 2/8] common: efi: do not use undefined kconfig option
To: barebox@lists.infradead.org

On Wed, Jul 05, 2017 at 01:05:25PM +0200, Lucas Stach wrote:
> Am Mittwoch, den 05.07.2017, 12:56 +0200 schrieb Steffen Trumtrar:
> > Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> > ---
> >  common/efi/efi.c | 3 +--
> >  1 file changed, 1 insertion(+), 2 deletions(-)
> > 
> > diff --git a/common/efi/efi.c b/common/efi/efi.c
> > index 05c58250f4a7..f924385958e1 100644
> > --- a/common/efi/efi.c
> > +++ b/common/efi/efi.c
> > @@ -266,8 +266,7 @@ static int efi_console_init(void)
> >  
> >  	add_generic_device("efi-stdio", DEVICE_ID_SINGLE, NULL, 0 , 0, 0, NULL);
> >  
> > -	if (IS_ENABLED(CONFIG_ARCH_EFI_REGISTER_COM1))
> 
> It seems we lost this option when moving arch/efi to arch/x86. As
> unconditionally enabling the serial console may break some boards, the
> proper fix should be to bring back the Kconfig option.

I think that option is pretty much redundant. This is x86. There is no
device tree to enable devices.
There are only two possible scenarios: use ns16550 or not. Building the
driver and maybe use it does not exist. And we can use
CONFIG_DRIVER_SERIAL_NS16550 to choose.

Somewhat unrelated: I think this driver should be avoided if possible. I'm
quite certain, that the original use-case for this was a bug in barebox and
not a broken EFI serial driver.

Michael

> > -		add_ns16550_device(0, 0x3f8, 0x10, IORESOURCE_IO | IORESOURCE_MEM_8BIT,
> > +	add_ns16550_device(0, 0x3f8, 0x10, IORESOURCE_IO | IORESOURCE_MEM_8BIT,
> >  				&ns16550_plat);
> >  
> >  	return 0;

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
