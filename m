Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 7.mo3.mail-out.ovh.net ([46.105.57.200]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SMDau-0006h7-R2
 for barebox@lists.infradead.org; Mon, 23 Apr 2012 07:21:57 +0000
Received: from mail622.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id A011EFFA6F4
 for <barebox@lists.infradead.org>; Mon, 23 Apr 2012 09:23:28 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon, 23 Apr 2012 09:02:10 +0200
Message-Id: <1335164539-2188-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20120423065650.GM20601@game.jcrosoft.org>
References: <20120423065650.GM20601@game.jcrosoft.org>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 01/10] ARM: add support of in_be16/32 and out_be16/32
To: barebox@lists.infradead.org

This will allow to have cfi flash on big endian SoC as IXP4xx.

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/include/asm/io.h |    5 +++++
 1 files changed, 5 insertions(+), 0 deletions(-)

diff --git a/arch/arm/include/asm/io.h b/arch/arm/include/asm/io.h
index e0630eb..644378c 100644
--- a/arch/arm/include/asm/io.h
+++ b/arch/arm/include/asm/io.h
@@ -10,4 +10,9 @@ extern void memcpy_fromio(void *, const volatile void __iomem *, size_t);
 extern void memcpy_toio(volatile void __iomem *, const void *, size_t);
 extern void memset_io(volatile void __iomem *, int, size_t);
 
+#define in_be16(a)		__be16_to_cpu(__raw_readw(a))
+#define in_be32(a)		__be32_to_cpu(__raw_readl(a))
+#define out_be16(a, v)		__raw_writew(__cpu_to_be16(v), a)
+#define out_be32(a, v)		__raw_writel(__cpu_to_be32(v), a)
+
 #endif	/* __ASM_ARM_IO_H */
-- 
1.7.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
