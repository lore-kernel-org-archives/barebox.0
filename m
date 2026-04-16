Delivery-date: Thu, 16 Apr 2026 17:35:36 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wDOki-00Crqm-1n
	for lore@lore.pengutronix.de;
	Thu, 16 Apr 2026 17:35:36 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wDOkh-0002ai-T3
	for lore@pengutronix.de; Thu, 16 Apr 2026 17:35:36 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=kczricDVJwzg78WsMP3TWugpyCyHJGyWt4KtUAE2RR0=; b=rrrkzBRNqYP2I8sx41UZJN2PdI
	aLk2TIBYNkFK/Yx0oeN2YzwkH/EbmDfxFz1L7wkQLPxgdXRcuVkUtX0e2KBy3hIbieFvJ1uwKChoQ
	z1mJVnGy0df0v3/Ia+8Fu27kF2r+1a++UTgyT+RJkh0Hf0WTsKKgGiSoHYFQ0pGbjrF8g+TrnUJDl
	HpCCgvdrkyNBij4dUMAlKLIFJepHP49SInsJoNb5w+1mu3kUa7DpV2nu1iyQcdNTd/sqrmM9SJ6n7
	GIgUsZC2B4d441t6klgcKzMeh8Rq3uqZHe6Kg9wi/pZXHFCG1+YbJsRThgIrNNOS1mTiuBOnWdSa5
	O/CFrusQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDOk9-00000002d1I-3dm8;
	Thu, 16 Apr 2026 15:35:01 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDOk7-00000002d0g-1owM
	for barebox@lists.infradead.org;
	Thu, 16 Apr 2026 15:35:00 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wDOk4-0002KU-PE; Thu, 16 Apr 2026 17:34:56 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wDOk4-005hoY-1v;
	Thu, 16 Apr 2026 17:34:56 +0200
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wDOk4-0000000B2Ra-27Vc;
	Thu, 16 Apr 2026 17:34:56 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: str@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 16 Apr 2026 17:34:37 +0200
Message-ID: <20260416153455.2630276-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260416_083459_474601_45AD68E9 
X-CRM114-Status: GOOD (  13.18  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2] Documentation: migration-guides: mention possible FIT compat break
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

With manually written ITS, it's easy to omit signing some of the images.
This flew under the radar so far, but with v2026.03.0 (or v2025.09.3),
this will lead to verification failure.

The security advisory has been updated, but it's nonetheless worth an
addition to the migration guide.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - add same notice for v2025.09.3 as well
---
 .../migration-guides/migration-2025.09.3.rst  | 21 +++++++++++++++++++
 .../migration-guides/migration-2026.03.0.rst  | 19 +++++++++++++++++
 2 files changed, 40 insertions(+)
 create mode 100644 Documentation/migration-guides/migration-2025.09.3.rst

diff --git a/Documentation/migration-guides/migration-2025.09.3.rst b/Documentation/migration-guides/migration-2025.09.3.rst
new file mode 100644
index 000000000000..7fbea78a46d0
--- /dev/null
+++ b/Documentation/migration-guides/migration-2025.09.3.rst
@@ -0,0 +1,21 @@
+Release v2025.09.3
+==================
+
+FIT Images
+----------
+
+The fix for `CVE-2026-33243 <https://nvd.nist.gov/vuln/detail/CVE-2026-33243>`_
+has the side effect that barebox after v2026.03.0 will not boot a signed
+configuration that excludes some images from the signature.
+
+Previously, it was possible to generate readily exploitable FIT images
+by omitting them from ``sign-images`` in the ITS.
+
+If a FIT fails to boot with **v2026.03.1**, when it succesfully booted
+v2026.02.0 or earlier, it's likely that it was vulnerable even without
+knowledge of CVE-2026-33243.
+
+Recommendation is to not write FIT ITS manually, but to use higher level
+tooling that generates the ITS and feeds it to ``mkimage(1)``.
+
+For more details, refer to the `security advisory <https://github.com/barebox/barebox/security/advisories/GHSA-3fvj-q26p-j6h4>`_.
diff --git a/Documentation/migration-guides/migration-2026.03.0.rst b/Documentation/migration-guides/migration-2026.03.0.rst
index 1bd06ac7b743..f23001886b8b 100644
--- a/Documentation/migration-guides/migration-2026.03.0.rst
+++ b/Documentation/migration-guides/migration-2026.03.0.rst
@@ -8,3 +8,22 @@ On NXP i.MX8MP the SoC UID was read out wrong. It really is 128bit from which
 barebox only read 64bit. barebox now does it correctly, but rolled out devices
 might depend on the SoC UID being constant. In that case
 CONFIG_ARCH_IMX8MP_KEEP_COMPATIBLE_SOC_UID should be enabled.
+
+FIT Images
+----------
+
+The fix for `CVE-2026-33243 <https://nvd.nist.gov/vuln/detail/CVE-2026-33243>`_
+has the side effect that barebox after v2026.03.0 will not boot a signed
+configuration that excludes some images from the signature.
+
+Previously, it was possible to generate readily exploitable FIT images
+by omitting them from ``sign-images`` in the ITS.
+
+If a FIT fails to boot with **v2026.03.1**, when it succesfully booted
+v2026.02.0 or earlier, it's likely that it was vulnerable even without
+knowledge of CVE-2026-33243.
+
+Recommendation is to not write FIT ITS manually, but to use higher level
+tooling that generates the ITS and feeds it to ``mkimage(1)``.
+
+For more details, refer to the `security advisory <https://github.com/barebox/barebox/security/advisories/GHSA-3fvj-q26p-j6h4>`_.
-- 
2.47.3



