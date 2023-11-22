Delivery-date: Wed, 22 Nov 2023 18:31:34 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r5r4X-004dgm-2q
	for lore@lore.pengutronix.de;
	Wed, 22 Nov 2023 18:31:34 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r5r4X-0008DQ-QH
	for lore@pengutronix.de; Wed, 22 Nov 2023 18:31:34 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6Ix3F+b5WbhQ+3B6DdMbE8uNiQpNpESis79n+qFebjI=; b=NrdSIR4QWDGEaQjqb7NtcH8MdE
	X9e7nIkjCHMIziItliyOhvdjyKv9CPLb6qXWcyOJozRUhukK78q5BJR7wjxH+QOCsGTmKxaeWWCNr
	lZqQzCIjGcSfaDo94J+wU0cO6U7o++/S7CSkZlB5Jpv9RjVSjAMeWbLojX+WW3ShLhSWGkXl7x3dc
	xa0BZepL6fWynKMh7ujT+k3bJ3fXsCJpD9NosuzuqGisQNYezIoRcvwai/Vg+fm6r97nVYoQRjZxU
	IN6wzFepjt/9Wl3GhBH1vcg3UTev1xODnT0xtLIFV68dJFRhJWolA6nVcHfzIikQJMWDrZkKDrLwo
	XXFK5vNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r5r3B-002fBF-2g;
	Wed, 22 Nov 2023 17:30:09 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r5r35-002f80-1x
	for barebox@lists.infradead.org;
	Wed, 22 Nov 2023 17:30:06 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r5r34-0007TE-G3; Wed, 22 Nov 2023 18:30:02 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r5r34-00ArSy-06; Wed, 22 Nov 2023 18:30:02 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r5r33-001lAy-2t;
	Wed, 22 Nov 2023 18:30:01 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 22 Nov 2023 18:29:37 +0100
Message-Id: <20231122172951.376531-7-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231122172951.376531-1-a.fatoum@pengutronix.de>
References: <20231122172951.376531-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231122_093003_660559_6371CC2F 
X-CRM114-Status: UNSURE (   9.00  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 06/20] asm-generic: migrate relaxed helpers into asm-generic/io.h
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

In preparation for having <io.h> be the include file for type confused
MMIO accessors and <linux/io.h> for typechecked accessors, let's move out
of <io.h> everything that's not directly related to the type confusion.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - unchanged
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



