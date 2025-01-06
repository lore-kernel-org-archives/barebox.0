Delivery-date: Mon, 06 Jan 2025 16:37:19 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tUpAM-00HXu3-1Z
	for lore@lore.pengutronix.de;
	Mon, 06 Jan 2025 16:37:19 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tUpAM-0003Fy-DB
	for lore@pengutronix.de; Mon, 06 Jan 2025 16:37:18 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=62Meb6nHYksrf//rfIhlI/YG9PD/dJT5qm+rrynSccI=; b=S7Bn/0GI7nQ625aGG/PKEwigEz
	tmFAOj8ApOoK41HvKZPJdgLzvk73i2L1DNS3Zd4+hMzLwpYte6CP1o8IeM3dMvp/8mjh2SicsYDhn
	tXAOQfzVBFllgJMex2O507Cjpy9nwmg0Vh7aQdEbAf3Y4c5MgrDe5bbz5l9TLDEd8dI32v6E2Zx+r
	iCLn1o8BxsDepMQT1u3+l5yTKOVv1JWXTCJqoqGK3/UfZw/WyRqR0cT/zy7lo0Ncpc5V99BIoOpV6
	socqZO+oG0LV/DIZpzeBY+tJY3n6+3Lp6rEyA3V3e38HRHqRBdXoFYCtZMR0Sw9T/k5hw/OHO5zyc
	emY+zJKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tUp9v-00000001nDV-0TtB;
	Mon, 06 Jan 2025 15:36:51 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tUp9q-00000001nBM-3Gnp
	for barebox@lists.infradead.org;
	Mon, 06 Jan 2025 15:36:48 +0000
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <bst@pengutronix.de>)
	id 1tUp9p-000304-L0; Mon, 06 Jan 2025 16:36:45 +0100
From: Bastian Krause <bst@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Bastian Krause <bst@pengutronix.de>
Date: Mon,  6 Jan 2025 16:36:33 +0100
Message-Id: <20250106153633.1470205-3-bst@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250106153633.1470205-1-bst@pengutronix.de>
References: <20250106153633.1470205-1-bst@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250106_073646_817428_66BC71C2 
X-CRM114-Status: UNSURE (   8.38  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/3] crypto: document __ENV__ lookup in CRYPTO_PUBLIC_KEYS
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Signed-off-by: Bastian Krause <bst@pengutronix.de>
---
 crypto/Kconfig | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/crypto/Kconfig b/crypto/Kconfig
index 191bd510262..14728be4aa9 100644
--- a/crypto/Kconfig
+++ b/crypto/Kconfig
@@ -144,6 +144,10 @@ config CRYPTO_PUBLIC_KEYS
 	  This avoids the mkimage dependency of CONFIG_BOOTM_FITIMAGE_PUBKEY
 	  at the cost of an openssl build-time dependency.
 
+	  Placeholders such as __ENV__VAR_NAME can be used to look up the
+	  corresponding value in the environment variable VAR_NAME for both
+	  public key paths/URIs as well as key name hints.
+
 config CRYPTO_KEYSTORE
 	bool "Keystore"
 	help
-- 
2.39.5



