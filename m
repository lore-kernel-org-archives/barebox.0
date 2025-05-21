Delivery-date: Wed, 21 May 2025 15:14:46 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uHjHS-001An1-0D
	for lore@lore.pengutronix.de;
	Wed, 21 May 2025 15:14:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uHjHQ-0003vr-Po
	for lore@pengutronix.de; Wed, 21 May 2025 15:14:45 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gqwGusFDkIMRYU6CAth9ugKqNnxMMOb+KRzDC76HVFo=; b=ePexVP39xO4tl6PWbvskDemZs7
	M3rmNQDzGyHX+YD3mcUyQGAWtFgRmwDUQ8VCwoIOLD6m97WuZrJySSD7iDdr38o2qZGl8NS+LCYmb
	xoUrIMNRM3luk7zggjRCx10AJFnbfiy3KSGO739wbsMB0Ju0MjMdNRU0U+nGx1RQqvl30lg8Bcily
	pM5aMo/OkGb6nJDHCnCkCbfzKAUKOGKpxnRbfwzYrQnHlhB268wrXmPT5JfwQqqtnbvIhTGdbro33
	K+QomWlEbni8iqp7ehqSXKuLirOiEhecVBIUUseewo0u+7tsEzYvzSryAprEf9zVnMhYeJ1e2hxWS
	jXrRHQWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uHjGu-0000000Ftt7-3zmD;
	Wed, 21 May 2025 13:14:12 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uHiwf-0000000Fq2E-1vAl
	for barebox@lists.infradead.org;
	Wed, 21 May 2025 12:53:19 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=localhost.localdomain)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1uHiwd-00073K-2G
	for barebox@lists.infradead.org; Wed, 21 May 2025 14:53:15 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Date: Wed, 21 May 2025 14:53:06 +0200
Message-Id: <20250521125309.1408613-4-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250521125309.1408613-1-a.fatoum@barebox.org>
References: <20250521125309.1408613-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250521_055317_491760_5442E0F7 
X-CRM114-Status: GOOD (  11.02  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/6] resource: add MEMATTRS_ definitions for common attribute sets
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Most SDRAM mapped by barebox falls into one of these categories,
so add some readily usable MEMATTRS_ constants.

Anything more special can OR the individual MEMATTR_ bits together.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/linux/ioport.h | 27 +++++++++++++++++++++++++++
 1 file changed, 27 insertions(+)

diff --git a/include/linux/ioport.h b/include/linux/ioport.h
index 1e266185651f..425928df3bfe 100644
--- a/include/linux/ioport.h
+++ b/include/linux/ioport.h
@@ -133,6 +133,14 @@ enum resource_memtype {
 #define MEMATTR_RO	0x00020000	/* read-only */
 #define MEMATTR_SP	0x00040000	/* specific-purpose */
 
+#define MEMATTRS_CACHEABLE	(MEMATTR_WT | MEMATTR_WC | MEMATTR_WB)
+#define MEMATTRS_RW		(MEMATTRS_CACHEABLE | MEMATTR_XP)
+#define MEMATTRS_RO		(MEMATTRS_CACHEABLE | MEMATTR_XP | MEMATTR_RO)
+#define MEMATTRS_RX		(MEMATTRS_CACHEABLE | MEMATTR_RO)
+#define MEMATTRS_RWX		(MEMATTRS_CACHEABLE)	/* TODO: remove all */
+#define MEMATTRS_RW_DEVICE	(MEMATTR_UC | MEMATTR_XP)
+#define MEMATTRS_FAULT		(MEMATTR_UC | MEMATTR_XP | MEMATTR_RP | MEMATTR_RO)
+
 /* PnP I/O specific bits (IORESOURCE_BITS) */
 #define IORESOURCE_IO_16BIT_ADDR	(1<<0)
 #define IORESOURCE_IO_FIXED		(1<<1)
@@ -204,5 +212,24 @@ int release_region(struct resource *res);
 extern struct resource iomem_resource;
 extern struct resource ioport_resource;
 
+static inline void reserve_resource(struct resource *res)
+{
+	res->type = MEMTYPE_RESERVED;
+	/* Reserved memory is used for secure memory that should
+	 * be hardware-protected independently of MMU flags.
+	 * We map it as device memory, so we can still test
+	 * if it's indeed inaccessible
+	 */
+	res->attrs = MEMATTRS_RW_DEVICE;
+	res->flags |= IORESOURCE_TYPE_VALID;
+}
+
+static inline bool is_reserved_resource(const struct resource *res)
+{
+	if (res->flags & IORESOURCE_TYPE_VALID)
+		return res->type == MEMTYPE_RESERVED;
+	return false;
+}
+
 #endif /* __ASSEMBLY__ */
 #endif	/* _LINUX_IOPORT_H */
-- 
2.39.5



