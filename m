Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 27.mail-out.ovh.net ([91.121.30.210])
	by bombadil.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1OZgjQ-0006iT-Q5
	for barebox@lists.infradead.org; Fri, 16 Jul 2010 08:57:21 +0000
Message-ID: <4C401EEC.70109@eukrea.com>
Date: Fri, 16 Jul 2010 10:57:16 +0200
From: =?ISO-8859-1?Q?Eric_B=E9nard?= <eric@eukrea.com>
MIME-Version: 1.0
References: <1278335795-16289-1-git-send-email-s.hauer@pengutronix.de>	<20100708091925.GF25143@jasper.tkos.co.il>
	<20100716072702.GJ14113@pengutronix.de>
In-Reply-To: <20100716072702.GJ14113@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"; Format="flowed"
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: UBI support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Sascha, Hi Baruch,

Le 16/07/2010 09:27, Sascha Hauer a =E9crit :
>> On Mon, Jul 05, 2010 at 03:16:23PM +0200, Sascha Hauer wrote:
>>> The following series prepares and implements UBI for barebox. Here is a=
 log
>>> while playing with UBI:
>>
>> I've tested this on our i.MX25 board. Here's what I get:
>>
>> barebox:/ ubiattach /dev/nand0.rootfs
>> UBI: attaching mtd0 to ubi0
>> UBI: physical eraseblock size:   131072 bytes (128 KiB)
>> UBI: logical eraseblock size:    129024 bytes
>> UBI: smallest flash I/O unit:    2048
>> UBI: sub-page size:              512
>> UBI: VID header offset:          512 (aligned 512)
>> UBI: data offset:                2048
>> UBI: empty MTD device detected
>> UBI: create volume table (copy #1)
>> UBI error: ubi_scan_get_free_peb: no eraseblocks found
>> failed to attach: error 28
>
> I just tested it on an i.MX35 board which should have the same Nand
> Controller as the i.MX25. I have never seen Nand devices with a subpage
> size smaller than the I/O unit size (sub-page size: 512), so I would
> start looking there.

I have exactly the same log under linux here on an i.MX35 & i.MX25, =

using 2k Micron Nand :

on i.MX35 :
[    1.060000] UBI: attaching mtd3 to ubi0
[    1.070000] UBI: physical eraseblock size:   131072 bytes (128 KiB)
[    1.070000] UBI: logical eraseblock size:    129024 bytes
[    1.080000] UBI: smallest flash I/O unit:    2048
[    1.080000] UBI: sub-page size:              512
[    1.090000] UBI: VID header offset:          512 (aligned 512)
[    1.090000] UBI: data offset:                2048
[    1.420000] UBI: attached mtd3 to ubi0

on i.MX25 :
[    0.840000] UBI: attaching mtd3 to ubi0
[    0.840000] UBI: physical eraseblock size:   131072 bytes (128 KiB)
[    0.850000] UBI: logical eraseblock size:    129024 bytes
[    0.860000] UBI: smallest flash I/O unit:    2048
[    0.860000] UBI: sub-page size:              512
[    0.860000] UBI: VID header offset:          512 (aligned 512)
[    0.870000] UBI: data offset:                2048
[    1.460000] UBI: attached mtd3 to ubi0

Eric

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
