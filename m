Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fvcs2-00079z-4W
 for barebox@lists.infradead.org; Fri, 31 Aug 2018 06:25:28 +0000
Date: Fri, 31 Aug 2018 08:25:14 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180831062514.ladbs5375ogvwagb@pengutronix.de>
References: <1535545212-18871-1-git-send-email-t.remmet@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1535545212-18871-1-git-send-email-t.remmet@phytec.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 00/56] Update Barebox UBI
To: Teresa Remmet <t.remmet@phytec.de>
Cc: barebox@lists.infradead.org

On Wed, Aug 29, 2018 at 02:19:16PM +0200, Teresa Remmet wrote:
> Hello, =

> =

> A new update of the Barebox UBI stack to the Kernel v4.19-rc1.
> All patches are cherry-picks from the kernel tree.
> =

> Stumbled over some conflicts mostly due to non exsisting threads in bareb=
ox.
> Run some tests and did not face any regressions so far.

Applied, thanks. I didn't look very close at these patches, just relying
on the fact that they work on the Kernel.

Sascha

> =

> Regards,
> Teresa
> =

> Andrew F. Davis (1):
>   UBI: Fix typos
> =

> Ben Dooks (1):
>   ubi: pr_err() strings should end with newlines
> =

> Boris Brezillon (18):
>   UBI: fastmap: use ubi_find_volume() instead of open coding it
>   UBI: fix add_fastmap() to use the vid_hdr passed in argument
>   UBI: fastmap: avoid multiple be32_to_cpu() when unneccesary
>   UBI: fastmap: scrub PEB when bitflips are detected in a free PEB EC
>     header
>   UBI: factorize code used to manipulate volumes at attach time
>   UBI: factorize destroy_av() and ubi_remove_av() code
>   UBI: fastmap: use ubi_rb_for_each_entry() in unmap_peb()
>   UBI: fastmap: use ubi_io_{read, write}_data() instead of ubi_io_{read,
>     write}()
>   UBI: provide helpers to allocate and free aeb elements
>   UBI: move the global ech and vidh variables into struct
>     ubi_attach_info
>   UBI: simplify recover_peb() code
>   UBI: simplify LEB write and atomic LEB change code
>   UBI: add an helper to check lnum validity
>   UBI: provide an helper to check whether a LEB is mapped or not
>   UBI: provide an helper to query LEB information
>   UBI: hide EBA internals
>   UBI: introduce the VID buffer concept
>   ubi: fastmap: Fix add_vol() return value test in ubi_attach_fastmap()
> =

> Colin Ian King (3):
>   ubi: fix swapped arguments to call to ubi_alloc_aeb
>   ubi: fastmap: fix spelling mistake: "invalidiate" -> "invalidate"
>   ubi: fastmap: Clean up the initialization of pointer p
> =

> Dan Carpenter (1):
>   UBI: Clean up return in ubi_remove_volume()
> =

> Geert Uytterhoeven (1):
>   UBI: Fix crash in try_recover_peb()
> =

> Heiko Schocher (1):
>   UBI: Set free_count to zero before walking through erase list
> =

> Iosif Harutyunov (1):
>   ubi: Fix race condition between ubi device creation and udev
> =

> Lionel Debieve (1):
>   mtd: ubi: Update ubi-media.h to dual license
> =

> Rabin Vincent (1):
>   ubi: fastmap: Fix slab corruption
> =

> Richard Weinberger (20):
>   UBI: Fastmap: Fix memory leak while attaching
>   UBI: Remove alloc_ai() slab name from parameter list
>   UBI: Don't read back all data in ubi_eba_copy_leb()
>   UBI: Fix static volume checks when Fastmap is used
>   ubi: Make recover_peb power cut aware
>   ubi: Fix early logging
>   ubi: Make volume resize power cut aware
>   ubi: Fix scan_fast() comment
>   ubi: Introduce vol_ignored()
>   ubi: Fix whitespace issue in count_fastmap_pebs()
>   ubi: Rework Fastmap attach base code
>   ubi: Check whether the Fastmap anchor matches the super block
>   ubi: Be more paranoid while seaching for the most recent Fastmap
>   ubi: Deal with interrupted erasures in WL
>   ubi: Fix races around ubi_refill_pools()
>   ubi: Fix Fastmap's update_vol()
>   ubi: fastmap: Correctly handle interrupted erasures in EBA
>   ubi: fastmap: Check each mapping only once
>   ubi: fastmap: Detect EBA mismatches on-the-fly
>   ubi: Initialize Fastmap checkmapping correctly
> =

> Sascha Hauer (3):
>   ubi: fastmap: Erase outdated anchor PEBs during attach
>   ubi: Fastmap: Fix typo
>   ubi: Fix copy/paste error in function documentation
> =

> Sebastian Siewior (1):
>   ubi/upd: Always flush after prepared for an update
> =

> Uwe Kleine-K=F6nig (1):
>   UBI: Fix two typos in comments
> =

> Wei Yongjun (1):
>   mtd: ubi: wl: Fix error return code in ubi_wl_init()
> =

> z00189512 (1):
>   UBI: Modify wrong comment in ubi_leb_map function.
> =

>  drivers/mtd/ubi/Kconfig      |   2 +-
>  drivers/mtd/ubi/attach.c     | 473 +++++++++++++++++---------
>  drivers/mtd/ubi/build.c      |  17 +-
>  drivers/mtd/ubi/eba.c        | 785 ++++++++++++++++++++++++++++---------=
------
>  drivers/mtd/ubi/fastmap-wl.c |   6 +-
>  drivers/mtd/ubi/fastmap.c    | 300 ++++++++++-------
>  drivers/mtd/ubi/io.c         |  41 ++-
>  drivers/mtd/ubi/kapi.c       |  18 +-
>  drivers/mtd/ubi/ubi-media.h  |  22 +-
>  drivers/mtd/ubi/ubi.h        | 194 +++++++++--
>  drivers/mtd/ubi/upd.c        |   8 +-
>  drivers/mtd/ubi/vmt.c        |  65 ++--
>  drivers/mtd/ubi/vtbl.c       |  32 +-
>  drivers/mtd/ubi/wl.c         | 161 +++++++--
>  drivers/mtd/ubi/wl.h         |   2 +-
>  15 files changed, 1419 insertions(+), 707 deletions(-)
> =

> -- =

> 2.7.4
> =

> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
