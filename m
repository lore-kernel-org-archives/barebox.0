Delivery-date: Tue, 18 Mar 2025 15:47:25 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tuYE2-0014fF-0J
	for lore@lore.pengutronix.de;
	Tue, 18 Mar 2025 15:47:25 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tuYE0-0007pb-G2
	for lore@pengutronix.de; Tue, 18 Mar 2025 15:47:25 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=H92zQLPh60jYNrHszL+VqGnkw90s8ruIMFXaJ5trbO4=; b=kI9GbXGLq+PQhnItCneVpTP0yc
	qJFt0UTJLEn/q1DWn1rEXoYzIf6b8BN88Yqm5+3b9vyLDVUG5xl47flAbUh2g0iSpM4aVzbLqqIvN
	f4rAr5rOhyX7eoEeG3V0M/xZqP6I8ikwqe/JbaGaJ2p96USHcDCvpOy8arf7uifv7VY9QLcwNudw9
	qGe8sqgt/p14n2GkVA2fieN7+E8BbOiWUzuz22XaW7QsGcSWJt32Wr6g17b9f5LoyLjqL+lL6Tnfs
	oOCHSDpLT9YU7a6EI9/oi+qLL0CYQUQomAFu7aHvb8K9lRItOVGeOjUCT7yH5JhvrFCNVqoG9PRxU
	0aJv1zDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tuYDS-00000006E3i-0wHy;
	Tue, 18 Mar 2025 14:46:50 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tuY8e-00000006DOh-2UIr
	for barebox@lists.infradead.org;
	Tue, 18 Mar 2025 14:41:53 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tuY8V-0006nI-DG; Tue, 18 Mar 2025 15:41:43 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tuY8U-000Rag-28;
	Tue, 18 Mar 2025 15:41:43 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tuY8U-00F87i-3B;
	Tue, 18 Mar 2025 15:41:42 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 18 Mar 2025 15:41:46 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250318-filetype-size-reduction-v1-5-4f463ffae7d0@pengutronix.de>
References: <20250318-filetype-size-reduction-v1-0-4f463ffae7d0@pengutronix.de>
In-Reply-To: <20250318-filetype-size-reduction-v1-0-4f463ffae7d0@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1742308902; l=1995;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=j8du/vt414CNQxIEFobHKbWwE4nqPwh3aEMSDSDzFf0=;
 b=Ti0QPvrMm2C/tc9QSyhlAYV5aXLLQrj6H3Fi5THcSlcPfHdTIxyVkV7z5sryufKdUqrPN8Mmw
 7G0qHy98+0GBMGq5Syt4KjTfaGhKtaaB8VNk9cn/c0EvkXmDbX/vcd+
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250318_074152_635853_A6D5B524 
X-CRM114-Status: GOOD (  10.31  )
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
Subject: [PATCH 5/7] filetype: make file type strings optional
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This adds a new Kconfig option FILETYPE_STRING which makes
printing file types as strings optional. The filetype_str[]
array has become quite big and with this we can get rid of
it in size constraint barebox images. Make it default y to
keep the existing default.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/Kconfig    |  8 ++++++++
 common/filetype.c | 15 +++++++++++++++
 2 files changed, 23 insertions(+)

diff --git a/common/Kconfig b/common/Kconfig
index 12026b8232..c57669bb61 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -1332,6 +1332,14 @@ config PBL_OPTEE
 	  Allows starting OP-TEE during lowlevel initialization of the PBL.
 	  Requires explicit support in the board's lowlevel file.
 
+config FILETYPE_STRING
+	bool "Print file types as strings"
+	default y
+	depends on FILETYPE
+	help
+	  Say yes here to include strings for filetypes in barebox. If disabled file
+	  types will be printed as numbers only.
+
 endmenu
 
 if FASTBOOT_BASE
diff --git a/common/filetype.c b/common/filetype.c
index b8d65dfb9f..ce868223d5 100644
--- a/common/filetype.c
+++ b/common/filetype.c
@@ -85,8 +85,20 @@ static const struct filetype_str filetype_str[] = {
 	[filetype_zstd_compressed] = { "ZSTD compressed", "zstd" },
 };
 
+static const char *file_type_to_nr_string(enum filetype f)
+{
+	static char str[sizeof("4294967295")];
+
+	sprintf(str, "%u", (unsigned int)f);
+
+	return str;
+}
+
 const char *file_type_to_string(enum filetype f)
 {
+	if (!IS_ENABLED(CONFIG_FILETYPE_STRINGS))
+		return file_type_to_nr_string(f);
+
 	if (f < ARRAY_SIZE(filetype_str))
 		return filetype_str[f].name;
 
@@ -95,6 +107,9 @@ const char *file_type_to_string(enum filetype f)
 
 const char *file_type_to_short_string(enum filetype f)
 {
+	if (!IS_ENABLED(CONFIG_FILETYPE_STRINGS))
+		return file_type_to_nr_string(f);
+
 	if (f < ARRAY_SIZE(filetype_str))
 		return filetype_str[f].shortname;
 

-- 
2.39.5



