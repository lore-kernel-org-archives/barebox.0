Delivery-date: Fri, 10 Nov 2023 22:45:53 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r1ZK5-006Tz9-0X
	for lore@lore.pengutronix.de;
	Fri, 10 Nov 2023 22:45:53 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r1ZK5-0004nz-4A
	for lore@pengutronix.de; Fri, 10 Nov 2023 22:45:53 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6LLTxe/QJwzejJcIH9hGGTVUMcJj2Nf4jQ4GMr4tKL8=; b=t60m90yRGygmhws4OTmK/DaGHO
	lp7zF84igkB1ZBaXizhPc1fjewaPKjzOpioVVROBPyOa69FGX4ORUp44ALDuydHtYhDhi0lSGLVib
	SYoHfEfBKklSKiE1eDpgBhBC0Yc39zK+ISHTU9bF21V3DWKLl3LK3nHGBg0VvBxNTruT81qX1DFOW
	rUGduf8sI2j8APSi8dGjoQU9T91G5HA6GAefvVZl7zvxQBdRszGp7yfmqgg5tZtyMKLitXu1J/BH/
	0c0bg6bz/uQ5HiAzPrAP5i23NZ/HUhjlAa7LZotHE848Piv37TkFZf7CmJsl1giaQo5mgmy2s+Uv3
	FdDSV9gA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r1ZIs-009UGD-1l;
	Fri, 10 Nov 2023 21:44:38 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r1ZIl-009UCB-0d
	for barebox@lists.infradead.org;
	Fri, 10 Nov 2023 21:44:34 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r1ZIe-0004DY-RG; Fri, 10 Nov 2023 22:44:24 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r1ZIe-0086yP-Dj; Fri, 10 Nov 2023 22:44:24 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r1ZIe-00BRGz-16;
	Fri, 10 Nov 2023 22:44:24 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 10 Nov 2023 22:44:09 +0100
Message-Id: <20231110214421.2726093-7-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231110214421.2726093-1-a.fatoum@pengutronix.de>
References: <20231110214421.2726093-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231110_134431_256570_0B99A662 
X-CRM114-Status: UNSURE (   8.87  )
X-CRM114-Notice: Please train this message.
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 06/18] asm-generic: migrate relaxed helpers into asm-generic/io.h
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

In preparation for having <io.h> be the include file for type confused
MMIO accessors and <linux/io.h> for typechecked accessors, let's move out
of <io.h> everything that's not directly related to the type confusion.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/asm-generic/io.h | 34 ++++++++++++++++++++++++++++++++++
 include/io.h             | 34 ----------------------------------
 2 files changed, 34 insertions(+), 34 deletions(-)

diff --git a/include/asm-generic/io.h b/include/asm-generic/io.h
index 6383d71746f1..b118979ed1df 100644
--- a/include/asm-generic/io.h
+++ b/include/asm-generic/io.h
@@ -792,4 +792,38 @@ static inline void memcpy_toio(volatile void __iomem *addr, const void *buffer,
 
 #include <asm-generic/bitio.h>
 
+#define IOMEM_ERR_PTR(err) (__force void __iomem *)ERR_PTR(err)
+
+#ifndef readq_relaxed
+#define readq_relaxed(addr) readq(addr)
+#endif
+
+#ifndef readl_relaxed
+#define readl_relaxed(addr) readl(addr)
+#endif
+
+#ifndef readw_relaxed
+#define readw_relaxed(addr) readw(addr)
+#endif
+
+#ifndef readb_relaxed
+#define readb_relaxed(addr) readb(addr)
+#endif
+
+#ifndef writeq_relaxed
+#define writeq_relaxed(val, addr) writeq((val), (addr))
+#endif
+
+#ifndef writel_relaxed
+#define writel_relaxed(val, addr) writel((val), (addr))
+#endif
+
+#ifndef writew_relaxed
+#define writew_relaxed(val, addr) writew((val), (addr))
+#endif
+
+#ifndef writeb_relaxed
+#define writeb_relaxed(val, addr) writeb((val), (addr))
+#endif
+
 #endif /* __ASM_GENERIC_IO_H */
diff --git a/include/io.h b/include/io.h
index 6a74246ea777..913002072240 100644
--- a/include/io.h
+++ b/include/io.h
@@ -4,38 +4,4 @@
 
 #include <asm/io.h>
 
-#define IOMEM_ERR_PTR(err) (__force void __iomem *)ERR_PTR(err)
-
-#ifndef readq_relaxed
-#define readq_relaxed(addr) readq(addr)
-#endif
-
-#ifndef readl_relaxed
-#define readl_relaxed(addr) readl(addr)
-#endif
-
-#ifndef readw_relaxed
-#define readw_relaxed(addr) readw(addr)
-#endif
-
-#ifndef readb_relaxed
-#define readb_relaxed(addr) readb(addr)
-#endif
-
-#ifndef writeq_relaxed
-#define writeq_relaxed(val, addr) writeq((val), (addr))
-#endif
-
-#ifndef writel_relaxed
-#define writel_relaxed(val, addr) writel((val), (addr))
-#endif
-
-#ifndef writew_relaxed
-#define writew_relaxed(val, addr) writew((val), (addr))
-#endif
-
-#ifndef writeb_relaxed
-#define writeb_relaxed(val, addr) writeb((val), (addr))
-#endif
-
 #endif /* __IO_H */
-- 
2.39.2



