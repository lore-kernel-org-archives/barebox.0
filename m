Delivery-date: Mon, 15 Dec 2025 09:38:58 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vV46c-00BgC4-2S
	for lore@lore.pengutronix.de;
	Mon, 15 Dec 2025 09:38:58 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vV46c-0001W9-6v
	for lore@pengutronix.de; Mon, 15 Dec 2025 09:38:58 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=OcvLd+SoXF4nboJmGSDNwPbolhN1jLrucB84xroCZDo=; b=qNN+9bDPA08WV04AiUO+mYOfx+
	Pj7Aj2nJxhtjmoQJNSFMec6YDQjwkYThWCRnga2Bs+iNub/d9YHVvdHNrU4Zx9TQyiSUFroR6vRVG
	8vxto9igbQQOjNkGP0srYnhCA5PkSvtSIRoLLaAmIUnK/nF3oNjpLekeNNPDFgSmMA0ht1mo8jYUR
	i6H7PRPO4ikCnfjJjIXC1F+rG9+xWF7tlrRQROCG17CDZFOLpZ5MPWrOvCtYAmP8RuO9EZ4D7SibT
	PzvHHBhbsAdzfukxt0YSvgmOYXC2V3myd6OidjmFGztqcT+2Au/i2x1P9eBhjqvFiOryYQFQjAf0B
	h34eTddA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vV46D-00000003HNT-1Yu0;
	Mon, 15 Dec 2025 08:38:33 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vV46B-00000003HN8-3B1A
	for barebox@lists.infradead.org;
	Mon, 15 Dec 2025 08:38:32 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vV46A-0001S6-1y; Mon, 15 Dec 2025 09:38:30 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vV469-005kaz-2n;
	Mon, 15 Dec 2025 09:38:29 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vV469-0000000A11v-3DU7;
	Mon, 15 Dec 2025 09:38:29 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 15 Dec 2025 09:38:28 +0100
Message-ID: <20251215083829.2386659-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251215_003831_831691_8599B356 
X-CRM114-Status: UNSURE (   9.07  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] filetype: move is_dos_exe into header
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The MZ magic can occur together with other magic signatures as well,
e.g. in x86 bzImages or in EFI-stubbed ARM/RISC-V kernel images.

Move the check into a header to allow it to be used e.g. from boot entry
providers.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/filetype.c  | 5 -----
 include/filetype.h | 6 ++++++
 2 files changed, 6 insertions(+), 5 deletions(-)

diff --git a/common/filetype.c b/common/filetype.c
index 3e3e18dae0b3..196591698768 100644
--- a/common/filetype.c
+++ b/common/filetype.c
@@ -288,11 +288,6 @@ enum filetype file_detect_partition_table(const void *_buf, size_t bufsize)
 	return filetype_unknown;
 }
 
-static bool is_dos_exe(const u8 *buf8)
-{
-	return buf8[0] == 'M' && buf8[1] == 'Z';
-}
-
 #define CH_TOC_section_name     0x14
 
 enum filetype file_detect_compression_type(const void *_buf, size_t bufsize)
diff --git a/include/filetype.h b/include/filetype.h
index 440eb95bfb0c..283b8fee4c70 100644
--- a/include/filetype.h
+++ b/include/filetype.h
@@ -143,6 +143,12 @@ static inline int is_barebox_head(const char *head)
 	return is_barebox_arm_head(head) || is_barebox_mips_head(head);
 }
 
+static inline bool is_dos_exe(const void *buf)
+{
+	const u8 *buf8 = buf;
+	return buf8[0] == 'M' && buf8[1] == 'Z';
+}
+
 static inline bool is_arm64_linux_bootimage(const void *header)
 {
 	return le32_to_cpup(header + 56) == 0x644d5241;
-- 
2.47.3



