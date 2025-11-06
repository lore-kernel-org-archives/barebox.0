Delivery-date: Thu, 06 Nov 2025 16:19:01 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vH1lN-00FynJ-0U
	for lore@lore.pengutronix.de;
	Thu, 06 Nov 2025 16:19:01 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vH1lJ-0006fN-CB
	for lore@pengutronix.de; Thu, 06 Nov 2025 16:19:00 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=kt8/wiyqs/r83O0DAN6Ribv1jh3nVno1n2zC05zFcEg=; b=2oeZfCDhJkkSfgvqQ+e20mYB9I
	E9dfQl29whFSXWyvEgMhlE479pwdcxwqGD/suYQhdQjTJoM1G9ovzgsiWRxAx4aDE/z/AESyc7zXo
	7wN34uqYZade+lJt0MF/Nz2FnMydGAyqGXCP77XAOCTLi9b7Qmfo6eZHXDYRJvoNqNy8b1eVgt9aD
	PjWBKexsOXw4eFS/V3a1gijOvGQh9HgR6MQULxVlBwkW6a0HRkg2O2gvWfIVXQAxsRv1MfENHKtwe
	edBQDl8yj37dveyZ7SIUJGrZ24o5NAmn94EaMSf9csYTozGSfvz+0hvcAbG9l4rAo5ln3+LVpyK29
	elWQaNHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vH1kg-0000000FnGg-0vHp;
	Thu, 06 Nov 2025 15:18:18 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vH1kc-0000000FnAh-0lzG
	for barebox@lists.infradead.org;
	Thu, 06 Nov 2025 15:18:16 +0000
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1vH1kZ-0005tl-Bg; Thu, 06 Nov 2025 16:18:11 +0100
From: Jonas Rebmann <jre@pengutronix.de>
Date: Thu, 06 Nov 2025 16:18:14 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251106-tlv-signature-v3-17-5d00ed378e75@pengutronix.de>
References: <20251106-tlv-signature-v3-0-5d00ed378e75@pengutronix.de>
In-Reply-To: <20251106-tlv-signature-v3-0-5d00ed378e75@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, 
 Jonas Rebmann <jre@pengutronix.de>
X-Mailer: b4 0.15-dev-7abec
X-Developer-Signature: v=1; a=openpgp-sha256; l=1823; i=jre@pengutronix.de;
 h=from:subject:message-id; bh=00toxjddH7JsZGtiPbHG7kb0LNjYjTvUFXhl+jFmHas=;
 b=owGbwMvMwCV2ZcYT3onnbjcwnlZLYsjk2WPUsfTKuci4e9fS0y6yrZHJite459D689Dc34/T6
 +SfV0zd3VHKwiDGxSArpsgSqyanIGTsf92s0i4WZg4rE8gQBi5OAZhITA0jw8PrYjMMwk06d2Xt
 +HrlM0/E6YzXZSH3/y74MflVD7sBzwNGhj1bOtI8H/J1+boEnFrDssEyxNk74PnCaNdpr4utzS5
 /YAEA
X-Developer-Key: i=jre@pengutronix.de; a=openpgp;
 fpr=0B7B750D5D3CD21B3B130DE8B61515E135CD49B5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251106_071814_231495_6361400F 
X-CRM114-Status: GOOD (  10.34  )
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
X-Spam-Status: No, score=-3.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v3 17/17] Documentation: migration-2025.12.0: List changes
 to CONFIG_CRYPTO_PUBLIC_KEYS
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

As part of the introduction of TLV signature in public key keyrings,
there is a new interpreter for CONFIG_CRYPTO_PUBLIC_KEYS in
scripts/keytoc.c. All users should update to the new syntax and are
presented with a warning. Users with invalid characters in the legacy
syntax must change the fit-hint and will be presented with an error.

Signed-off-by: Jonas Rebmann <jre@pengutronix.de>
---
 Documentation/migration-guides/migration-2025.12.0.rst | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/Documentation/migration-guides/migration-2025.12.0.rst b/Documentation/migration-guides/migration-2025.12.0.rst
index 9d368bd970..21c8d1e3f3 100644
--- a/Documentation/migration-guides/migration-2025.12.0.rst
+++ b/Documentation/migration-guides/migration-2025.12.0.rst
@@ -1,6 +1,21 @@
 Release v2025.12.0
 ==================
 
+Configuration options
+---------------------
+
+* The syntax of ``CONFIG_CRYPTO_PUBLIC_KEYS`` was updated with the introduction
+  of the keyring feature. Previously, keys selected via
+  ``CONFIG_CRYPTO_PUBLIC_KEYS`` were only used for fitimage verification. Now,
+  fitimage verification uses the "fit" keyring. "fit" will be selected as the
+  default keyring for transition but a warning will be emitted when no keyring
+  is explicitly provided. Existing users should update their keyspec for
+  fitimage public keys to ``keyring=fit[,fit-hint=<fit_hint>]:<crt>``
+* The fit-hints in ``CONFIG_CRYPTO_PUBLIC_KEYS`` are now limited to identifiers
+  matching the regular expression ``[a-zA-Z][a-zA-Z0-9_-]*``. Public keys with
+  a ``fit-hint`` not conforming to this results in an error, affected key-hints
+  must be changed. Please reach out to the mailing list if this causes issues.
+
 Shell
 -----
 

-- 
2.51.2.535.g419c72cb8a



