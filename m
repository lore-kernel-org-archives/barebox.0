Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-in-06.arcor-online.net ([151.189.21.46])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bkD2H-0006eY-9m
 for barebox@lists.infradead.org; Wed, 14 Sep 2016 16:27:47 +0000
Received: from mail-in-17-z2.arcor-online.net (mail-in-17-z2.arcor-online.net
 [151.189.8.34]) by mx.arcor.de (Postfix) with ESMTP id 3sZ5f81KHqzvpS
 for <barebox@lists.infradead.org>; Wed, 14 Sep 2016 17:52:32 +0200 (CEST)
Received: from mail-in-08.arcor-online.net (mail-in-08.arcor-online.net
 [151.189.21.48])
 by mail-in-17-z2.arcor-online.net (Postfix) with ESMTP id 24EF61189AB
 for <barebox@lists.infradead.org>; Wed, 14 Sep 2016 17:52:32 +0200 (CEST)
Received: from webmail09.arcor-online.net (webmail09.arcor-online.net
 [151.189.8.45])
 by mail-in-08.arcor-online.net (Postfix) with ESMTP id 3sZ5f80bMFzvbHm
 for <barebox@lists.infradead.org>; Wed, 14 Sep 2016 17:52:32 +0200 (CEST)
Date: Wed, 14 Sep 2016 17:52:32 +0200 (CEST)
From: iw3gtf@arcor.de
Message-ID: <1875844407.837557.1473868352073.JavaMail.ngmail@webmail09.arcor-online.net>
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
Subject: errors copying UBI volumes
To: barebox@lists.infradead.org

Hi,

I'm working on an embedded board with an iMX25 arm CPU and a nand flash.

The board runs a linux kernel/userland.

When the user updates the firmware, the running userland/kernel creates some
new ubi volumes on the nand, let's say 'kernel_next' and 'userland_next'.
On the next system reboot barebox looks if it finds, lets say, the 'kernel_next' volume
and, in this case, it removes the old one ('kernel'), creates a new, empty one ('kernel'),
copies 'kernel_next' to the just created 'kernel' and finally removes the 'kernel_next'
to complete the update.

Here the relevant part of the init script:

...
	if [ -e $kernel_next ]; then
		echo "Update the kernel... "
		ubirmvol $ubi_root kernel
		ubimkvol $ubi_root kernel 8M
		cp $kernel_next $kernel
		if [ $? != 0 ]; then
			echo "***Errors copying $kernel_next to $kernel"
			sleep 2
		else
			echo "Update OK."
			ubirmvol $ubi_root kernel_next
		fi
	fi
...

Now, after updating the barebox version to the current one, v2016.09.0, the 'cp' command
produces an almost endless sequence of failed assertions and stask backtraces:

...
UBI assert failed in ubi_eba_read_leb at 359
Function entered at [<87053010>] from [<87018ce0>]
Function entered at [<87018ce0>] from [<87017fb4>]
Function entered at [<87017fb4>] from [<8703f100>]
Function entered at [<8703f100>] from [<8703f2cc>]
Function entered at [<8703f2cc>] from [<8703faf8>]
Function entered at [<8703faf8>] from [<87039e78>]
Function entered at [<87039e78>] from [<87029178>]
Function entered at [<87029178>] from [<87003614>]
Function entered at [<87003614>] from [<87008e0c>]
Function entered at [<87008e0c>] from [<870083a0>]
Function entered at [<870083a0>] from [<8700908c>]
Function entered at [<8700908c>] from [<870011cc>]
Function entered at [<870011cc>] from [<870515d4>]
Function entered at [<870515d4>] from [<80052648>]
UBI assert failed in ubi_eba_read_leb at 359
Function entered at [<87053010>] from [<87018ce0>]
Function entered at [<87018ce0>] from [<87017fb4>]
Function entered at [<87017fb4>] from [<8703f100>]
Function entered at [<8703f100>] from [<8703f2cc>]
Function entered at [<8703f2cc>] from [<8703faf8>]
Function entered at [<8703faf8>] from [<87039e78>]
...


After trying different things I realized that 'cp' has problems
only with UBI volumes that were created by the kernel/userland
during the firmware update process; if I create a volume within
barebox it just work as expected.

Here is the source code snippet with the failing assertion:
(file <barebox_root>/drivers/mtd/ubi/eba.c)

int ubi_eba_read_leb(struct ubi_device *ubi, struct ubi_volume *vol, int lnum,
		     void *buf, int offset, int len, int check)
{
...
	pnum = vol->eba_tbl[lnum];
	if (pnum < 0) {
		/*
		 * The logical eraseblock is not mapped, fill the whole buffer
		 * with 0xFF bytes. The exception is static volumes for which
		 * it is an error to read unmapped logical eraseblocks.
		 */
		dbg_eba("read %d bytes from offset %d of LEB %d:%d (unmapped)",
			len, offset, vol_id, lnum);
		leb_read_unlock(ubi, vol_id, lnum);
		ubi_assert(vol->vol_type != UBI_STATIC_VOLUME);
		memset(buf, 0xFF, len);
		return 0;
	}
...

Strange enough if I try to directly boot the system with:

# bootm -o /dev/nand0.ubi_volumes.ubi.dtb_next /dev/nand0.ubi_volumes.ubi.kernel_next

Loading ARM Linux zImage '/dev/nand0.ubi_volumes.ubi.kernel_next'
Loading devicetree from '/dev/nand0.ubi_volumes.ubi.dtb_next'
commandline: <NULL>
Booting Linux on physical CPU 0x0
...


then it works and the system boots correctly.

giorgio


Giorgio, iw3gtf@arcor.de

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
