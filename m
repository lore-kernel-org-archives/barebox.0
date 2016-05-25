Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1b5TGZ-0004zq-JL
 for barebox@lists.infradead.org; Wed, 25 May 2016 07:30:08 +0000
Date: Wed, 25 May 2016 09:29:45 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160525072945.GB23750@pengutronix.de>
References: <1463992010-31537-1-git-send-email-t.remmet@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1463992010-31537-1-git-send-email-t.remmet@phytec.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Reply-To: Sascha Hauer <s.hauer@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 00/62] Update UBI
To: Teresa Remmet <t.remmet@phytec.de>
Cc: barebox@lists.infradead.org

Hi Teresa,

On Mon, May 23, 2016 at 10:25:48AM +0200, Teresa Remmet wrote:
> Hello,
> 
> this series is more or less just a cherry-pick of the UBI patches
> from kernel to version v4.6. Rework was need for some patches to make
> them apply and work for barebox.
> 
> After applying this series UBI is much more noisy while attaching.
> I am not sure if this is wanted. But could be solved in a seperate patch.

It doesn't seem to get more noisy here, here is a log from a new/old
UBI:

ubi0: scanning is finished
ubi0: registering /dev/nand0.root.ubi
ubi0: attached mtd0 (name "nand0.root", size 1010 MiB) to ubi0
ubi0: PEB size: 131072 bytes (128 KiB), LEB size: 126976 bytes
ubi0: min./max. I/O unit sizes: 2048/2048, sub-page size 2048
ubi0: VID header offset: 2048 (aligned 2048), data offset: 4096
ubi0: good PEBs: 8076, bad PEBs: 4, corrupted PEBs: 0
ubi0: user volume: 0, internal volumes: 1, max. volumes count: 128
ubi0: max/mean erase counter: 1/1, WL threshold: 4096, image sequence number: 1694817280
ubi0: available PEBs: 7914, total reserved PEBs: 162, PEBs reserved for bad PEB handling: 156

UBI: attaching mtd0 to ubi0
UBI: scanning is finished
registering /dev/ubi0
UBI: attached mtd0 (name "nand0.root", size 1011 MiB) to ubi0
UBI: PEB size: 131072 bytes (128 KiB), LEB size: 126976 bytes
UBI: min./max. I/O unit sizes: 2048/2048, sub-page size 2048
UBI: VID header offset: 2048 (aligned 2048), data offset: 4096
UBI: good PEBs: 8088, bad PEBs: 4, corrupted PEBs: 0
UBI: user volume: 0, internal volumes: 1, max. volumes count: 128
UBI: max/mean erase counter: 1/1, WL threshold: 4096, image sequence number: 1694817280
UBI: available PEBs: 7929, total reserved PEBs: 159, PEBs reserved for bad PEB handling: 155

What changes do you see in the messages?

I applied the series to -next for now, let's see if this reveals any new
UBI problems.

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
