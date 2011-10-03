Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ip2.televic.com ([81.82.194.222])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1RAkk0-0000gY-F0
	for barebox@lists.infradead.org; Mon, 03 Oct 2011 15:47:45 +0000
From: =?iso-8859-1?Q?Lambrecht_J=FCrgen?= <J.Lambrecht@TELEVIC.com>
Date: Mon, 3 Oct 2011 17:47:35 +0200
Message-ID: <4E89D917.5090809@televic.com>
References: <4E82DB82.2000505@televic.com> <4E85C769.6020204@televic.com>
In-Reply-To: <4E85C769.6020204@televic.com>
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
Subject: Re: howto boot kernel from ubi volume?
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On 09/30/2011 03:43 PM, Lambrecht J=FCrgen wrote:
>
> On 09/28/2011 10:32 AM, Lambrecht J=FCrgen wrote:
> >
> > Hello,
> >
> > Because a NAND flash is not reliable, I don't want to write the kernel
> > image raw to flash.
> > Instead, I want to put it in an UBI volume.
> >
> > * The currently running kernel is written in barebox to
> > /dev/nand0.kernel.bb, and the ubi rootfs image to /dev/nand0.root.bb; I
> > have a free partition in /dev/nand0.diag.bb.
> > * So I in a running kernel (v3.0-rc6) I formatted an ubi partition (on
> > that nand0.diag.bb mtd3), and created 2 volumes (kernel and rootfs).
> > Then I tftp'd a zImage to the kernel volume - the same zImage that is
> > currently running.
> > * Then in barebox: 'barebox:/dev ubiattach nand0.diag' gives:
> > UBI: attaching mtd0 to ubi0
> > UBI: physical eraseblock size:   131072 bytes (128 KiB)
> > UBI: logical eraseblock size:    129024 bytes
> > UBI: smallest flash I/O unit:    2048
> > UBI: sub-page size:              512
> > UBI: VID header offset:          512 (aligned 512)
> > UBI: data offset:                2048
> > registering /dev/ubi0
> > registering kernel as /dev/ubi0.kernel
> > registering rootfs as /dev/ubi0.rootfs
> > UBI: attached mtd0 to ubi0
> > UBI: MTD device name:            "nand0.diag"
> > UBI: MTD device size:            48 MiB
> > UBI: number of good PEBs:        384
> > UBI: number of bad PEBs:         0
> > UBI: max. allowed volumes:       128
> > UBI: wear-leveling threshold:    4096
> > UBI: number of internal volumes: 1
> > UBI: number of user volumes:     2
> > UBI: available PEBs:             3
> > UBI: total number of reserved PEBs: 381
> > UBI: number of PEBs reserved for bad PEB handling: 3
> > UBI: max/mean erase counter: 19/0
> > * Then I set bootargs correct
> > * Then 'barebox:/dev bootz ubi0.kernel' gives:
> > ubi_volume_cdev_read: 48 @ 0x00000000
> > invalid magic 0x0001f800
> >
> > Why is that?
> > My barebox version is 2010.12.0.
> > Could it be because the mtd-utils used in linux is 1.4.6 (both on the
> > target and the host (my laptop)), and the one in barebox is older?
> >
> > FYI: When I create an empty ubi volume in linux, and try to tftp to it
> > in barebox, I get this error:
> > (and the same error with ubimkvol)
> >
> > barebox:/ tftp zImage /dev/ubi0.kernel
> > error frame: 0xa3b05828 0x00000882
> > TFTP from server 10.0.56.4 ('zImage' -> '/dev/ubi0.kernel')
> >          UBI error: ubi_io_write: error -5 while writing 512 bytes to
> > PEB 0:512, written 0 bytes
> >
> Maybe this is the answer here.  I will try it out next week.
> http://www.linux-mtd.infradead.org/faq/ubi.html#L_subpage_verify_fail
>
Indeed. Now after an ubiattach, I tftp to an ubi volume, and it succeeds
barebox:/dev tftp zImage ubi0.data

But when trying to something after that, I get out-of-memory
So, what is ubi0.data: is this something in RAM or in flash?
I guess in flash, because when I boot linux afterwards, it fails to =

mount that ubi0.data volume. So something was written..

Now
   ubimkvol /dev/ubi0 test 4MiB
succeeds (registering test as /dev/ubi0.test)
And I can also tftp to it.

Then in linux I can mount that volume created in barebox, and I can also =

write to it.
Again, when I tftp to that test volume in barebox, I cannot mount it =

anymore in linux.

Is it correct to conclude that barebox has no ubi-read and ubi-write =

functions?
Maybe I am confusing ubi and ubifs, and that the mount in linux fails =

because I mount ubifs, but barebox wrote in an ubi block, without =

filesystem (ubifs).
Is there a way to read UBI blocks in linux?

regards,
J=FCrgen

>
> Juergen
> >
> > UBI warning: ubi_eba_write_leb: failed to write VID header to LEB
> > 2147479551:0, PEB 0
> > UBI: try another PEB
> > UBI error: ubi_io_write: error -5 while writing 512 bytes to PEB 0:512,
> > written 0 bytes
> > UBI warning: ubi_eba_write_leb: failed to write VID header to LEB
> > 2147479551:0, PEB 0
> > UBI: try another PEB
> > UBI error: ubi_io_write: error -5 while writing 512 bytes to PEB 0:512,
> > written 0 bytes
> > UBI warning: ubi_eba_write_leb: failed to write VID header to LEB
> > 2147479551:0, PEB 0
> > UBI: try another PEB
> > UBI error: ubi_io_write: error -5 while writing 512 bytes to PEB 0:512,
> > written 0 bytes
> > UBI warning: ubi_eba_write_leb: failed to write VID header to LEB
> > 2147479551:0, PEB 0
> > UBI warning: ubi_ro_mode: switch to read-only mode
> > Cannot start volume update
> > write: Read-only file system
> > \
> > tftp failed: error -30
> >
> >
> > Kind regards,
> > J=FCrgen
> >
> > J=FCrgen Lambrecht
> > R&D Associate
> > Tel: +32 (0)51 303045    Fax: +32 (0)51 310670
> > http://www.televic-rail.com
> > Televic Rail NV - Leo Bekaertlaan 1 - 8870 Izegem - Belgium
> > Company number 0825.539.581 - RPR Kortrijk
> >
> > _______________________________________________
> > barebox mailing list
> > barebox@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/barebox
> >
>
>
> --
> J=FCrgen Lambrecht
> R&D Associate
> Tel: +32 (0)51 303045    Fax: +32 (0)51 310670
> http://www.televic-rail.com
> Televic Rail NV - Leo Bekaertlaan 1 - 8870 Izegem - Belgium
> Company number 0825.539.581 - RPR Kortrijk
>
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
>


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
