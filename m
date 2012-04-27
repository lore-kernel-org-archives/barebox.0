Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-yw0-f49.google.com ([209.85.213.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SNiZt-00046o-36
 for barebox@lists.infradead.org; Fri, 27 Apr 2012 10:39:05 +0000
Received: by yhjj52 with SMTP id j52so269276yhj.36
 for <barebox@lists.infradead.org>; Fri, 27 Apr 2012 03:39:02 -0700 (PDT)
MIME-Version: 1.0
Date: Fri, 27 Apr 2012 12:39:02 +0200
Message-ID: <CAD9ZU8CNj+DEft7R9LqEGx5GgQ3X1BMA=YcWbLjXmwuUrcLfKQ@mail.gmail.com>
From: Gabriel Tisan <gabriel.tisan@gmail.com>
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
Subject: imx35_nand driver
To: barebox@lists.infradead.org

Hi !

I try to upgrade a custom board from an old version(2009) of barebox
to a new one.

But I have some problems when the nand driver is
loading(imx35_add_nand(&nand_info)

After I boot with the old barebox, I use tftp to load the new version
of barebox in ram and at run I get this on console :

NAND device: Manufacturer ID: 0x2c, Chip ID: 0xdc (Micron NAND 512MiB
3,3V 8-bit)
Bad block table not found for chip 0
Bad block table not found for chip 0
Scanning device for bad blocks
Bad eraseblock 0 at 0x00000000
Bad eraseblock 1 at 0x00020000
Bad eraseblock 2 at 0x00040000
................

It seems that it could not find the bad block tables, although on the
old barebox they are found.

Has someone an idea what I could try to go forward ?


------------------------------------old
CONFIG-------------------------------------
CONFIG_NAND=y
CONFIG_NAND_IMX=y
CONFIG_NAND_IMX_BOOT=y
# CONFIG_MTD_NAND_VERIFY_WRITE is not set
# CONFIG_MTD_NAND_ECC_SMC is not set
CONFIG_MTD_NAND_IDS=y
------------------------------------new
CONFIG-------------------------------------
CONFIG_MTD=y
CONFIG_MTD_WRITE=y
CONFIG_MTD_OOB_DEVICE=y
# CONFIG_MTD_RAW_DEVICE is not set

#
# Self contained MTD devices
#
# CONFIG_MTD_DOCG3 is not set
CONFIG_NAND=y
# CONFIG_NAND_ECC_SOFT is not set
CONFIG_NAND_ECC_HW=y
# CONFIG_NAND_ECC_HW_SYNDROME is not set
# CONFIG_NAND_ECC_HW_NONE is not set
CONFIG_NAND_INFO=y
CONFIG_NAND_READ_OOB=y
CONFIG_NAND_BBT=y
CONFIG_NAND_IMX=y
# CONFIG_MTD_NAND_VERIFY_WRITE is not set
# CONFIG_MTD_NAND_ECC_SMC is not set
CONFIG_MTD_NAND_IDS=y



Thanks,

Gabriel

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
