Delivery-date: Fri, 17 Apr 2026 11:29:12 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wDfVg-00D8qj-20
	for lore@lore.pengutronix.de;
	Fri, 17 Apr 2026 11:29:12 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wDfVf-0000mv-Uh
	for lore@pengutronix.de; Fri, 17 Apr 2026 11:29:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=+Pv2ox83rgWya6ogiaTGwUeZZ7r5NOHRIUky+92HSOY=; b=qlBsBjW6W8tdcb960QX3AIqZjO
	LIs9l9170wrRvs8RZohvsGhyzSYn5yAKg+xvXYLmGri0qOfP+v3YZDG/cfMQQyLOEHLV/YyNawl5s
	FTo3e7Inp2h6ozWE0EOHz4P3wMZJyKyWmsX9If9QX4oCOPWlPKuxEBtWQ/1aILv/DeEy+uUwQfweY
	RUIrXMbJvtLGIUxjYeDT7bd9TDK6UMxwnIwNjQr3ozAy29EEfDqG2ugtXZk4u8vcq1bbneXKpKrqL
	zE9bQLRncEvS5vDDOW7WVor/mqvxn27hvoUZZETy69w44IRN6nEbjKHZDcWPgjozAKyRnm2H6MO+I
	ghZt6G8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDfV6-00000003old-0kbd;
	Fri, 17 Apr 2026 09:28:36 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDfTY-00000003mh0-47D5
	for barebox@lists.infradead.org;
	Fri, 17 Apr 2026 09:27:08 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wDfTW-0008R0-Im; Fri, 17 Apr 2026 11:26:58 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wDfTW-005pD5-1F;
	Fri, 17 Apr 2026 11:26:58 +0200
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wDfTW-0000000G4Z5-1C3c;
	Fri, 17 Apr 2026 11:26:58 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 17 Apr 2026 11:26:26 +0200
Message-ID: <20260417092657.3830781-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260417_022701_155243_D1253604 
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
Subject: [PATCH v3] Documentation: migration-guides: mention possible FIT compat break
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

With manually written ITS, it's easy to omit signing some of the images.
This flew under the radar so far, but with v2026.03.0 (or v2025.09.3),
this will lead to verification failure.

The security advisory has been updated, but it's nonetheless worth an
addition to the migration guide.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v2 -> v3:
  - customize notice for v2025.09.3 (Sascha)
v1 -> v2:
  - add same notice for v2025.09.3 as well
---
 .../migration-guides/migration-2025.09.3.rst  | 21 +++++++++++++++++++
 .../migration-guides/migration-2026.03.0.rst  | 19 +++++++++++++++++
 2 files changed, 40 insertions(+)
 create mode 100644 Documentation/migration-guides/migration-2025.09.3.rst

diff --git a/Documentation/migration-guides/migration-2025.09.3.rst b/Documentation/migration-guides/migration-2025.09.3.rst
new file mode 100644
index 000000000000..5f87d1de6799
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
+has the side effect that barebox after v2025.09.3 will not boot a signed
+configuration that excludes some images from the signature.
+
+Previously, it was possible to generate readily exploitable FIT images
+by omitting them from ``sign-images`` in the ITS.
+
+If a FIT fails to boot with **v2025.09.3**, when it succesfully booted
+v2025.09.2 or earlier, it's likely that it was vulnerable even without
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



