Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Sa8pj-0003Y7-M4
 for barebox@lists.infradead.org; Thu, 31 May 2012 17:06:50 +0000
Date: Thu, 31 May 2012 19:06:31 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120531170631.GR30400@pengutronix.de>
References: <CAONxwYOdiRnDiRRFikckrj+6pOKA5DgW-hxwRCRgVGQ93p3QUQ@mail.gmail.com>
 <20120524153119.6d724afc@eb-e6520>
 <CAONxwYNisYJ+hvHTnxjHs-oPVGDFrhajVxMMrZXFJ8GN7aTg9A@mail.gmail.com>
 <20120525120858.77dd6e7a@eb-e6520>
 <CAONxwYPWmxz1uraADOW2mV6x-qzjSLpZ=3BuFx3AaVKdvxTOrQ@mail.gmail.com>
 <20120529092958.GP30400@pengutronix.de>
 <CAONxwYOVJ3kroiK2yMBKFh=dhEgturFVixzKzGg7JQG7VCRMAw@mail.gmail.com>
 <CAONxwYO8Y9uYCr7VeGq9YbybRAGOZFZEQiKOTRfzm-=fH-0ihg@mail.gmail.com>
 <20120530054738.GF30400@pengutronix.de>
 <CAONxwYNf7_+H1oC2AuL2A_edBXqqkdSjxt6eFwPvU4VS+UzU0g@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAONxwYNf7_+H1oC2AuL2A_edBXqqkdSjxt6eFwPvU4VS+UzU0g@mail.gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: Booting mx25 based device from SD and NOR
To: Roberto Nibali <rnibali@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, May 31, 2012 at 03:12:08PM +0200, Roberto Nibali wrote:
> Hi
> 
> 
> 
> > > +# or set your networking parameters here
> > > +#eth0.ipaddr=192.168.1.80
> > > +#eth0.netmask=255.255.255.0
> > > +#eth0.gateway=a.b.c.d
> > > +eth0.serverip=192.168.1.23
> > > +eth0.ethaddr=00:50:c2:8c:e6:0e
> >
> > *never* *ever* add MAC addresses to the default environment.
> 
> 
>  Ok. In my case, the MAC address is actually stored inside a secured at24
> EEPROM buffer. Unfortunately, at24 via I2C does not seem to be available in
> barebox. I reckon I have to port it from the kernel or uboot :).

Or just leave the field blank. In this case a random (local-) MAC
address is generated.

> 
> I have included some more debugging and also workarounds for the mx25. This
> is the current debug output, where it clearly indicates that for some
> reason the mx25 esdhc related registers never show a transfer complete for
> a multiblock write:

The kernel has this:

 if (is_imx25_esdhc(imx_data) || is_imx35_esdhc(imx_data))
                /* Fix errata ENGcm07207 present on i.MX25 and i.MX35 */
                host->quirks |= SDHCI_QUIRK_NO_MULTIBLOCK
                        | SDHCI_QUIRK_BROKEN_ADMA;

Which means that the kernel won't do multiblock on i.MX25 and i.MX35.

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
