Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 6.mo4.mail-out.ovh.net ([188.165.36.253]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SOpbG-0002AK-Om
 for barebox@lists.infradead.org; Mon, 30 Apr 2012 12:21:08 +0000
Received: from mail97.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 31E1B10507BE
 for <barebox@lists.infradead.org>; Mon, 30 Apr 2012 14:22:25 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon, 30 Apr 2012 14:00:05 +0200
Message-Id: <1335787207-27838-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20120430115703.GD2992@game.jcrosoft.org>
References: <20120430115703.GD2992@game.jcrosoft.org>
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
Subject: [PATCH 1/3] mips: add in_be16/32 and out_be16/32 for cfi support
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/mips/include/asm/io.h |    5 +++++
 1 files changed, 5 insertions(+), 0 deletions(-)

diff --git a/arch/mips/include/asm/io.h b/arch/mips/include/asm/io.h
index 5e12860..4100e1e 100644
--- a/arch/mips/include/asm/io.h
+++ b/arch/mips/include/asm/io.h
@@ -71,4 +71,9 @@ static inline void __raw_writel(u32 b, volatile void __iomem *addr)
 #define writew(b,addr) __raw_writew(__cpu_to_le16(b),addr)
 #define writel(b,addr) __raw_writel(__cpu_to_le32(b),addr)
 
+#define in_be16(a)	__be16_to_cpu(__raw_readw(a))
+#define in_be32(a)	__be32_to_cpu(__raw_readl(a))
+#define out_be16(a, v)	__raw_writew(__cpu_to_be16(v), a)
+#define out_be32(a, v)	__raw_writel(__cpu_to_be32(v), a)
+
 #endif	/* __ASM_MIPS_IO_H */
-- 
1.7.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
