Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iolxX-0004mn-9H
 for barebox@lists.infradead.org; Tue, 07 Jan 2020 10:19:37 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  7 Jan 2020 11:19:28 +0100
Message-Id: <20200107101931.4535-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/4] ARM: bcm2835 mbox: Remove response valid check
To: Barebox List <barebox@lists.infradead.org>

Not all messages return a valid response as they do not send a response
at all. This is at least true for the SET_GPIO_STATE and SET_GPIO_CONFIG
messages.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-bcm283x/mbox.c | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/arch/arm/mach-bcm283x/mbox.c b/arch/arm/mach-bcm283x/mbox.c
index b295993359..4405efaffd 100644
--- a/arch/arm/mach-bcm283x/mbox.c
+++ b/arch/arm/mach-bcm283x/mbox.c
@@ -137,11 +137,6 @@ int bcm2835_mbox_call_prop(u32 chan, struct bcm2835_mbox_hdr *buffer)
 	tag = (void *)(buffer + 1);
 	tag_index = 0;
 	while (tag->tag) {
-		if (!(tag->val_len & BCM2835_MBOX_TAG_VAL_LEN_RESPONSE)) {
-			printf("mbox: Tag %d missing val_len response bit\n",
-				tag_index);
-			return -EIO;
-		}
 		/*
 		 * Clear the reponse bit so clients can just look right at the
 		 * length field without extra processing
-- 
2.24.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
