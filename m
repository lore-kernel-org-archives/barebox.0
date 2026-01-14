Delivery-date: Wed, 14 Jan 2026 13:15:14 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vfzmM-001EGU-2G
	for lore@lore.pengutronix.de;
	Wed, 14 Jan 2026 13:15:14 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vfzmL-0002DF-EJ
	for lore@pengutronix.de; Wed, 14 Jan 2026 13:15:14 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=1uOiHBtfPO/BYKAcz2YDIwtniybpws9gsbxf25pN59w=; b=QMJStDHMUtjx8A2CFy30sw9hFk
	hSxBasA5qTcJAYJPYTyJQtod7p75bR1XwICFAFudnSRyNQ3bNBrXMNdwvF2bvyL2rt754etBzdOeo
	BCfNIahH7ADradTuEfGWDhMdcjxpLLUL0MBw2lPSCyObbOOhk2dPmTyWoPBscuAYf6NKSiRw1DHL8
	/902kwHCE2nHeTvBYnjt5GEN5t61RHOknkccu0jgS+5rE6pWgd6b2v6AezDzl/LfDqeHxrRZfCdCe
	RgV2yqFjmTLG8Hiin3+xIBAkJRRvRlb00S1jnZ8cH8annd5gpxAfSgASJOj4Sgeu/kZXYSwRPKmQV
	ZYQMSDUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfzlk-00000009831-2vEz;
	Wed, 14 Jan 2026 12:14:36 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfzlg-000000097yO-0J0N
	for barebox@lists.infradead.org;
	Wed, 14 Jan 2026 12:14:34 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vfzlc-0001ie-T3; Wed, 14 Jan 2026 13:14:28 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vfzld-000aPP-0B;
	Wed, 14 Jan 2026 13:14:28 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vfzlc-00000000TKs-0yin;
	Wed, 14 Jan 2026 13:14:28 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 14 Jan 2026 13:14:29 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260114-pbl-load-elf-v4-4-0afa78d95a7e@pengutronix.de>
References: <20260114-pbl-load-elf-v4-0-0afa78d95a7e@pengutronix.de>
In-Reply-To: <20260114-pbl-load-elf-v4-0-0afa78d95a7e@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1768392868; l=1680;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=CU33Uy+6zvZIkeu3RyhwJ+vufkoIv3Y/+pGO4lTsX68=;
 b=IkOODjeRZGKwY0Lj6oFJhjaKg5CC06PzVCENbIpnP4MyAuiMj7h5X5lCGa3C0PewEmCya2ffE
 8iKl8mpeS9+BKFi6vAG5rMUfWe3UCdNqe2JQ/Cudaai2AI+J6Np6ZhS
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260114_041432_159918_045082E5 
X-CRM114-Status: GOOD (  12.25  )
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
Subject: [PATCH v4 04/22] elf: add elf segment iterator
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
index f772018deb3c5a07a9f76bc654e54ff46cc3612e..af73396b351d96489bd6fae1f035d379703ae528 100644
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
index 994db642b0789942530f6ef7fdffdd2218afd7b6..a062af77004ab7fe730793552d2cce9d5675dd7f 100644
--- a/include/elf.h
+++ b/include/elf.h
@@ -439,4 +439,10 @@ static inline unsigned long elf_size_of_phdr(struct elf_image *elf)
 		return sizeof(Elf64_Phdr);
 }
 
+#define elf_for_each_segment(phdr, elf, buf) \
+	for (phdr = buf + elf_hdr_e_phoff(elf, buf); \
+	     phdr < buf + elf_hdr_e_phoff(elf, buf) + \
+	     elf_hdr_e_phnum(elf, buf) * elf_size_of_phdr(elf); \
+	     phdr += elf_size_of_phdr(elf))
+
 #endif /* _LINUX_ELF_H */

-- 
2.47.3



