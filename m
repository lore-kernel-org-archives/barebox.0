Delivery-date: Thu, 07 Sep 2023 12:54:21 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qeCeV-0072HH-1n
	for lore@lore.pengutronix.de; Thu, 07 Sep 2023 12:54:21 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qeCeS-0006ju-UO
	for lore@pengutronix.de; Thu, 07 Sep 2023 12:54:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ygDfo4+N9UNvS77cpzkyrL9Y0D6V4mCvUY3TcQVUyi0=; b=bUMZeuGiucdIF3NlSHQkPlvWVH
	g9fTMjt92t9P30Da65d+epjnGRWqVeW9EF82Fj/f8W+EIJ4YNjhRDAFM55PCeRFnovwH0eIT8Vs71
	1FEv9MsrGD43pf0iTCa/wKXjtv1stgEVmi+Y/KJcfhLLRBK+kvnc7w2JaMcGk+2KaD4c6RXLv9hQ3
	G6TSCBzzEso1H0Xli70tUZzO2i76TdVNrxK4pS/UK63WDVPFNXPLl1+/ykYiuEleH1C6p+FtCniY7
	sKkGWJrpCZ+3rsyn1lRsYGR5p0qePftCQPqTOMLxvI8txzNIlUt3hKlWa0bV6JM+dWCfE8GtwbO2I
	QgyvX7ZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qeCdN-00Bt5Q-12;
	Thu, 07 Sep 2023 10:53:13 +0000
Received: from relay2-d.mail.gandi.net ([2001:4b98:dc4:8::222])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qeCdK-00Bt17-04
	for barebox@lists.infradead.org;
	Thu, 07 Sep 2023 10:53:11 +0000
Received: by mail.gandi.net (Postfix) with ESMTPSA id F11FF40025;
	Thu,  7 Sep 2023 10:53:04 +0000 (UTC)
From: Jules Maselbas <jmaselbas@zdiv.net>
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@zdiv.net>
Date: Thu,  7 Sep 2023 12:51:43 +0200
Message-ID: <20230907105142.39786-2-jmaselbas@zdiv.net>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20230906150857.32035-1-jmaselbas@zdiv.net>
References: <20230906150857.32035-1-jmaselbas@zdiv.net>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-GND-Sasl: jmaselbas@zdiv.net
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230907_035310_204978_FECBE56A 
X-CRM114-Status: UNSURE (   6.83  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] fixup! decompressors: Update xz to include ARM64 BCJ decoder
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This saves ~1.2KB from pbl binary size

Signed-off-by: Jules Maselbas <jmaselbas@zdiv.net>
---
 lib/decompress_unxz.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/lib/decompress_unxz.c b/lib/decompress_unxz.c
index 5c906932f8..132ab4a239 100644
--- a/lib/decompress_unxz.c
+++ b/lib/decompress_unxz.c
@@ -131,9 +131,10 @@
 #	define XZ_DEC_POWERPC
 #endif
 #ifdef CONFIG_ARM
-#	define XZ_DEC_ARM
 #	ifdef CONFIG_CPU_64
 #		define XZ_DEC_ARM64
+#	else
+#		define XZ_DEC_ARM
 #	endif
 #endif
 #ifdef CONFIG_IA64
-- 
2.42.0



