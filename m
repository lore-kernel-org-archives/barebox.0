Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-vw0-f49.google.com ([209.85.212.49])
	by bombadil.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1Osvsa-00063h-6z
	for barebox@lists.infradead.org; Tue, 07 Sep 2010 10:58:22 +0000
Received: by vws11 with SMTP id 11so4397417vws.36
	for <barebox@lists.infradead.org>; Tue, 07 Sep 2010 03:58:17 -0700 (PDT)
MIME-Version: 1.0
Date: Tue, 7 Sep 2010 12:58:17 +0200
Message-ID: <AANLkTi=F9yCBrpyYOdts_-Up3ywCMh4=MSa0iwjLLavh@mail.gmail.com>
From: Belisko Marek <marek.belisko@gmail.com>
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
Subject: a9m2440_defconfig failed to compile
To: barebox@lists.infradead.org

Hi,

following steps lead to compilation error (barebox v2010.09.0):

1. make a9m2440_defconfig ARCH=arm
2. make CROSS_COMPILE=arm-linux- ARCH=arm

error: arch/arm/boards/a9m2440/built-in.o: In function `nand_boot':
/home/open-nandra/projects/barebox/arch/arm/boards/a9m2440/a9m2440.c:183:
undefined reference to `s3c24x0_nand_load_image'

It seems in Kconfig for mach-s3c24xx is selected NAND_S3C24X0 but
missing CONFIG_MTD and CONFIG_NAND to properly compile
nand driver for s3c24xx.

Could I send a patch with updated defconfig or exist better solution?

Thanks in advance,

Marek

-- 
as simple and primitive as possible
-------------------------------------------------
Marek Belisko - OPEN-NANDRA
Freelance Developer

Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
Tel: +421 915 052 184
skype: marekwhite
icq: 290551086
web: http://open-nandra.com

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
