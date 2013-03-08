Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UDrfk-0007hs-1j
 for barebox@lists.infradead.org; Fri, 08 Mar 2013 07:24:56 +0000
Date: Fri, 8 Mar 2013 08:24:53 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130308072453.GV1906@pengutronix.de>
References: <1362412809-23253-1-git-send-email-s.hauer@pengutronix.de>
 <CAA4bVAFTT=34QtjaJdvs5Fg6bBKmMN-W4XYYiTbtT1vbCj+HJw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAA4bVAFTT=34QtjaJdvs5Fg6bBKmMN-W4XYYiTbtT1vbCj+HJw@mail.gmail.com>
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
Subject: Re: [PATCH] usb: ehci: initialize ehci_data
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

Hi Antony,

On Fri, Mar 08, 2013 at 09:57:10AM +0400, Antony Pavlov wrote:
> On 4 March 2013 20:00, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> > Without it fields of ehci_data may be unitialized and the driver
> > crashes.
> 
> Sascha!
> 
> Please apply a patch like this! Without it the 'usb' command on my
> Tegra board hangs.

Just did that.

Sascha

> 
> 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> >  drivers/usb/host/ehci-hcd.c |    2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/usb/host/ehci-hcd.c b/drivers/usb/host/ehci-hcd.c
> > index 0c789e4..7c389aa 100644
> > --- a/drivers/usb/host/ehci-hcd.c
> > +++ b/drivers/usb/host/ehci-hcd.c
> > @@ -892,7 +892,7 @@ int ehci_register(struct device_d *dev, struct ehci_data *data)
> >
> >  static int ehci_probe(struct device_d *dev)
> >  {
> > -       struct ehci_data data;
> > +       struct ehci_data data = {};
> >         struct ehci_platform_data *pdata = dev->platform_data;
> >
> >         /* default to EHCI_HAS_TT to not change behaviour of boards
> > --
> > 1.7.10.4
> >
> >
> > _______________________________________________
> > barebox mailing list
> > barebox@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/barebox
> 
> 
> 
> -- 
> Best regards,
>   Antony Pavlov
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
