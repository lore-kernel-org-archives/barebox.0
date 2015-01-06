Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Y8Q6B-0008RI-Ux
 for barebox@lists.infradead.org; Tue, 06 Jan 2015 09:06:48 +0000
Date: Tue, 6 Jan 2015 10:06:24 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150106090624.GH4544@pengutronix.de>
References: <1420041155.29284.24.camel@eaton.com>
 <1420450912.6731.16.camel@lws-gamez.phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1420450912.6731.16.camel@lws-gamez.phytec.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: beagle bone black: problem of boot from eMMC
To: Teresa =?iso-8859-15?Q?G=E1mez?= <t.gamez@phytec.de>
Cc: barebox@lists.infradead.org

On Mon, Jan 05, 2015 at 10:41:52AM +0100, Teresa G=E1mez wrote:
> Hello Manuel,
> =

> Am Mittwoch, den 31.12.2014, 14:52 +0000 schrieb ManuelCurcio@Eaton.com:
> > =

> > After, I wanted to boot from the the internal eMMC. =

> > So after boot from sd card, I mounted the eMMC (mount /dev/mmc1.0) and
> > copied the MLO and barebox.bin in the /mnt/mmc1.0 folder.
> > =

> > When I try to boot from the internal eMMC ,I have the following error: =

> > --------->
> > barebox 2014.12.0 #2 Wed Dec 31 15:29:16 GMT 2014
> > =

> > =

> > Board: TI AM335x BeagleBone
> > detected 'BeagleBone Black'
> > omap-hsmmc 48060000.mmc: registered as 48060000.mmc
> > booting from MMC
> > fat fat0: probe failed: error 22
> > Unable to mount  (-22)
> > booting failed
> > <---------
> =

> This issue comes from commit:
> =

> commit 0d6392de4ad824a6553c0e3e3e18edef689a7c85
> Author: Sascha Hauer <s.hauer@pengutronix.de>
> Date:   Thu Jun 5 12:09:07 2014 +0200
> =

>     ARM: AM335x: Beaglebone: Use stripped down devicetree for MLO
> =

> For the MLO only the am335x-bone-common.dtsi is used to create the
> device tree. But this does not have the emmc support included.

Damn. Somehow I knew I was guilty :(

> =

> > =

> > I tried myself to find a 'correction' by added the call of
> > am33xx_of_register_bootdevice(void) function at the end of the static
> > int beaglebone_devices_init(void) function. With this modification,
> > sometime (depending of the last boot: from SD Card or from eMMC)  I can
> > boot, someting not. =

> =

> What you are also missing is a disabled emmc node from the
> am335x-boneblack.dts in the am335x-bone-common.dtsi.

I just sent a patch which fixes this.

Sascha

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
