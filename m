Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-in-17.arcor-online.net ([151.189.21.57])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bkUbr-0004DI-3X
 for barebox@lists.infradead.org; Thu, 15 Sep 2016 11:13:41 +0000
Date: Thu, 15 Sep 2016 13:13:14 +0200 (CEST)
From: iw3gtf@arcor.de
Message-ID: <247915608.359799.1473937994666.JavaMail.ngmail@webmail18.arcor-online.net>
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
Subject: Aw: Re: errors copying UBI volumes
To: s.hauer@pengutronix.de, iw3gtf@arcor.de
Cc: barebox@lists.infradead.org

Hi Sascha,

thanks for the answer,

> Hi Giorgio,
> 
> On Wed, Sep 14, 2016 at 05:52:32PM +0200, iw3gtf@arcor.de wrote:
> > Hi,
> > 
> > I'm working on an embedded board with an iMX25 arm CPU and a nand flash.
> > 
> > The board runs a linux kernel/userland.
> > 
> > When the user updates the firmware, the running userland/kernel creates
> some
> > new ubi volumes on the nand, let's say 'kernel_next' and 'userland_next'.
> > On the next system reboot barebox looks if it finds, lets say, the
> 'kernel_next' volume
> > and, in this case, it removes the old one ('kernel'), creates a new, empty
> one ('kernel'),
> > copies 'kernel_next' to the just created 'kernel' and finally removes the
> 'kernel_next'
> > to complete the update.
> 
> While this should work, why so complicated? Since this commit:
> 
> | commit 892abde56c1c5a62d49d8b70c73e5d388e74345d
> | Author: Richard Weinberger <richard@nod.at>
> | Date:   Mon Nov 24 22:30:10 2014 +0100
> |
> |    UBI: rename_volumes: Use UBI_METAONLY
> |    
> |    By using UBI_METAONLY in rename_volumes() it is now possible to rename
> |    an UBI volume atomically while it is open for writing.
> |    This is useful for firmware upgrades.
> 
> It should be possible to just remove 'kernel' and rename 'kernel_next' to
> 'kernel'
> without bootloader intervention.

This is a very good news for me, I already wanted to ask for a UBI rename feature.
Could you please elaborate a bit on this point: I looked for a shell command like the
'ubirename', present in the 'mtd-utils' package, but could not find it. Maybe we just
need a new command implemented in '<barebox_root>/commands/ubi.c'.

> 
> BTW you should consider using Bootloader Spec entries
> (http://www.barebox.org/doc/latest/user/booting-linux.html#bootloader-spec).
> 
> This makes the kernel volume unnecessary and the kernel will only be a file
> in UBIFS and thus updating is a matter of 'cp newkernel /boot/kernel'.
> Also booting in barebox becomes as simple as 'boot nand0.ubi.rootfs', no
> further configuration or scripting required.
> 

thank you for the suggestion, I'll have a look at the method.

> > 
> > Here the relevant part of the init script:
> > 
> > ...
> > 	if [ -e $kernel_next ]; then
> > 		echo "Update the kernel... "
> > 		ubirmvol $ubi_root kernel
> > 		ubimkvol $ubi_root kernel 8M
> > 		cp $kernel_next $kernel
> > 		if [ $? != 0 ]; then
> > 			echo "***Errors copying $kernel_next to $kernel"
> > 			sleep 2
> > 		else
> > 			echo "Update OK."
> > 			ubirmvol $ubi_root kernel_next
> > 		fi
> > 	fi
> > ...
> > 
> > Now, after updating the barebox version to the current one, v2016.09.0,
> the 'cp' command
> > produces an almost endless sequence of failed assertions and stask
> backtraces:
> > 
> > ...
> > UBI assert failed in ubi_eba_read_leb at 359
> > Function entered at [<87053010>] from [<87018ce0>]
> > Function entered at [<87018ce0>] from [<87017fb4>]
> > Function entered at [<87017fb4>] from [<8703f100>]
> > Function entered at [<8703f100>] from [<8703f2cc>]
> > Function entered at [<8703f2cc>] from [<8703faf8>]
> > Function entered at [<8703faf8>] from [<87039e78>]
> > Function entered at [<87039e78>] from [<87029178>]
> > Function entered at [<87029178>] from [<87003614>]
> > Function entered at [<87003614>] from [<87008e0c>]
> > Function entered at [<87008e0c>] from [<870083a0>]
> > Function entered at [<870083a0>] from [<8700908c>]
> > Function entered at [<8700908c>] from [<870011cc>]
> > Function entered at [<870011cc>] from [<870515d4>]
> > Function entered at [<870515d4>] from [<80052648>]
> > UBI assert failed in ubi_eba_read_leb at 359
> > Function entered at [<87053010>] from [<87018ce0>]
> > Function entered at [<87018ce0>] from [<87017fb4>]
> > Function entered at [<87017fb4>] from [<8703f100>]
> > Function entered at [<8703f100>] from [<8703f2cc>]
> > Function entered at [<8703f2cc>] from [<8703faf8>]
> > Function entered at [<8703faf8>] from [<87039e78>]
> > ...
> 
> Please enable KALLSYMS to make this readable.
> 
> > 
> > After trying different things I realized that 'cp' has problems
> > only with UBI volumes that were created by the kernel/userland
> > during the firmware update process; if I create a volume within
> > barebox it just work as expected.
> > 
> > Here is the source code snippet with the failing assertion:
> > (file <barebox_root>/drivers/mtd/ubi/eba.c)
> > 
> > int ubi_eba_read_leb(struct ubi_device *ubi, struct ubi_volume *vol, int
> lnum,
> > 		     void *buf, int offset, int len, int check)
> > {
> > ...
> > 	pnum = vol->eba_tbl[lnum];
> > 	if (pnum < 0) {
> > 		/*
> > 		 * The logical eraseblock is not mapped, fill the whole buffer
> > 		 * with 0xFF bytes. The exception is static volumes for which
> > 		 * it is an error to read unmapped logical eraseblocks.
> > 		 */
> > 		dbg_eba("read %d bytes from offset %d of LEB %d:%d (unmapped)",
> > 			len, offset, vol_id, lnum);
> > 		leb_read_unlock(ubi, vol_id, lnum);
> > 		ubi_assert(vol->vol_type != UBI_STATIC_VOLUME);
> > 		memset(buf, 0xFF, len);
> > 		return 0;
> > 	}
> 
> Have you created 'kernel_next' and/or 'userland_next' as static volume
> (-t=static)? The comment above states that in static volumes you cannot
> read unmapped logical eraseblocks. When wou do not completely fill
> 'kernel_next' with data then you can only read up to the point to which
> it is filled, the remaining LEBs are unmapped and thus unreadable.
> Note that when you hit the unmapped LEBs then you have already read all
> data; the errors only occur on the free space. This is the reason you
> can still boot the new system.
> 

yes, this is the right explanation for what happens on my system.
My userland creates static '*_next' volumes and their size is rounded up
to the next Mb so at the end it will almost always remain some empty/unmapped
LEBs.

The current barebox version just bark a bit louder about it and the 'cp' command
returns with an error making my whole update process fail.

If I had an 'ubirename' command all my problems would be solved.

> Sascha
> 
> -- 
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

giorgio


Giorgio, iw3gtf@arcor.de

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
