Delivery-date: Tue, 28 Oct 2025 19:04:36 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vDo3g-00ClmT-2C
	for lore@lore.pengutronix.de;
	Tue, 28 Oct 2025 19:04:36 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vDo3d-0001H6-Dy
	for lore@pengutronix.de; Tue, 28 Oct 2025 19:04:36 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=e9DI4CaBVf56kjN3WX1W+ufkZ9wFJIoZ8wt9giW/+sM=; b=rrte/5AQRtSubVobyo8ZuaHfwe
	WQbONHVIIFcpyEzXCSv3NgqEzp4xxU2UJsTydpfRn37DlZtkoXJCWZInqlQlTBkqStOtfqdohbqXz
	YtWcgaYpJrxAH8tSdSGI7VCOKBQWcwu0FV+0r9CQVVLoshn45TdY1BW/hMLFmX1PolEhXZ11RDJ9W
	dUXwEjbTfuRwwzR+0VpIi2jLJ6bzDzJquV0/qK8FQ63bjd3GmlU/ffkBwe22s80fBHOvclFIaGQC2
	cEFJv7gaLHm4guSQd7kBOR7Oiq+RvPvDBa/irzgngGpW7I48U7yt0kKvMLPHlX6AOPPQiDggwwFrK
	t8u3iYKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDo2z-0000000GSOC-0QRY;
	Tue, 28 Oct 2025 18:03:53 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDo2q-0000000GSCd-3q6Y
	for barebox@bombadil.infradead.org;
	Tue, 28 Oct 2025 18:03:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=e9DI4CaBVf56kjN3WX1W+ufkZ9wFJIoZ8wt9giW/+sM=; b=NlxGxxiK9C7Gjtd5HSDR+6IcaN
	Vi3HPjkWJfttyfAXVLGIxPCb8yStVQH7CCR5J79CdUQMicWQuIyWx/lxnt4rUUpDog7+mcr1F1KAE
	PFuwgtuk8J7K5oS11mxlI8kRNA6ADKIJCvB9CLxHpBT0uG5L/E+mrk9oROnPXOMSik/PX2YcUAaTK
	IHaNkxZevkeoC4AoBeBKcILj6JfKUuBqJWenoAhkdfhSn55OsvMqgFeiTbldNeTf5ZFjwhofNdowe
	mqPjrAeqTMu9jR+bwkyZO90++Ae4Ob7Xn7mhWJi4YlNDMwI2rguYAd5UdpxbXoXypJJMC5xk46Ct1
	+LKktdOg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDnB3-000000050Db-3CXa
	for barebox@lists.infradead.org;
	Tue, 28 Oct 2025 17:08:11 +0000
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1vDo2h-0000PX-J6; Tue, 28 Oct 2025 19:03:35 +0100
From: Jonas Rebmann <jre@pengutronix.de>
Date: Tue, 28 Oct 2025 19:03:22 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251028-tlv-signature-v2-17-3bafce636ad7@pengutronix.de>
References: <20251028-tlv-signature-v2-0-3bafce636ad7@pengutronix.de>
In-Reply-To: <20251028-tlv-signature-v2-0-3bafce636ad7@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, 
 Jonas Rebmann <jre@pengutronix.de>
X-Mailer: b4 0.15-dev-7abec
X-Developer-Signature: v=1; a=openpgp-sha256; l=1833; i=jre@pengutronix.de;
 h=from:subject:message-id; bh=D137uaAvHqpokqc9uPHYKKLFCnL3s2y41DBuducp7pA=;
 b=owGbwMvMwCV2ZcYT3onnbjcwnlZLYshkZC0zWj4t7qTv3cCytx/jyj58lfJak77i3k+Jcpcmk
 W+LzytWd5SyMIhxMciKKbLEqskpCBn7XzertIuFmcPKBDKEgYtTACZiNIuR4WCxw8G4slmeT5RX
 Xzq87GmQ0jupqqaKiPviiasPL9zFX8bI0Py9yMiVe1kM/48VLFsUGbZfcI7Lv9V/IeLc2Xu8SYv
 /MgEA
X-Developer-Key: i=jre@pengutronix.de; a=openpgp;
 fpr=0B7B750D5D3CD21B3B130DE8B61515E135CD49B5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251028_170809_917088_A98C6FD7 
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
X-Spam-Status: No, score=-3.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 17/17] Documentation: migration-2025.11.0: List changes
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
 Documentation/migration-guides/migration-2025.11.0.rst | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/Documentation/migration-guides/migration-2025.11.0.rst b/Documentation/migration-guides/migration-2025.11.0.rst
index a9c7abb66e..bd7fcf8126 100644
--- a/Documentation/migration-guides/migration-2025.11.0.rst
+++ b/Documentation/migration-guides/migration-2025.11.0.rst
@@ -1,6 +1,21 @@
 Release v2025.11.0
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
 i.MX GPIOs
 ----------
 

-- 
2.51.2.535.g419c72cb8a



