Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UkcwY-0005JA-7H
 for barebox@lists.infradead.org; Thu, 06 Jun 2013 16:21:47 +0000
Date: Thu, 6 Jun 2013 18:21:20 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130606162120.GA32299@pengutronix.de>
References: <51B0B2D6.3030407@knowtrek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <51B0B2D6.3030407@knowtrek.com>
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
Subject: Re: how to flash barebox and set root variable?
To: Adam Furmanczuk <afurmanczuk@knowtrek.com>
Cc: barebox@lists.infradead.org

On Thu, Jun 06, 2013 at 06:03:34PM +0200, Adam Furmanczuk wrote:
> -----BEGIN PGP SIGNED MESSAGE-----
> Hash: SHA1
> 
> Hi,
> 
> I am quite new to barebox. Before I had little bit experience in u-Boot.
> 
> My Barebox version is: barebox 2012.03.0-00162-g3f84abc-dirty (Sep 24
> 2012 - 10:51:42)
> 
> I can mount a Linaro freescale mx53 sd-card setup. I think it has one
> Fat8 partion, because Fat32 and Fat16 are not recognized by my barebox
> version.
> 
> When I boot the uImage, it complains about not setting the "root="
> parameter, when I give it as an argument it does not work.
> 
> In my u-Boot setup all I need to do was write:
> 
> setenv bootcmd "fatload mmc 0:2 0x70800000 uImage;bootm"
> setenv bootargs "console=tty0 console=ttymxc0,115200n8
> root=/dev/mmcblk0p3 rootfstype=ext4 rootwait ro"
> 
> Maybe this is a version isuue? I managed to build the latest kernel
> what is the procedure to "flash" the new barebox.bin? Can I use the cp
> command for this, or do I need to flash it via OCD? If so what are
> good tools in linux to achieve that task?
> 
> OK a lot of questions. Most probably already answered, but had not
> found google.

What board do you have? Is it one supported by barebox or do you have
your own patches?

Generally with i.MX5 you can write the image (barebox.bin in this old
version, barebox-flash-image in more recent versions) directly to a
MMC/SD card, under Linux with:

cat barebox.bin > /dev/sdx

or under barebox:

tftp barebox.bin /dev/mci0

Generally you also always start barebox 2nd stage. So if you have an
older barebox (Or U-Boot) on your board you can:

tftp barebox.bin /dev/ram0
go /dev/ram0

(Similar with U-Boot: tftp $loadaddr barebox.bin; go $loadaddr)

This way you can test barebox without any risk.

What to do next depends on the environment you have. Please send the
output of 'ls -l /env'.

Using a more recent version of barebox probably is a good idea. We
gained a lot of interesting features in the last year.

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
