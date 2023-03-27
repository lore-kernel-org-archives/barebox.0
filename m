Delivery-date: Mon, 27 Mar 2023 08:08:42 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pgg25-00GAZZ-Bt
	for lore@lore.pengutronix.de; Mon, 27 Mar 2023 08:08:42 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pgg25-0007Je-B2
	for lore@pengutronix.de; Mon, 27 Mar 2023 08:08:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=yC8FCN5v7WTdQ+k8j6Wij7TG8ZJN6ktZgcfzy26HhMw=; b=ZmdncmDpeqAxSyyyxNOIOtALSA
	FhHJvcMP5EzR8ECQHIlFeba/V97leWvTMwLF2bn8Ipskj7DCBIFUVolHpvRGtcvXtPJauFEeXyu0u
	kuA4fgCJjIw0TDyvwMpakmikad5NE7n8tBz/KWNyNBPFDcyz19GfIkxnPG/7RtUj7+Fc3+C2XICHJ
	QBchiAaQQGzjky3wieWRJVHMcG228wmND9sdyGlIfSfWuGEcjJ7KglIWBW6cGneuP1oD7gfBBOzbi
	AyLXg57F61OJOC0GkOFLozroAX5dyakPMuc3WnIIw69NdiQ/Fd+ZOGq1yhI3U5mJCrDxkWvXVqx3b
	Nr5IM7cA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pgg0i-009uyM-21;
	Mon, 27 Mar 2023 06:07:16 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pgg0b-009urJ-0h
	for barebox@lists.infradead.org;
	Mon, 27 Mar 2023 06:07:14 +0000
Received: (Authenticated sender: ahmad@a3f.at)
	by mail.gandi.net (Postfix) with ESMTPSA id 453C6C000D;
	Mon, 27 Mar 2023 06:07:01 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <ahmad@a3f.at>
Date: Mon, 27 Mar 2023 08:06:52 +0200
Message-Id: <20230327060652.2055761-1-ahmad@a3f.at>
X-Mailer: git-send-email 2.38.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230326_230709_385548_595DAF6E 
X-CRM114-Status: UNSURE (   8.07  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] common: improve CONFIG_DEFAULT_COMPRESSION_* documentation
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This option is only relevant to non-PBL configurations and the
description is a bit confusing, because the default environment
is the only in-barebox binary this option compressed.

Use "built-in environment" instead of "in-barebox binaries" or "default
environment" to make this clearer.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 common/Kconfig | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/common/Kconfig b/common/Kconfig
index 57fe5f7886de..d90b5fb88682 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -863,7 +863,7 @@ config DEFAULT_ENVIRONMENT
 	  CONFIG_ENV_HANDLING is not enabled.
 
 choice
-	prompt "default compression for in-barebox binaries"
+	prompt "default compression for built-in environment"
 	default DEFAULT_COMPRESSION_NONE if PBL_IMAGE
 	default DEFAULT_COMPRESSION_LZO if LZO_DECOMPRESS
 	default DEFAULT_COMPRESSION_XZ if XZ_DECOMPRESS
@@ -872,9 +872,13 @@ choice
 	default DEFAULT_COMPRESSION_BZIP2 if BZLIB
 	help
 	  For barebox builds without a prebootloader, select here the default
-	  compression for in-barebox binary files. barebox itself can't be
-	  compressed without a prebootloader, but for example the default
-	  environment will be compressed with this compression type.
+	  compression for the built-in environment. barebox itself can't be
+	  compressed without a prebootloader, but the built-in environment,
+	  including any binary files placed in it (e.g. in /env/data)
+	  will be compressed with this compression type.
+
+	  For barebox builds _with_ a prebootloader, the environment is
+	  compressed as part of barebox proper (CONFIG_IMAGE_COMPRESSION).
 
 config DEFAULT_COMPRESSION_GZIP
 	bool "gzip"
-- 
2.38.3



