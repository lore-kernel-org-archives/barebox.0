Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from [84.19.187.99] (helo=lah-a2.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fAI9i-0001a5-T1
 for barebox@lists.infradead.org; Sun, 22 Apr 2018 16:48:04 +0000
Received: from localhost (p50851871.dip0.t-ipconnect.de [80.133.24.113])
 by lah-a2.de (Postfix) with ESMTPSA id 35370408086E
 for <barebox@lists.infradead.org>; Sun, 22 Apr 2018 18:39:18 +0200 (CEST)
From: Andreas Schmidt <mail@schmidt-andreas.de>
Date: Sun, 22 Apr 2018 18:41:57 +0200
Message-Id: <20180422164157.30691-1-mail@schmidt-andreas.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] ARM: arm32: fix realocate_to_curr_addr
To: barebox@lists.infradead.org

After add aarch64 support (commit 868df08038a91d674a0c50b0c0a2f70dbc445510)
to realocation, MLO on beaglebone black do not boot any more.
The issue is, that addition of offset in one if-case was not done.
This patch fix this.

Signed-off-by: Andreas Schmidt <mail@schmidt-andreas.de>
---
Hi!

I've tested this patch only on beablebone black REV C.

Regards,
Andreas
---
 arch/arm/cpu/common.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/cpu/common.c b/arch/arm/cpu/common.c
index 00ce3efb2..51fe7ed98 100644
--- a/arch/arm/cpu/common.c
+++ b/arch/arm/cpu/common.c
@@ -85,6 +85,7 @@ void relocate_to_current_adr(void)
 			unsigned long *fixup = (unsigned long *)(rel->r_offset + offset);
 
 			*fixup = *fixup + r + offset;
+			rel->r_offset += offset;
 		} else {
 			putc_ll('>');
 			puthex_ll(rel->r_info);
-- 
2.14.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
