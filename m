Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lpp01m010-f49.google.com ([209.85.215.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TDCgQ-000180-Oj
 for barebox@lists.infradead.org; Sun, 16 Sep 2012 11:06:40 +0000
Received: by lagu2 with SMTP id u2so3533885lag.36
 for <barebox@lists.infradead.org>; Sun, 16 Sep 2012 04:06:34 -0700 (PDT)
MIME-Version: 1.0
Date: Sun, 16 Sep 2012 13:06:34 +0200
Message-ID: <CAM8FrKKCQE7TkEEP3_2GwCA+nDYYY+C-SaYKDGiF_oCovkYSOQ@mail.gmail.com>
From: Marcus Folkesson <marcus.folkesson@gmail.com>
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
Subject: Problem with nand_mxs driver
To: barebox@lists.infradead.org

Hi there,

We are currently using a iMX23 EVK board while waiting for our "real" hardw=
are.
Unfortunately, we are not getting the NAND-flash to work properly.
The NAND-flash is a 4GiB chip from Samsung, K9HCG08U1D.

After we applied the patch "[PATCH] mtd: nand: extend NAND flash
detection to new MLC chips" (please see mailing list), the NAND-flash
shows up with right page- and oob-size.
But we are getting error code EBADMSG  (-74) when trying to read from
the NAND-flash.
The error shows up roughly every other time we accessing the chip for readi=
ng.

See the dump below:

***************************************************************************=
*****
PowerPrep start initialize power...
Battery Voltage =3D 4.27V
5v source detected.Valid battery
voltage detected.Booting from battery                  voltage source.
Aug 23 201208:31:49
EVK board
EMI_CTRL 0x1C084040
FRAC 0x92926192
init_ddr_mt46v32m16_133Mhz
power 0x00820710
Frac 0x92926192
start change cpu freq
hbus 0x00000003
cpu 0x00010001


barebox 2012.08.0-00296-gc37b2f8-dirty #47 Thu Sep 13 16:42:30 CEST 2012


Board: Freescale i.MX23-EVK
NAND device: Manufacturer ID: 0xec, Chip ID: 0xd7 (Samsung NAND 4GiB
3,3V 8-bit), page size: 4096, OOB size: 218
Scanning device for bad blocks
Bad eraseblock 4 at 0x00200000
Bad eraseblock 5 at 0x00280000
Bad eraseblock 6 at 0x00300000
Bad eraseblock 7 at 0x00380000
Bad eraseblock 8 at 0x00400000
Bad eraseblock 9 at 0x00480000
Bad eraseblock 10 at 0x00500000
Bad eraseblock 11 at 0x00580000
Bad eraseblock 81 at 0x02880000
Bad eraseblock 2154 at 0x43500000
ehci@ehci: USB EHCI 1.00
Malloc space: 0x40000000 -> 0x40ffffff (size 16 MB)
Stack space : 0x3fff0000 -> 0x40000000 (size 64 kB)
err -74
envfs: wrong magic on /dev/env0
no valid environment found on /dev/env0. Using default environment
running /env/bin/init...
open: No such file or directory
set parameter: No such device

Hit any key to stop autoboot:  1
USB: scanning bus for devices...
Bus 001 Device 001: ID 0000:0000 EHCI Host Controller
1 USB Device(s) found
mount: No such file or directory
open: No such file or directory
barebox:/ ls /dev/
defaultenv    env0          env_raw       full          mem
nand0         nand_oob0     null          ram0          self0
self_raw      zero
barebox:/ cat /dev/nand0
err -74

barebox:/ cat /dev/nand0
=FF=FFSTMPP<......=DA...............................NCB ....................
...........
.......
...........0...........................RBIN................................=
...........................................................................=
...........................................................................=
...........................................................................=
...........................................................................=
...........................................................................=
....
 ...
...........................................................................=
.......
     ......................................................................=
...........................................................................=
...........................................................................=
...........................................................................=
...........................................................................=
..........=FF=FF=FF=FF=FF=FF=FF=FF=FF=FF=FF=FF=FF=FF=FF=FF=FF=FF=FF=FF=FF=
=FF=FF=FF=FF=FF=FF=FF=FF=FF=FF=FF=FF=FF=FF=FF=FF=FF=FF=FF=FF=FF=FF=FF=FF=FF=
=FF=FF=FF=FF=FF=FF=FF=FF=FF=FF=FF=FF=FF=FF=FF=FF=FF=FF=FF=FF=FF=FF=FF=FF=FF=
=FF=FF=FF=FF=FF=FF=FF=FF=FF=FF=FF=FF=FF=FF=FF=FF=FF=FF=FF=FF=FF=FF=FF=FF=FF=
=FF=FF=FF=FF=FF=FF=FF=FF=FF=FF=FF=FF=FF=FF=FF=FF=FF=FF=FF=FF=FF=FF=FF=FF=FF=
=FF=FF=FF=FF=FF=FF=FF=FF=FF=FF=FF=FF=FF=FF=FF=FF=FF=FF=FF=FF=FF=FF=FF=FF=FF=
=FF=FF=FF=FF=FF=FF=FF=FF=FF=FF=FF=FF=FF=FF=FF=FF=FF=FF=FF=FF=FF=FF=FF=FF=FF=
=FF=FF=FF=FF=FF=FF=FF=FF=FF=FF=FF=FF=FF=FF=FF=FF=FF=FF=FF=FF=FF=FF=FF=FF=FF=
=FF=FF=FF=FF=FF=FF=FF=FF=FF=FF=FF=FF=FF=FF=FF=FF=FF=FF=FF=FF=FF=FF=FF=FF=FF=
=FF=FF=FF=FF=FF=FF=FF=FF=FF=FF=FF=FF=FF=FF=FF=FF=FF=FF=FF=FF


***************************************************************************=
*****

The failure is tracked down to
drivers/mtd/nand/nand_mxs.c:mxs_nand_ecc_read_page(struct mtd_info
*mtd, struct nand_chip *nand,uint8_t *buf).
When a block is read from the NAND-flash, the code loops over the
status bytes and accumulating the  ECC status. Please see the code
below:

***************************************************************************=
*****

	/* Loop over status bytes, accumulating ECC status. */
	status =3D nand_info->oob_buf + mxs_nand_aux_status_offset();
	for (i =3D 0; i < mxs_nand_ecc_chunk_cnt(mtd->writesize); i++) {


		printf(KERN_ERR "%s, status: 0x%02x\n", __FUNCTION__, status[i]);
		if (status[i] =3D=3D 0x00)
			continue;

		if (status[i] =3D=3D 0xff)
			continue;

		if (status[i] =3D=3D 0xfe) {
			failed++;
			continue;
		}

		corrected +=3D status[i];
	}

***************************************************************************=
*****

Status description:
0x00, No errors found
0xFF, Block is erased
0xFE, Block is uncorrectable

If I print the status and the read fails, It is allways status[0] and
status[1] that is =3D=3D 0xFE.
The other statuses are.... 0xFF (block erased?!) as i remember,  will
check this at work tomorrow.

I find it _very_ unlikely that the first two blocks have errors on all
partitions on different EVK boards.


Is it something wrong with the BCH handling in the driver?
Is it an effect of the zeroed ecc-layout? (see probe-function)

Does anyone recognize the problem or have a guess of what it could be?

Thanks in advance

Med v=E4nliga h=E4lsningar / Best regards
Marcus Folkesson

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
