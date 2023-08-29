Delivery-date: Tue, 29 Aug 2023 11:31:06 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qav3z-00D9uU-JS
	for lore@lore.pengutronix.de; Tue, 29 Aug 2023 11:31:06 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qav3x-0004TQ-CR
	for lore@pengutronix.de; Tue, 29 Aug 2023 11:31:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=QhFZtaZD1FLAhyvD/ihpn0JaHtEkt7OMbTuoF9Mis/k=; b=bt8h+r5l5gcxcSJ032x4pPpM/U
	8n8Co0Hmhf4h12ls1UFDBSTDHdMSG521uEG+2VH1H/wA2lHA0Q0TjruSfx0ahsL+jlJRxXn2xqYmY
	iWGG4fjjGC1KdjPbxNeZZhyni8vnBugaVxYv3JLK2VODkGqUoL/261qtlnSyYdtUYXBNjfcIr1q9W
	4p9M5Hd8VsFmb7Cm7/wbNYXeUimp2UhSsuUUIoQuxFVwC3lc5tyO65y0rJAD9nVRPhMieSCDjbuZ2
	DsOx3uEk+knRBWh88Byzn6va5IALiWhnVfHfyMkMMjLNGJK1vLheQ/zJBpuLkfcZ/FCa6UZiy/LHY
	7x6EFZYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qav2M-00B96B-1m;
	Tue, 29 Aug 2023 09:29:26 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qav2I-00B92L-1u
	for barebox@lists.infradead.org;
	Tue, 29 Aug 2023 09:29:24 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <j.zink@pengutronix.de>)
	id 1qav2B-00044h-Eu; Tue, 29 Aug 2023 11:29:15 +0200
Received: from [2a0a:edc0:0:1101:1d::39] (helo=dude03.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <j.zink@pengutronix.de>)
	id 1qav2A-002Q2L-Pv; Tue, 29 Aug 2023 11:29:14 +0200
Received: from localhost ([::1] helo=dude03.red.stw.pengutronix.de)
	by dude03.red.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <j.zink@pengutronix.de>)
	id 1qav29-003gFN-Ur; Tue, 29 Aug 2023 11:29:13 +0200
From: Johannes Zink <j.zink@pengutronix.de>
Date: Tue, 29 Aug 2023 11:28:59 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230829-crc32_in_pbl-v1-1-6a3e01a74c8d@pengutronix.de>
X-B4-Tracking: v=1; b=H4sIAFq67WQC/x2NWwqDQAwAryL57oKNi2ivIkX2ETWwRMnSUhDv3
 uDnDAxzQiVlqvBqTlD6cuVdDJ6PBtIWZCXH2Riwxa4dcHRJU4czy3zE4nwe0Pc4Zk8IlsRQyUU
 NkjaL5FOKyUNp4d/9mN7X9QfYdJaTcwAAAA==
To: patchwork-jzi@pengutronix.de
Cc: Johannes Zink <j.zink@pengutronix.de>, 
 Barebox Mailing List <barebox@lists.infradead.org>
X-Mailer: b4 0.12.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230829_022922_627118_DB50823E 
X-CRM114-Status: GOOD (  11.26  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] crypto: crc32: make crc32 available in PBL
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

crc32 may be required in PBL for checking data integrity. Add
CONFIG_CRC32_EARLY to kconfig which allows adding crc32 also in the PBL.

As the PBL has no dynamic allocation, do not use dynamic CRC table
generation when CRC32 is added in PBL.

Signed-off-by: Johannes Zink <j.zink@pengutronix.de>
---
To: Barebox Mailing List <barebox@lists.infradead.org>
Cc: Johannes Zink <j.zink@pengutronix.de>
Cc: patchwork-jzi@pengutronix.de
---
 crypto/Kconfig  | 3 +++
 crypto/Makefile | 1 +
 crypto/crc32.c  | 6 +++---
 3 files changed, 7 insertions(+), 3 deletions(-)

diff --git a/crypto/Kconfig b/crypto/Kconfig
index 04e5ef43705b..6e18b5868061 100644
--- a/crypto/Kconfig
+++ b/crypto/Kconfig
@@ -5,6 +5,9 @@ menu "Crypto support"
 config CRC32
 	bool
 
+config CRC32_EARLY
+	bool
+
 config CRC_ITU_T
 	bool
 
diff --git a/crypto/Makefile b/crypto/Makefile
index 22035d4f69ee..24e1f3d91797 100644
--- a/crypto/Makefile
+++ b/crypto/Makefile
@@ -11,6 +11,7 @@ obj-$(CONFIG_DIGEST_SHA1_GENERIC)	+= sha1.o
 obj-$(CONFIG_DIGEST_SHA224_GENERIC)	+= sha2.o
 obj-$(CONFIG_DIGEST_SHA256_GENERIC)	+= sha2.o
 pbl-y					+= sha2.o digest.o
+lwl-$(CONFIG_CRC32_EARLY)		+= crc32.o
 obj-$(CONFIG_DIGEST_SHA384_GENERIC)	+= sha4.o
 obj-$(CONFIG_DIGEST_SHA512_GENERIC)	+= sha4.o
 obj-y	+= memneq.o
diff --git a/crypto/crc32.c b/crypto/crc32.c
index 95cb2212db2b..284d39351682 100644
--- a/crypto/crc32.c
+++ b/crypto/crc32.c
@@ -22,7 +22,7 @@
 #define STATIC static inline
 #endif
 
-#ifdef CONFIG_DYNAMIC_CRC_TABLE
+#if defined(CONFIG_DYNAMIC_CRC_TABLE) && !defined(__PBL__)
 
 static uint32_t *crc_table;
 
@@ -145,7 +145,7 @@ STATIC uint32_t crc32(uint32_t crc, const void *_buf, unsigned int len)
 {
     const unsigned char *buf = _buf;
 
-#ifdef CONFIG_DYNAMIC_CRC_TABLE
+#if defined(CONFIG_DYNAMIC_CRC_TABLE) && !defined(__PBL__)
 	if (!crc_table)
 		make_crc_table();
 #endif
@@ -171,7 +171,7 @@ STATIC uint32_t crc32_no_comp(uint32_t crc, const void *_buf, unsigned int len)
 {
    const unsigned char *buf = _buf;
 
-#ifdef CONFIG_DYNAMIC_CRC_TABLE
+#if defined(CONFIG_DYNAMIC_CRC_TABLE) && !defined(__PBL__)
 	if (!crc_table)
 		make_crc_table();
 #endif

---
base-commit: bef38b18eeb5d2f1fac334fb8b831e47261e099c
change-id: 20230829-crc32_in_pbl-4d824629d4e2

Best regards,
-- 
Johannes Zink <j.zink@pengutronix.de>



