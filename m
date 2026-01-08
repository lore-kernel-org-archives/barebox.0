Delivery-date: Thu, 08 Jan 2026 16:51:00 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vdsHs-002fTk-17
	for lore@lore.pengutronix.de;
	Thu, 08 Jan 2026 16:51:00 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vdsHr-0007Fm-Mv
	for lore@pengutronix.de; Thu, 08 Jan 2026 16:51:00 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=aJTqHiIZVzp1YhqeC0O+FxR61jmei7Us5Ey8bLmKmGA=; b=wDxWgumfLxLkyrhUDMLxtAItzp
	InG7v4UFhPibwUF6/5l7L4o1IYv5ckhf6UodwBPVW1T9OzeozhUpB73SyhHpsTRoFNdwD8ftkgbXj
	dx0/pDHjAAWO1z+zWjRyYf5ueyuM6wCKvbflhgEj7N9XxVSECNL1rPbIy+J9wuXg0GVthLTT3daCh
	V0jW9H5xMI5xq+EnulT6lagMqW5PfR82azx6ZdWHcl1/qOXdmSfjHFp2FFTdaVuBw5MVM9bKcjtpq
	ydnHmu0clqozLXTUECLTtnGTp0Ahaqvhudn310oSRiqk6lBefVgDLj04cxCgJoBN9O2SL3iucjbXd
	xJNpKobw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdsHK-0000000HaTQ-3O03;
	Thu, 08 Jan 2026 15:50:26 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdsHG-0000000HaQ1-2HiI
	for barebox@bombadil.infradead.org;
	Thu, 08 Jan 2026 15:50:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=aJTqHiIZVzp1YhqeC0O+FxR61jmei7Us5Ey8bLmKmGA=; b=aWaCol3Sp6MibXv0El77oMgPYd
	2cqw15bvEgwjNkKKVejaJO7uSFLgSwHIb4mkOd1ZmkgRSEOFwsO/KOWxxWw2nTzb2TCbupfE2gPX5
	c+y0NI4lzyjFanIK7EfQ/j6U5SNt7yRWEY7wiTZYH3o4XMqhRD9Z5qvwlggYcgtJ06z54RxMkM32C
	/aJGI0zvvRO4Ta7bP9NgrVtmJFzTDROSt4MmAQtTnDBfHuk1c4/wjSKOzk15OSOwRP1YIS1FA2dOt
	Oya/a3hr5JwIhpfY0jcWzLnHFM0jqK7yNUfvGSC7+PeAtWsX44AbsWHs43ewVqYMPbn7hkX2cOFrS
	wrydymlw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdsHC-0000000DYgH-1Xzx
	for barebox@lists.infradead.org;
	Thu, 08 Jan 2026 15:50:21 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vdsGv-0006hJ-S9; Thu, 08 Jan 2026 16:50:01 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vdsGv-009hVF-1W;
	Thu, 08 Jan 2026 16:50:01 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vdsGv-0000000AN2q-1TJG;
	Thu, 08 Jan 2026 16:50:01 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 08 Jan 2026 16:50:06 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260108-pbl-load-elf-v3-9-e28c931fc179@pengutronix.de>
References: <20260108-pbl-load-elf-v3-0-e28c931fc179@pengutronix.de>
In-Reply-To: <20260108-pbl-load-elf-v3-0-e28c931fc179@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1767887401; l=2101;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=44UwQFccu8BaHSAvtOryiDGUsqRP/oxnoHikBAUpeyE=;
 b=cSjqUBU0JcyrtvnxRqHsnCeF9HGZQrmS8mjNJNZiaOsUd5zKe5/jp+lQspogsyfAEk2kXU6nA
 NbO895EUEyRD0zBYCdtCeNg7gdrG9WkyFVNCm4eFwbEMXmgFPlcPkDr
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260108_155018_513989_CB260159 
X-CRM114-Status: GOOD (  12.68  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v3 09/23] elf: create elf_open_binary_into()
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
index cba11640e52204add6cf601335b1904bd9188be0..e2e6c821cc6a673ee08d82a82176f39770e5eb42 100644
--- a/common/elf.c
+++ b/common/elf.c
@@ -316,6 +316,23 @@ static void elf_init_struct(struct elf_image *elf)
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
@@ -325,17 +342,12 @@ struct elf_image *elf_open_binary(void *buf)
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
index 236e38fb29887315e01a165795e1bb861f738054..d0e9ae2afd36c74fa50aa0cb3dab060167ba0326 100644
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



