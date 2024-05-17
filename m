Delivery-date: Fri, 17 May 2024 08:22:28 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s7qz6-000uIJ-2q
	for lore@lore.pengutronix.de;
	Fri, 17 May 2024 08:22:28 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s7qz6-0003Ub-9x
	for lore@pengutronix.de; Fri, 17 May 2024 08:22:28 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=V6Ek1o0Vce5xsJ5EIhYPCEhavQdGsgPtyB7e/2GGe5U=; b=RiuNMwa7N1aTBpU7k07JvrhYyh
	Ubvebu2WzZ42S/od2QFDIqcuDel0zH+X0rlzlXXaGsrj56AIsSbBHP3UULeNDl8Q9DTIPhNJvuUSz
	qQvGCEJLMR8Duoic0kmMsrggDXVnq9ij0VOjbgkUN5vHRZP17H/bgkgetFWcBLTsfmIrEW5mfJ4RZ
	8AG311kCAi/5C+M6H9P6EAczfMQEEHpaIZn2+FUz5pG2mMvfCM0MKhfBeP5dS2H3HzC0b3KLwnYSM
	22aT6sdyZXPt9IgGW4JsoOTP/CisLtCRvSCWpQF+eiGm7pF5JqKch7lpK1LgrbCEMr/jITJa39W04
	nlKFv2+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7qyc-00000006w7a-2HKK;
	Fri, 17 May 2024 06:21:58 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7qyZ-00000006w6b-2CFG
	for barebox@lists.infradead.org;
	Fri, 17 May 2024 06:21:57 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s7qyX-0003K8-Jv; Fri, 17 May 2024 08:21:53 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s7qyX-001pZd-7a; Fri, 17 May 2024 08:21:53 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s7qyX-00Dquw-0T;
	Fri, 17 May 2024 08:21:53 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 17 May 2024 08:21:51 +0200
Message-Id: <20240517062151.3301660-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240516_232155_809120_5F8EA0D8 
X-CRM114-Status: GOOD (  10.13  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] common: hide DEFAULT_COMPRESSION menu
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

CONFIG_DEFAULT_COMPRESSION_* refers to the compression done for
in-barebox binaries and is not useful when barebox proper as a whole is
compressed as in that case, we would have compression applied twice.

For this reason, DEFAULT_COMPRESSION_NONE is the only possible choice in
a PBL-enabled build. Having the choice with only one option is confusing
though, so let's hide the prompt.

Preferably, we'd omit these options in PBL builds completely, but this
seems not easily possible.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/Kconfig | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/common/Kconfig b/common/Kconfig
index 67cbbf5197da..366521dadfe1 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -921,8 +921,8 @@ config DEFAULT_ENVIRONMENT
 	  CONFIG_ENV_HANDLING is not enabled.
 
 choice
-	prompt "default compression for in-barebox binaries"
-	default DEFAULT_COMPRESSION_NONE if PBL_IMAGE
+	prompt "default compression for in-barebox binaries" if PBL_IMAGE
+	default DEFAULT_COMPRESSION_NONE
 	default DEFAULT_COMPRESSION_LZO if LZO_DECOMPRESS
 	default DEFAULT_COMPRESSION_XZ if XZ_DECOMPRESS
 	default DEFAULT_COMPRESSION_GZIP if ZLIB
-- 
2.39.2



