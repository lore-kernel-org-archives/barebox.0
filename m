Delivery-date: Wed, 13 Jul 2022 11:59:05 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oBZ98-005uX5-2S
	for lore@lore.pengutronix.de; Wed, 13 Jul 2022 11:59:05 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oBZ96-0000Am-1c
	for lore@pengutronix.de; Wed, 13 Jul 2022 11:59:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=rBl3NLuXe6fmlhERcHnEeezqf3ueTxV9ZAa/lnHDzBE=; b=4LelQJnpIqt27innK0net819iJ
	3z5P6PHmaqshwpRxJOvuvsA1RLqZZwWiscFRf91aSyWA5a7GJpADZvOpFYoCtRyc6q5Avv54jC3KC
	kCb1j0E/ZheBFsbqL62Ock4Ysp/fpRUfDsKtNnPkYKLwcwuZRJ7M/4nbB5Tmf8K5C7D+9MMCgbab9
	h958hsR7whrcxqm0dTefWtdbqB6k1jHCCVEp/UrtXLLXCzigSEriT3bzncvO0Z5jIqio3hc6MB1ip
	E2qki9EL5wnCvD2tobWlyXA/M6ro4ScPhXWQt00AiAy94JBehUbaxSzOH90rVBEkODNqOvz5+1OIv
	Vde0dEwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBZ7m-002UtF-Jv; Wed, 13 Jul 2022 09:57:42 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBZ7f-002UqI-I1
	for barebox@lists.infradead.org; Wed, 13 Jul 2022 09:57:36 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oBZ7d-0008Db-Qu; Wed, 13 Jul 2022 11:57:33 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oBZ7d-000gTm-3Y; Wed, 13 Jul 2022 11:57:33 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oBZ7b-007spg-OU; Wed, 13 Jul 2022 11:57:31 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 13 Jul 2022 11:57:25 +0200
Message-Id: <20220713095730.1878941-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220713_025735_630416_E760B188 
X-CRM114-Status: GOOD (  10.62  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 1/6] common: don't allow compressing in-barebox binaries again
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

For barebox with a prebootloader, we can compress barebox proper as a
whole and it makes no sense to compress the environment on its own
again. The choice already defaulted to this, but the user could still
override it. Ensure that this double compression can't happen.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - no change
---
 common/Kconfig | 17 +++++++++--------
 1 file changed, 9 insertions(+), 8 deletions(-)

diff --git a/common/Kconfig b/common/Kconfig
index 2292e7bcea46..6278866006b1 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -860,29 +860,30 @@ choice
 	default DEFAULT_COMPRESSION_LZ4 if LZ4_DECOMPRESS
 	default DEFAULT_COMPRESSION_BZIP2 if BZLIB
 	help
-	  Select the default compression for in-barebox binary files. Files
-	  compiled into barebox like for example the default environment will
-	  be compressed with this compression type.
+	  For barebox builds without a prebootloader, select here the default
+	  compression for in-barebox binary files. barebox itself can't be
+	  compressed without a prebootloader, but for example the default
+	  environment will be compressed with this compression type.
 
 config DEFAULT_COMPRESSION_GZIP
 	bool "gzip"
-	depends on ZLIB
+	depends on !PBL_IMAGE && ZLIB
 
 config DEFAULT_COMPRESSION_BZIP2
 	bool "bzip2"
-	depends on BZLIB
+	depends on !PBL_IMAGE && BZLIB
 
 config DEFAULT_COMPRESSION_LZO
 	bool "lzo"
-	depends on LZO_DECOMPRESS
+	depends on !PBL_IMAGE && LZO_DECOMPRESS
 
 config DEFAULT_COMPRESSION_LZ4
 	bool "lz4"
-	depends on LZ4_DECOMPRESS
+	depends on !PBL_IMAGE && LZ4_DECOMPRESS
 
 config DEFAULT_COMPRESSION_XZ
 	bool "xz"
-	depends on XZ_DECOMPRESS
+	depends on !PBL_IMAGE && XZ_DECOMPRESS
 
 config DEFAULT_COMPRESSION_NONE
 	bool "no compression"
-- 
2.30.2



