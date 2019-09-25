Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-eopbgr740115.outbound.protection.outlook.com
 ([40.107.74.115] helo=NAM01-BN3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDBKt-0007f6-Qu
 for barebox@lists.infradead.org; Wed, 25 Sep 2019 17:44:21 +0000
From: "Barbier, Renaud" <renaud.barbier@abaco.com>
Date: Wed, 25 Sep 2019 17:44:16 +0000
Message-ID: <MN2PR16MB3117C56576A8FB7A258431B691870@MN2PR16MB3117.namprd16.prod.outlook.com>
Content-Language: en-US
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
Subject: barebox 2019.07 ubiformat
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

We recently jumped from barebox 2016.07 to 2019.07. 
Everything went well till the NAND got ubiformated.

Using the version from2016.07, the NOR boot partition can be formatted (FIT image) and NAND (file system) and the system boots.
When using the barebox 2019-07, both storage can be formatted but when booting (Linux 4.16 or 5.2) I get:

nand: device found, Manufacturer ID: 0x01, Chip ID: 0xdc
nand: AMD/Spansion S34ML04G1
nand: 512 MiB, SLC, erase size: 128 KiB, page size: 2048, OOB size: 64
Bad block table found at page 262080, version 0x01
Bad block table found at page 262016, version 0x01
1 fixed-partitions partitions found on MTD device ff800000.flash
Creating 1 MTD partitions on "ff800000.flash":
0x000000000000-0x000020000000 : "nand"
fsl,ifc-nand ff800000.nand: IFC NAND device at 0xff800000, bank 1
...
...
ubi0: default fastmap pool size: 200
ubi0: default fastmap WL pool size: 100
ubi0: attaching mtd5
ubi0: fixable bit-flip detected at PEB 2
ubi0: fixable bit-flip detected at PEB 3
ubi0: fixable bit-flip detected at PEB 4
...
ubi0: fixable bit-flip detected at PEB 3270
random: crng init done
ubi0: scanning is finished
__nand_correct_data: uncorrectable ECC error
__nand_correct_data: uncorrectable ECC error
__nand_correct_data: uncorrectable ECC error
...
__nand_correct_data: uncorrectable ECC error
ubi0 warning: ubi_io_read: error -74 (ECC error) while reading 22528 bytes from PEB 0:4096, read only 22528 bytes, retry
__nand_correct_data: uncorrectable ECC error
...
ubi0 error: ubi_io_read: error -74 (ECC error) while reading 22528 bytes from PE
B 0:4096, read 22528 bytes
CPU: 0 PID: 1 Comm: swapper Not tainted 5.2.0-owc-g39fb4f3.tethys-dx1014 #1
Call Trace:
[cf825d18] [c02e7d0c] ubi_io_read+0x1b4/0x37c (unreliable)
[cf825d68] [c02dd9a0] ubi_read_volume_table+0x128/0xb8c
[cf825dc8] [c02ef46c] ubi_attach+0xbc/0x3a0
[cf825df8] [c02e1710] ubi_attach_mtd_dev+0x654/0xcf8
[cf825e58] [c0575ec0] ubi_init+0x198/0x224
[cf825e98] [c0003194] do_one_initcall+0x3c/0x1a8
[cf825ef8] [c055fba8] kernel_init_freeable+0x12c/0x1dc
[cf825f28] [c00033b0] kernel_init+0x14/0x114
[cf825f38] [c000f268] ret_from_kernel_thread+0x14/0x1c

So far I have been looking at the commit in barebox regarding MTD/UBI/UBIFS to v2019.09 and cannot see anything obvious.
I could rebase forward if necessary. Is that something that is been observed by anybody?

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
