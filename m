Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OZfK4-0004J6-Gx
	for barebox@lists.infradead.org; Fri, 16 Jul 2010 07:27:05 +0000
Date: Fri, 16 Jul 2010 09:27:02 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20100716072702.GJ14113@pengutronix.de>
References: <1278335795-16289-1-git-send-email-s.hauer@pengutronix.de>
	<20100708091925.GF25143@jasper.tkos.co.il>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20100708091925.GF25143@jasper.tkos.co.il>
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
Subject: Re: UBI support
To: Baruch Siach <baruch@tkos.co.il>
Cc: barebox@lists.infradead.org

Hi Baruch,

On Thu, Jul 08, 2010 at 12:19:25PM +0300, Baruch Siach wrote:
> Hi Sascha,
> 
> On Mon, Jul 05, 2010 at 03:16:23PM +0200, Sascha Hauer wrote:
> > The following series prepares and implements UBI for barebox. Here is a log
> > while playing with UBI:
> 
> I've tested this on our i.MX25 board. Here's what I get:
> 
> barebox:/ ubiattach /dev/nand0.rootfs
> UBI: attaching mtd0 to ubi0
> UBI: physical eraseblock size:   131072 bytes (128 KiB)
> UBI: logical eraseblock size:    129024 bytes
> UBI: smallest flash I/O unit:    2048
> UBI: sub-page size:              512
> UBI: VID header offset:          512 (aligned 512)
> UBI: data offset:                2048
> UBI: empty MTD device detected
> UBI: create volume table (copy #1)
> UBI error: ubi_scan_get_free_peb: no eraseblocks found
> failed to attach: error 28

I just tested it on an i.MX35 board which should have the same Nand
Controller as the i.MX25. I have never seen Nand devices with a subpage
size smaller than the I/O unit size (sub-page size: 512), so I would
start looking there.
I don't know how this subpage size is handled. It may well be that this
is a bug in the Nand driver and not UBI.
You could also go through 'git log drivers/mtd/ubi' in the kernel to see
if there's something relevant. Unfortunately I don't know from which
kernel version the U-Boot UBI code was derived from.

Sascha


> 
> The kernel is able to attach the same device as follows:
> 
> UBI: attaching mtd3 to ubi0
> UBI: physical eraseblock size:   131072 bytes (128 KiB)
> UBI: logical eraseblock size:    129024 bytes
> UBI: smallest flash I/O unit:    2048
> UBI: sub-page size:              512
> UBI: VID header offset:          512 (aligned 512)
> UBI: data offset:                2048
> UBI: attached mtd3 to ubi0
> UBI: MTD device name:            "rootfs"
> UBI: MTD device size:            122 MiB
> UBI: number of good PEBs:        975
> UBI: number of bad PEBs:         1
> UBI: max. allowed volumes:       128
> UBI: wear-leveling threshold:    4096
> UBI: number of internal volumes: 1
> UBI: number of user volumes:     1
> UBI: available PEBs:             0
> UBI: total number of reserved PEBs: 975
> UBI: number of PEBs reserved for bad PEB handling: 9
> UBI: max/mean erase counter: 1/0
> UBI: image sequence number: 1519924105
> UBI: background thread "ubi_bgt0d" started, PID 852
> 
> Where should I look to diagnose this?
> 
> baruch
> 
> -- 
>                                                      ~. .~   Tk Open Systems
> =}------------------------------------------------ooO--U--Ooo------------{=
>    - baruch@tkos.co.il - tel: +972.2.679.5364, http://www.tkos.co.il -
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
