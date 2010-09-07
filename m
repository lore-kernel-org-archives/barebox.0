Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OswtB-0005dW-QU
	for barebox@lists.infradead.org; Tue, 07 Sep 2010 12:03:02 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Tue, 7 Sep 2010 14:01:47 +0200
References: <AANLkTi=F9yCBrpyYOdts_-Up3ywCMh4=MSa0iwjLLavh@mail.gmail.com>
In-Reply-To: <AANLkTi=F9yCBrpyYOdts_-Up3ywCMh4=MSa0iwjLLavh@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201009071401.47921.jbe@pengutronix.de>
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
Subject: Re: a9m2440_defconfig failed to compile
To: barebox@lists.infradead.org

Belisko Marek wrote:
> Hi,
>
> following steps lead to compilation error (barebox v2010.09.0):
>
> 1. make a9m2440_defconfig ARCH=arm
> 2. make CROSS_COMPILE=arm-linux- ARCH=arm
>
> error: arch/arm/boards/a9m2440/built-in.o: In function `nand_boot':
> /home/open-nandra/projects/barebox/arch/arm/boards/a9m2440/a9m2440.c:183:
> undefined reference to `s3c24x0_nand_load_image'
>
> It seems in Kconfig for mach-s3c24xx is selected NAND_S3C24X0 but
> missing CONFIG_MTD and CONFIG_NAND to properly compile
> nand driver for s3c24xx.
>
> Could I send a patch with updated defconfig or exist better solution?

Should be repaired in the menu and the source files. The defconfig is not the 
correct location to fix it. There are dependencies between these components 
that must be part of the menu.

jbe

-- 
Pengutronix e.K.                              | Juergen Beisert             |
Linux Solutions for Science and Industry      | Phone: +49-8766-939 228     |
Vertretung Sued/Muenchen, Germany             | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686              | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
