Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from eso.teric.us ([69.164.192.171])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UHw1t-0000sf-Nq
 for barebox@lists.infradead.org; Tue, 19 Mar 2013 12:52:38 +0000
Date: Tue, 19 Mar 2013 07:59:27 -0500
From: Josh Cartwright <joshc@eso.teric.us>
Message-ID: <20130319125927.GV16050@kryptos>
References: <1363684920-3034-1-git-send-email-s.trumtrar@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1363684920-3034-1-git-send-email-s.trumtrar@pengutronix.de>
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
Subject: Re: [PATCH v2 0/5] ARM: add support for Zynq
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Mar 19, 2013 at 10:21:55AM +0100, Steffen Trumtrar wrote:
> Hi!
> 
> Still nothing fancy. Boots a little faster from SD and has a console.
> For ethernet the macb-driver works fine,

I've also found the macb driver works, but it does require a change to
prevent byteswapping during DMA, have you run into this on the ZedBoard?
(patch below).

Also, have you thought about how you'll handle the OCM mapping?  For my
testing, I'm using a PBL image (which contains the lowlevel init), but I
still need some hook into the decompressed image to remove the OCM
mapping from the lower address space.  This can't be done during the
execution of the PBL image, since it's running from OCM.

As far as I could tell, there was no good way to hook in early to the
decompressed image.

I ran into this trying to boot the 14.4 release uImage, since it has a
load address of 0x8000, and spans the 'hole' at 0x30000 configured out
of BootROM to be 'Reserved' (writes to here trigger a Data Abort).

> but needs to be "freed" from its at91 heritage (meaning: the struct
> at91_ether_platform_data should be renamed first and defined someplace
> else than a board.h)

I'm assuming you've done this, but if not, I've made this change in my
tree.  For what it's worth, I went with 'struct macb_platform_data' and
moved it into include/platform_data/macb.h.

>
> Changelog:
> 	- addressed all comments by Sascha and Josh
> 	  (some uart stuff, defines, endianess, ...)
> 	- squashed a little
> 
> Regards,
> Steffen

-- 8< --
Subject: [PATCH] macb: disable byte-order translation through DMA

Packet data already exists in memory in network byte-order.  Prevent the
GEM from performing endianness translation through DMA.

Signed-off-by: Josh Cartwright <joshc@eso.teric.us>
---
 drivers/net/macb.c | 1 +
 drivers/net/macb.h | 2 ++
 2 files changed, 3 insertions(+)

diff --git a/drivers/net/macb.c b/drivers/net/macb.c
index 14a0689..25d1b9f 100644
--- a/drivers/net/macb.c
+++ b/drivers/net/macb.c
@@ -307,6 +307,7 @@ static void macb_configure_dma(struct macb_device *bp)
 		dmacfg |= GEM_BF(FBLDO, 16);
 		dmacfg |= GEM_BIT(TXPBMS) | GEM_BF(RXBMS, -1L);
 		dmacfg |= GEM_BIT(DDRP);
+		dmacfg &= ~GEM_BIT(ENDIAN);
 		gem_writel(bp, DMACFG, dmacfg);
 	}
 }
diff --git a/drivers/net/macb.h b/drivers/net/macb.h
index cadd561..fc4d1a9 100644
--- a/drivers/net/macb.h
+++ b/drivers/net/macb.h
@@ -168,6 +168,8 @@
 /* Bitfields in DMACFG. */
 #define GEM_FBLDO_OFFSET			0
 #define GEM_FBLDO_SIZE				5
+#define GEM_ENDIAN_OFFSET			7
+#define GEM_ENDIAN_SIZE				1
 #define GEM_RXBMS_OFFSET			8
 #define GEM_RXBMS_SIZE				2
 #define GEM_TXPBMS_OFFSET			10
-- 
1.8.1.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
