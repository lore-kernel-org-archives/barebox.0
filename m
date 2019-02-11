Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mickerik.phytec.de ([195.145.39.210])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gtCoy-0007RE-GG
 for barebox@lists.infradead.org; Mon, 11 Feb 2019 14:44:44 +0000
Message-ID: <21f6fae81ddfaa473b00005ce2e44b692f7861c8.camel@phytec.de>
From: Teresa Remmet <t.remmet@phytec.de>
Date: Mon, 11 Feb 2019 15:44:28 +0100
Mime-Version: 1.0
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
Subject: AM335x broken
To: Barebox List <barebox@lists.infradead.org>, Sascha Hauer <s.hauer@pengutronix.de>

Hello,

AM335x is broken on current master in multiple ways. 
NAND and and SPI boot are not working right now as the image size can
not be found:

barebox 2019.01.0-00305-g96abbe544e19 #1682 Mon Feb 11 15:20:00 CET
2019


Board: Phytec phyCORE AM335x
nand: ONFI flash detected
nand: NAND device: Manufacturer ID: 0x2c, Chip ID: 0xdc (Micron
MT29F4G08ABADAH4), 512Mi
B, page size: 2048, OOB size: 64
booting from NAND
failed to get image size
trying to load image from backup partition.
failed to get image size
booting failed

I bisected the issue down to:
commit 5c0e16591d9471a345b77a41fde76de34f301f6b
Author: Sascha Hauer <s.hauer@pengutronix.de>
Date:   Wed Jan 16 10:15:55 2019 +0100

    images: Drop unnecessary fix_size
    
    Now that we compile the compressed binary into the decompressor we
    no longer need fix_size but can use the linker to fill in the image
    size into the binary.
    
    Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Reverting this patch helps. But what is the correct solution?

The other problem was introduced by the lastest device tree update from
kernel. The device tree includes have been changed to use the
interconnect target module hierarchy. So neither MLO or barebox are
starting. I will send fixes for this shortly.

Regards,
Teresa






_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
