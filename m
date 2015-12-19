Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x22e.google.com ([2a00:1450:400c:c09::22e])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aAMLJ-0001Jd-8W
 for barebox@lists.infradead.org; Sat, 19 Dec 2015 18:35:02 +0000
Received: by mail-wm0-x22e.google.com with SMTP id l126so23223869wml.0
 for <barebox@lists.infradead.org>; Sat, 19 Dec 2015 10:34:36 -0800 (PST)
From: Alexander Aring <alex.aring@gmail.com>
Date: Sat, 19 Dec 2015 19:34:02 +0100
Message-Id: <1450550044-14674-6-git-send-email-alex.aring@gmail.com>
In-Reply-To: <1450550044-14674-1-git-send-email-alex.aring@gmail.com>
References: <1450550044-14674-1-git-send-email-alex.aring@gmail.com>
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
Subject: [PATCH 5/7] bcm283x: mbox: align to cachesize
To: barebox@lists.infradead.org
Cc: dthompson@nexusisp.com, carlo.caione@gmail.com

This patch change the align of mbox stack resource to 32. The reason is
that I had some experience with bcm2836 and the mbox implementation,
after setting the align to 64(on bcm2836) the issues was gone.

I found these values inside the u-boot implementation, they use 32
(bcm2835) and 64 (bcm2836).

Signed-off-by: Alexander Aring <alex.aring@gmail.com>
---
 arch/arm/mach-bcm283x/include/mach/mbox.h | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/arch/arm/mach-bcm283x/include/mach/mbox.h b/arch/arm/mach-bcm283x/include/mach/mbox.h
index 4c3fd77..09b31f2 100644
--- a/arch/arm/mach-bcm283x/include/mach/mbox.h
+++ b/arch/arm/mach-bcm283x/include/mach/mbox.h
@@ -73,8 +73,10 @@ struct bcm2835_mbox_hdr {
 #define BCM2835_MBOX_REQ_CODE		0
 #define BCM2835_MBOX_RESP_CODE_SUCCESS	0x80000000
 
+#define BCM2835_CACHELINE_SIZE		32
+
 #define BCM2835_MBOX_STACK_ALIGN(type, name) \
-	STACK_ALIGN_ARRAY(type, name, 1, BCM2835_CHAN_MASK + 1)
+	STACK_ALIGN_ARRAY(type, name, 1, BCM2835_CACHELINE_SIZE)
 
 #define BCM2835_MBOX_INIT_HDR(_m_) { \
 		memset((_m_), 0, sizeof(*(_m_))); \
-- 
2.6.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
