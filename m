Delivery-date: Mon, 05 Jan 2026 12:27:56 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vcike-001VDx-0U
	for lore@lore.pengutronix.de;
	Mon, 05 Jan 2026 12:27:56 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vcikd-0006Ht-Gy
	for lore@pengutronix.de; Mon, 05 Jan 2026 12:27:56 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=L0f+hu8WMrhx/B15dDVRX68Kh+VUFCBuDitEsJGnFWg=; b=EhlAPc5FhyRl10K6ijvyjqwdYE
	IS3k7Zi2zoaAehrXba+QXTOUz63VDn42zxm8w4qeMOadMZy/vrWlwhGkze+4qocivI7fN5NIM8eeF
	Y0UGYncHRdqAysQ8hQukhpdfw+SfGJSMpYmh3ErBGLXSfQKaoOSb+88ro1Ib1UY2idK4E8vklr4ix
	YVDvWpgDpMh0DOcenM6Nm1ZsCrBXkD3IdVWXxhPhNXX91MiY/F8MLcRBpPTn4k5fZ1H2NbQMfZ64G
	L9+n9StUp/jeMQu8wJ/AFuBCoiCn2rpzzkgIvyWQrX5uaHRa1PKkSdgdCK29FiIMcY/2ps8GbgcdD
	nWk1vpXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcik7-0000000BBbY-3ImF;
	Mon, 05 Jan 2026 11:27:23 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcik4-0000000BBXI-2mNr
	for barebox@lists.infradead.org;
	Mon, 05 Jan 2026 11:27:21 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vcije-0005Yo-MM; Mon, 05 Jan 2026 12:26:54 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vcije-0099xf-16;
	Mon, 05 Jan 2026 12:26:54 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vcije-00000007KWP-0xcQ;
	Mon, 05 Jan 2026 12:26:54 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 05 Jan 2026 12:26:48 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260105-pbl-load-elf-v1-7-e97853f98232@pengutronix.de>
References: <20260105-pbl-load-elf-v1-0-e97853f98232@pengutronix.de>
In-Reply-To: <20260105-pbl-load-elf-v1-0-e97853f98232@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1767612414; l=2048;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=+mSKl84QuIgsXtn6lkpaZG7Acf9xzt5oa4PLx2DZwl0=;
 b=yCuP3TvKlJvIMKAXCf/dAJhENgEM21nQq0+swwZgBeJBSdTk74Pc3oxofpo3rrGnzSuJ8CMj8
 IS68390NokiDDf1Aj5wNYm6mskPxZbIHEEKphLKylVCGPVLG6qKxd24
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260105_032720_726469_17E73123 
X-CRM114-Status: GOOD (  12.62  )
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
Subject: [PATCH 07/19] elf: create elf_open_binary_into()
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
index 565b283b694773727ef77917cfd8c1d4ee83a8d1..ee5e31dc58bbb6432d82ff96d9dbeb4c6ce72e39 100644
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
index 5b1d75c14ce198292b052159de310ac14c3bd2d9..ea2c399cca7f70a2c8c6d239be1fa0ff0519a683 100644
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



