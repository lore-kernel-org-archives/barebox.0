Delivery-date: Thu, 13 Jun 2024 15:10:33 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sHkDp-005Njc-1J
	for lore@lore.pengutronix.de;
	Thu, 13 Jun 2024 15:10:33 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sHkDo-00063n-P7
	for lore@pengutronix.de; Thu, 13 Jun 2024 15:10:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zvON4/TQZLMXi05fOdIctIJ+iKmgyCsf6XVZ8QcmD1Q=; b=D7xA1QOU3gwQYg/myjR7Y5jh3a
	Wt47v6AMdZs8mtPuTD+tUUenA8DCsz70xUS8Ch2fhPGA+WOBZ0Zu5SJj2caBqsvDlYSEFn9HvJJ33
	xXM7mVA6anGdz5Wx/Wqgy0+6JDikZyAFg9YIe54jwe98Ba964OayQuDAqorx36FKKe5JQgwPw8Fgu
	ddSQMwfK/Envsw/xacvEwuDEMS5V5EZY9lKN41wS6vUkzVJhNW1WnKXnF2+QD0xhJi5kuU2ljou8/
	X1F36fdgB9njGo/EPLJCQh6ZDBwddF0Fl+iVqBLAKWSRVTPU1LGBR7zVd/LhNsRGbgbejRveTy5PE
	OMKMuxNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHkDK-0000000GdW4-25Gn;
	Thu, 13 Jun 2024 13:10:02 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHkD9-0000000GdNn-2ebO
	for barebox@lists.infradead.org;
	Thu, 13 Jun 2024 13:09:54 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1sHkD8-0005fE-HC
	for barebox@lists.infradead.org; Thu, 13 Jun 2024 15:09:50 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Thu, 13 Jun 2024 15:09:42 +0200
Message-Id: <20240613130944.264396-7-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240613130944.264396-1-m.felsch@pengutronix.de>
References: <20240613130944.264396-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240613_060951_801605_0CCA55D0 
X-CRM114-Status: UNSURE (   8.40  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 7/9] i.MX8M: HABv4: add an option to allow key revocation
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The HAB code needs an special [Unlock] instruction to keep the
SRK_REVOKE fuse bank unlocked. This is required if a key needs to be
revoked.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 arch/arm/mach-imx/Kconfig            | 8 ++++++++
 include/mach/imx/habv4-imx8-gencsf.h | 6 ++++++
 2 files changed, 14 insertions(+)

diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 61258137736f..68f55971506b 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -835,6 +835,14 @@ config HABV4_QSPI
 	help
 	  Enable this option to build signed QSPI/FlexSPI images.
 
+config HABV4_CSF_UNLOCK_SRK_REVOKE
+	depends on HABV4
+	bool "Unlock SRK revocation"
+	help
+	  Enable this option to instruct the HAB code to not lock
+	  the SRK_REVOKE_LOCK sticky bit. This is required for key
+	  revocation. Don't enable this if you are unsure.
+
 config HAB_CERTS_ENV
 	depends on HAB
 	bool "Specify certificates in environment"
diff --git a/include/mach/imx/habv4-imx8-gencsf.h b/include/mach/imx/habv4-imx8-gencsf.h
index 5f92ceceab00..56d9ef2de92f 100644
--- a/include/mach/imx/habv4-imx8-gencsf.h
+++ b/include/mach/imx/habv4-imx8-gencsf.h
@@ -36,6 +36,12 @@ hab [Unlock]
 hab Engine = CAAM
 hab Features = RNG, MID
 
+#if defined(CONFIG_HABV4_CSF_UNLOCK_SRK_REVOKE)
+hab [Unlock]
+hab Engine = OCOTP
+hab Features = SRK REVOKE
+#endif
+
 hab [Install Key]
 /* verification key index in key store (0, 2...4) */
 hab Verification index = 0
-- 
2.39.2



