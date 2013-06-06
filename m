Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from lvps83-169-36-49.dedicated.hosteurope.de ([83.169.36.49]
 helo=knowtrek.com)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UkcfN-0004ih-Sh
 for barebox@lists.infradead.org; Thu, 06 Jun 2013 16:03:59 +0000
Received: from [192.168.10.59] (p4FC139EB.dip0.t-ipconnect.de [79.193.57.235])
 by knowtrek.com (Postfix) with ESMTPSA id F02562EF8361
 for <barebox@lists.infradead.org>; Thu,  6 Jun 2013 18:03:34 +0200 (CEST)
Message-ID: <51B0B2D6.3030407@knowtrek.com>
Date: Thu, 06 Jun 2013 18:03:34 +0200
From: Adam Furmanczuk <afurmanczuk@knowtrek.com>
MIME-Version: 1.0
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
Subject: how to flash barebox and set root variable?
To: barebox@lists.infradead.org

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

Hi,

I am quite new to barebox. Before I had little bit experience in u-Boot.

My Barebox version is: barebox 2012.03.0-00162-g3f84abc-dirty (Sep 24
2012 - 10:51:42)

I can mount a Linaro freescale mx53 sd-card setup. I think it has one
Fat8 partion, because Fat32 and Fat16 are not recognized by my barebox
version.

When I boot the uImage, it complains about not setting the "root="
parameter, when I give it as an argument it does not work.

In my u-Boot setup all I need to do was write:

setenv bootcmd "fatload mmc 0:2 0x70800000 uImage;bootm"
setenv bootargs "console=tty0 console=ttymxc0,115200n8
root=/dev/mmcblk0p3 rootfstype=ext4 rootwait ro"

Maybe this is a version isuue? I managed to build the latest kernel
what is the procedure to "flash" the new barebox.bin? Can I use the cp
command for this, or do I need to flash it via OCD? If so what are
good tools in linux to achieve that task?

OK a lot of questions. Most probably already answered, but had not
found google.

Thanks for help and sorry for repeating questions already answered.

Adam
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)
Comment: Using GnuPG with Mozilla - http://enigmail.mozdev.org/

iEYEARECAAYFAlGwstYACgkQefEEI87R1DeHaQCgkNvnNfFLBBZszhb8uzAavgAn
vO4AoJZqx1U9LD6IXGmT7RiMbWL5hW/w
=uv5T
-----END PGP SIGNATURE-----

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
