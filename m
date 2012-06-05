Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from c60.cesmail.net ([216.154.195.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SbybL-0001vL-4U
 for barebox@lists.infradead.org; Tue, 05 Jun 2012 18:35:33 +0000
Message-ID: <20120605143521.bm3yhrn3sgsw8k8k-tcbagvf@webmail.spamcop.net>
Date: Tue, 05 Jun 2012 14:35:21 -0400
From: gpontis@spamcop.net
MIME-Version: 1.0
Content-Disposition: inline
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"; DelSp="Yes"
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Problem copying from NFS to SD card (crash & reboot)
To: barebox@lists.infradead.org

barebox 2012.05.0 (May 18 2012 - 16:56:20)

Board: NVS 10301
Clocks: CPU 400 MHz, master 133 MHz, main 12.000 MHz
registered netconsole as cs1
cfi_flash@cfi_flash0: found cfi flash at 10000000, size 1048576
atmel_mci@mci0: registered as mci0
mci@mci0: registered disk0
atmel_nand: Use On Flash BBT
NAND device: Manufacturer ID: 0x20, Chip ID: 0xda (ST Micro NAND  
256MiB 3,3V 8-bit)
Bad block table found at page 131008, version 0x01
Bad block table found at page 130944, version 0x01
nand_read_bbt: Bad block at 0x0b620000
Malloc space: 0x71f00000 -> 0x73efffff (size 32 MB)
Stack space : 0x71ef8000 -> 0x71f00000 (size 32 kB)
running /env/bin/init...

Hit any key to stop autoboot:  3
barebox / : mkdir /mnt
barebox / : mount /dev/disk0.0 fat /mnt
barebox / : ls /mnt
rootfs.cpio.gz    rootfs.ubi        zImage
barebox / : nfs /var/share/R3/zImage /mnt
open: Is a directory
barebox / : nfs /var/share/R3/zImage /mnt/zImage
phy0: Link is up - 100/Full

Filename '/var/share/R3/zImage'.
         [##########atmel_mci@atmel_mci0: command/data timeout             ]
atmel_mci@atmel_mci0: command/data timeout
BUG: failure at common/block.c:248/block_put()!
BUG!
no stack data available

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
