Delivery-date: Wed, 14 Jan 2026 13:36:00 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vg06T-001EXj-0a
	for lore@lore.pengutronix.de;
	Wed, 14 Jan 2026 13:36:00 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vg06R-0005Xm-0J
	for lore@pengutronix.de; Wed, 14 Jan 2026 13:36:00 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=aLcKPOEYYcLH8VMqjVkrE4FLGg/gkVGt9AVSDYwumo4=; b=d2OmoHxnFvdJ7hZlHSwvi+WSxg
	0N1M7ovqwBMD0JuD/wev4vGjPGaXBljzVPTV1sVQ6uaHKNRyj7HZgTb+V4dCOaI+a0/0ERp9SSyYp
	VUowPvgpHfo5p5wWIJE2629jZeZh3lDypMAXrVLvLetEZ/E2R+w6AuYsx6IRighCTKLqCEP24Aq4y
	rYrlRSvJKZoXPkg12/B53O/WXP7ccCeo76Cq7tetOGMzzI9W2nT8A2M0CYf4wJWBkzrIC6P7ZNOfN
	KWY8xdEEgUR10bEMT4kcFRlpc2yrhGRNMr84beQ9pEWR9/nVht0w6BdFMJcZvUT+bRsKZWUzwBQd3
	b11tlHgg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vg05s-00000009C0m-2liv;
	Wed, 14 Jan 2026 12:35:24 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vg05n-00000009Bvq-2DCe
	for barebox@lists.infradead.org;
	Wed, 14 Jan 2026 12:35:22 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vg05m-00053I-1Y; Wed, 14 Jan 2026 13:35:18 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vg05m-000aft-1Z;
	Wed, 14 Jan 2026 13:35:17 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vfzlc-00000000TKs-1636;
	Wed, 14 Jan 2026 13:14:28 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 14 Jan 2026 13:14:35 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260114-pbl-load-elf-v4-10-0afa78d95a7e@pengutronix.de>
References: <20260114-pbl-load-elf-v4-0-0afa78d95a7e@pengutronix.de>
In-Reply-To: <20260114-pbl-load-elf-v4-0-0afa78d95a7e@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1768392868; l=2101;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=ZgfwT7pzVMS0qlF3VYtpgzEg73uIWNleRWWDuiwkVVk=;
 b=5H+T58TE4jeQFHUSl874A+6ynLBKi9TbuJRdVCpRG2WwCNOKVvuhE6QqnmCtOPpXtPRzUw9YD
 fM8SrFUBxRxDL1LDE1VJLlJteqxp51XV8ZR/dLSrnuTMIGv86hs//k3
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260114_043520_109681_92AACE3B 
X-CRM114-Status: GOOD (  12.58  )
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
Cc: "Claude Sonnet 4.5" <noreply@anthropic.com>, Ahmad Fatoum <a.fatoum@pengutronix.de>
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
Subject: [PATCH v4 10/22] elf: create elf_open_binary_into()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

elf_open_binary() returns a dynamically allocated struct elf_image *. We
do not have malloc in the PBL, so for better PBL support create
elf_open_binary_into() which takes a struct elf_image * as argument.

Co-Authored-By: Claude Sonnet 4.5 <noreply@anthropic.com>
Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/elf.c  | 26 +++++++++++++++++++-------
 include/elf.h |  1 +
 2 files changed, 20 insertions(+), 7 deletions(-)

diff --git a/common/elf.c b/common/elf.c
index 6f173daaa6a863dbdac9f8b57e086731ea7082d6..62b60c082d20102c24f047aaf7a583b0855a603b 100644
--- a/common/elf.c
+++ b/common/elf.c
@@ -307,6 +307,23 @@ static void elf_init_struct(struct elf_image *elf)
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
@@ -316,17 +333,12 @@ struct elf_image *elf_open_binary(void *buf)
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
index 6046de8dc938b53d0881d5bb58f5bdc0ee5a57ef..eb846747957880bcd749b0082b96a29a1f20f40a 100644
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



