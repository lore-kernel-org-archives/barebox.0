Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from tango.tkos.co.il ([62.219.50.35])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OWnGi-000706-I6
	for barebox@lists.infradead.org; Thu, 08 Jul 2010 09:19:46 +0000
Date: Thu, 8 Jul 2010 12:19:25 +0300
From: Baruch Siach <baruch@tkos.co.il>
Message-ID: <20100708091925.GF25143@jasper.tkos.co.il>
References: <1278335795-16289-1-git-send-email-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1278335795-16289-1-git-send-email-s.hauer@pengutronix.de>
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
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Sascha,

On Mon, Jul 05, 2010 at 03:16:23PM +0200, Sascha Hauer wrote:
> The following series prepares and implements UBI for barebox. Here is a log
> while playing with UBI:

I've tested this on our i.MX25 board. Here's what I get:

barebox:/ ubiattach /dev/nand0.rootfs
UBI: attaching mtd0 to ubi0
UBI: physical eraseblock size:   131072 bytes (128 KiB)
UBI: logical eraseblock size:    129024 bytes
UBI: smallest flash I/O unit:    2048
UBI: sub-page size:              512
UBI: VID header offset:          512 (aligned 512)
UBI: data offset:                2048
UBI: empty MTD device detected
UBI: create volume table (copy #1)
UBI error: ubi_scan_get_free_peb: no eraseblocks found
failed to attach: error 28

The kernel is able to attach the same device as follows:

UBI: attaching mtd3 to ubi0
UBI: physical eraseblock size:   131072 bytes (128 KiB)
UBI: logical eraseblock size:    129024 bytes
UBI: smallest flash I/O unit:    2048
UBI: sub-page size:              512
UBI: VID header offset:          512 (aligned 512)
UBI: data offset:                2048
UBI: attached mtd3 to ubi0
UBI: MTD device name:            "rootfs"
UBI: MTD device size:            122 MiB
UBI: number of good PEBs:        975
UBI: number of bad PEBs:         1
UBI: max. allowed volumes:       128
UBI: wear-leveling threshold:    4096
UBI: number of internal volumes: 1
UBI: number of user volumes:     1
UBI: available PEBs:             0
UBI: total number of reserved PEBs: 975
UBI: number of PEBs reserved for bad PEB handling: 9
UBI: max/mean erase counter: 1/0
UBI: image sequence number: 1519924105
UBI: background thread "ubi_bgt0d" started, PID 852

Where should I look to diagnose this?

baruch

-- 
                                                     ~. .~   Tk Open Systems
=}------------------------------------------------ooO--U--Ooo------------{=
   - baruch@tkos.co.il - tel: +972.2.679.5364, http://www.tkos.co.il -

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
