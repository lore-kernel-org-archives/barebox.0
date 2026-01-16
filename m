Delivery-date: Fri, 16 Jan 2026 09:12:56 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vgewy-001tSW-1S
	for lore@lore.pengutronix.de;
	Fri, 16 Jan 2026 09:12:56 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vgewx-00048l-FL
	for lore@pengutronix.de; Fri, 16 Jan 2026 09:12:55 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/uHfIEfebIA6W9zfmV0xSs7UHLY36iu04DCfPK/xELU=; b=eh14G2l0FkYGb0nWm3cCJ8/d94
	JCy1ZUGaS59nwCkZSZZCBJYKAcmoiJrOky0AWiT5l29rIAz5e9DXflvevxVfpWJx3xRjVhD6Ijsyw
	pYlQbkIIjA49a67PJ+G6zFFULFSSzpNvkmixc1VX77YIOwr3NLYU7FBplPr7tvwWCPjot5Sa1vSVB
	UAkZY5xZWqBHgHJQDrxI0A9m1uGfKlNEm9I2qShN74rRio7HDIaCcE9rVai7Vjekh8IWA6QBRic6y
	YwP9zjQjdGkZQPe6nj/iKRTUGnYQD/rSbQiLRC8Pz2khSB3MywPGW8ZRQY6bAH6i39ySTE6pR6qJ7
	bhNNzQbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgewL-0000000DjOd-3X0Z;
	Fri, 16 Jan 2026 08:12:17 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgewJ-0000000DjNh-2Q4e
	for barebox@lists.infradead.org;
	Fri, 16 Jan 2026 08:12:16 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vgewH-0003jL-Us; Fri, 16 Jan 2026 09:12:13 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vgewI-000t5H-0V;
	Fri, 16 Jan 2026 09:12:13 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vgewH-00000005hOg-1a2u;
	Fri, 16 Jan 2026 09:12:13 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 16 Jan 2026 09:12:15 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260116-pbl-load-elf-v5-4-51d042021c5a@pengutronix.de>
References: <20260116-pbl-load-elf-v5-0-51d042021c5a@pengutronix.de>
In-Reply-To: <20260116-pbl-load-elf-v5-0-51d042021c5a@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1768551133; l=1590;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=+iQ1KMAywuS4WndtZSGKq3KmP68rRM7H+tb64KwlQoI=;
 b=sL0AZWmgOQFpX+3aT/L4bDevrjZ/uOTmhFMG+Q9I5idd1YaaCl05CVqvHOvXcz8cttN0dGOQT
 PUuZI0SuOgCB+W8AXsI42fKFNiUSS/2m2+ihTHbXlL04fsLUBuFdJ9K
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260116_001215_621407_855955B3 
X-CRM114-Status: GOOD (  12.43  )
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
Cc: "Claude Sonnet 4.5" <noreply@anthropic.com>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v5 04/22] elf: add elf segment iterator
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We currently have only one place which iterates over elf segments, but
there are more to come, so add an iterator for it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/elf.c  | 8 +++-----
 include/elf.h | 6 ++++++
 2 files changed, 9 insertions(+), 5 deletions(-)

diff --git a/common/elf.c b/common/elf.c
index f772018deb..af73396b35 100644
--- a/common/elf.c
+++ b/common/elf.c
@@ -161,19 +161,17 @@ static int load_elf_to_memory(struct elf_image *elf)
 static int load_elf_image_segments(struct elf_image *elf)
 {
 	void *buf = elf->hdr_buf;
-	void *phdr = (void *) (buf + elf_hdr_e_phoff(elf, buf));
-	int i, ret;
+	void *phdr;
+	int ret;
 
 	/* File as already been loaded */
 	if (!list_empty(&elf->list))
 		return -EINVAL;
 
-	for (i = 0; i < elf_hdr_e_phnum(elf, buf) ; ++i) {
+	elf_for_each_segment(phdr, elf, buf) {
 		ret = request_elf_segment(elf, phdr);
 		if (ret)
 			goto elf_release_regions;
-
-		phdr += elf_size_of_phdr(elf);
 	}
 
 	/*
diff --git a/include/elf.h b/include/elf.h
index 994db642b0..dc1aa8d5d1 100644
--- a/include/elf.h
+++ b/include/elf.h
@@ -439,4 +439,10 @@ static inline unsigned long elf_size_of_phdr(struct elf_image *elf)
 		return sizeof(Elf64_Phdr);
 }
 
+#define elf_for_each_segment(phdr, elf, buf) \
+	for (phdr = (void *)buf + elf_hdr_e_phoff(elf, buf); \
+	     phdr < (void *)buf + elf_hdr_e_phoff(elf, buf) + \
+	     elf_hdr_e_phnum(elf, buf) * elf_size_of_phdr(elf); \
+	     phdr = (void *)phdr + elf_size_of_phdr(elf))
+
 #endif /* _LINUX_ELF_H */

-- 
2.47.3



