Delivery-date: Tue, 06 Jan 2026 13:53:48 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vd6ZI-001tT4-2U
	for lore@lore.pengutronix.de;
	Tue, 06 Jan 2026 13:53:48 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vd6ZH-0001PF-Mp
	for lore@pengutronix.de; Tue, 06 Jan 2026 13:53:48 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2dsekT/hbmISLOv8IGbspYu0g9jVVGFxZlyCQ49ukxM=; b=K99r3cVBUb7grwPrKqkmfznwbM
	EVQZ+wCwurSS4C0l+ogEsPChnUV0mNf2+u6Vk9goacizTnEKDLZTgZYe+f7qMlM/CFC15+SMJcNhC
	tlXfe4j8u+GtxgZRONHXpL7Me4zrQpsnoyP0WrYgZy3+jaTMW3PYQi9sHtyjTbG53EyhPw8Aa+HyM
	0kU5rWOYfUfSumLWkB0/Js/umAU82P1zgFXkWzZ3vYawwt7nF4hYFwUaK3GnjkBpniFELYFVH4X40
	zX6v6m3h248/1CZConAB1VDnMRsth70TkEFZhxg9B7puZr5Bxyeoitbuol9zYy2uuvctLAt1DCVd+
	P6wT9GYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd6Yr-0000000D1ba-44ph;
	Tue, 06 Jan 2026 12:53:21 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd6Yo-0000000D1ZS-3QM9
	for barebox@lists.infradead.org;
	Tue, 06 Jan 2026 12:53:20 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vd6Yf-00012z-BY; Tue, 06 Jan 2026 13:53:09 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vd6Ye-009Lck-31;
	Tue, 06 Jan 2026 13:53:08 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vd6Ye-000000078QE-3Shs;
	Tue, 06 Jan 2026 13:53:08 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 06 Jan 2026 13:53:11 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260106-pbl-load-elf-v2-8-487bc760f045@pengutronix.de>
References: <20260106-pbl-load-elf-v2-0-487bc760f045@pengutronix.de>
In-Reply-To: <20260106-pbl-load-elf-v2-0-487bc760f045@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1767703988; l=2048;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=tW4JTQylsX/nPyIidBcK/4nqKLRKw5lWOGMNZXcR+q0=;
 b=mUES0McGoUe0DNcIZsOvZaDZkI6vUoF85kSN2MrQEFgXwtNxr1qF0Urgz4Qov/4H7gEaSDYg+
 sfSjwIzF15lBK7sDTVJQSAfg/qeUBy7B0FIm06eDem3ADcU3PuJWlHR
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260106_045318_875240_E646275B 
X-CRM114-Status: GOOD (  13.04  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 08/21] elf: create elf_open_binary_into()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

elf_open_binary() returns a dynamically allocated struct elf_image *. We
do not have malloc in the PBL, so for better PBL support create
elf_open_binary_into() which takes a struct elf_image * as argument.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Co-Authored-By: Claude Sonnet 4.5 <noreply@anthropic.com>
---
 common/elf.c  | 26 +++++++++++++++++++-------
 include/elf.h |  1 +
 2 files changed, 20 insertions(+), 7 deletions(-)

diff --git a/common/elf.c b/common/elf.c
index b3cc9b59644aa6e6e029fa44988dbdc0787c42f6..d51c99192f327abc0eb4ca68109bc88c6a451d94 100644
--- a/common/elf.c
+++ b/common/elf.c
@@ -318,6 +318,23 @@ static void elf_init_struct(struct elf_image *elf)
 	elf->filename = NULL;
 }
 
+int elf_open_binary_into(struct elf_image *elf, void *buf)
+{
+	int ret;
+
+	memset(elf, 0, sizeof(*elf));
+	elf_init_struct(elf);
+
+	elf->hdr_buf = buf;
+	ret = elf_check_image(elf, buf);
+	if (ret)
+		return ret;
+
+	elf->entry = elf_hdr_e_entry(elf, elf->hdr_buf);
+
+	return 0;
+}
+
 struct elf_image *elf_open_binary(void *buf)
 {
 	int ret;
@@ -327,17 +344,12 @@ struct elf_image *elf_open_binary(void *buf)
 	if (!elf)
 		return ERR_PTR(-ENOMEM);
 
-	elf_init_struct(elf);
-
-	elf->hdr_buf = buf;
-	ret = elf_check_image(elf, buf);
+	ret = elf_open_binary_into(elf, buf);
 	if (ret) {
 		free(elf);
-		return ERR_PTR(-EINVAL);
+		return ERR_PTR(ret);
 	}
 
-	elf->entry = elf_hdr_e_entry(elf, elf->hdr_buf);
-
 	return elf;
 }
 
diff --git a/include/elf.h b/include/elf.h
index 84b98553cff69257f8c2fbfb2e7504a4400e0f53..64574cb4836cd67f54538ad1621d7fc5fbf58f92 100644
--- a/include/elf.h
+++ b/include/elf.h
@@ -410,6 +410,7 @@ static inline size_t elf_get_mem_size(struct elf_image *elf)
 	return elf->high_addr - elf->low_addr;
 }
 
+int elf_open_binary_into(struct elf_image *elf, void *buf);
 struct elf_image *elf_open_binary(void *buf);
 struct elf_image *elf_open(const char *filename);
 void elf_close(struct elf_image *elf);

-- 
2.47.3



