Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ip2.televic.com ([81.82.194.222])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1R61GF-0006Y9-AW
	for barebox@lists.infradead.org; Tue, 20 Sep 2011 14:25:24 +0000
From: =?iso-8859-1?Q?Lambrecht_J=FCrgen?= <J.Lambrecht@TELEVIC.com>
Date: Tue, 20 Sep 2011 16:25:18 +0200
Message-ID: <4E78A24E.7080000@televic.com>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: ubiattach error
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hello,

When I want to run 'ubiattach' I get this error:

barebox:/dev erase nand0.root1.bb
Skipping bad block at 0x08000000
Skipping bad block at 0x08020000
barebox:/dev ubiattach nand0.root1
UBI: attaching mtd0 to ubi0
UBI: physical eraseblock size:   131072 bytes (128 KiB)
UBI: logical eraseblock size:    129024 bytes
UBI: smallest flash I/O unit:    2048
UBI: sub-page size:              512
UBI: VID header offset:          512 (aligned 512)
UBI: data offset:                2048
UBI: empty MTD device detected
UBI: create volume table (copy #1)
UBI error: ubi_io_write: error -5 while writing 512 bytes to PEB 0:512, =

written 0 bytes
UBI error: ubi_io_write: error -5 while writing 512 bytes to PEB 1:512, =

written 0 bytes
UBI error: ubi_io_write: error -5 while writing 512 bytes to PEB 2:512, =

written 0 bytes
UBI error: ubi_io_write: error -5 while writing 512 bytes to PEB 3:512, =

written 0 bytes
UBI error: ubi_io_write: error -5 while writing 512 bytes to PEB 4:512, =

written 0 bytes
UBI error: ubi_io_write: error -5 while writing 512 bytes to PEB 5:512, =

written 0 bytes
failed to attach: I/O error
------------------------------------------------------------------
- I use a imx27, and our HW is based on the imx27pdk.
- We use the BI-swap solution to work around the nand flash HW bug (2kB =

pages are load in 512 chunks, mangling the spare area) (so =

drivers/mtd/nand/nand_imx.c is patched).
- I see UBI detects a sub-page size of 512B, what does that mean?
   Because in the UBI menu config "drivers - mtd - NAND - select nand =

pagesize you want to support booting from", I must take '2048 byte page =

size'; with '512 byte and 2048 byte pagesize' selected the board does =

not boot.
- I use LTIB from CVS (not the freescale one), that I have patched =

according to the imx28 BSP from freescale to support UBI

Kind regards,
J=FCrgen

-- =

J=FCrgen Lambrecht
R&D Associate
Tel: +32 (0)51 303045    Fax: +32 (0)51 310670
http://www.televic-rail.com
Televic Rail NV - Leo Bekaertlaan 1 - 8870 Izegem - Belgium
Company number 0825.539.581 - RPR Kortrijk

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
