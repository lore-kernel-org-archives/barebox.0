Delivery-date: Thu, 16 Apr 2026 17:32:04 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wDOhI-00CroL-05
	for lore@lore.pengutronix.de;
	Thu, 16 Apr 2026 17:32:04 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wDOhH-0001bY-EX
	for lore@pengutronix.de; Thu, 16 Apr 2026 17:32:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=PxKAlHYlH86GEMHnNSSLPgmwsFgVzqX9UXd4UJERFjs=; b=HPhOpeZWaBVa5xaS8eQGh9E1+f
	0TS4QfJqBsOMhTpUALc4JmXsxPon4X7ce6dIIINRGYDAGGTCeQ8gkX+9zu3IGbkk70g+TewHoCFLj
	eGEmTGnuqHlDeQ2rEBh5KybJZ4sC+Wfz89rwGgQqPMFwgAnNUxe2tHQnn0zgQEGtR/FxhT8hwHHyb
	wwe40FF9tIPlsEHIP3Zl9veRET1YIlWBD56wEz5k50fkTz/8u+CUJe9eHA3CTq/stE6IPjshN4fF0
	ykKjepNCmOeHwcPIAMEzssV8f9R92iN0hKGBibak70x6YT0pSCRkuueaY8fWp+RbzSsaS75AkTBEh
	aTNFNyEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDOgn-00000002csd-1B1v;
	Thu, 16 Apr 2026 15:31:33 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDOgk-00000002csB-0E0S
	for barebox@lists.infradead.org;
	Thu, 16 Apr 2026 15:31:31 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wDOgi-0001S6-5X; Thu, 16 Apr 2026 17:31:28 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wDOgh-005hjl-3B;
	Thu, 16 Apr 2026 17:31:27 +0200
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wDOgh-0000000B0Nl-3kd8;
	Thu, 16 Apr 2026 17:31:27 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 16 Apr 2026 17:31:25 +0200
Message-ID: <20260416153126.2623039-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260416_083130_092770_BE282B23 
X-CRM114-Status: UNSURE (   9.26  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] Documentation: migration-guides: mention possible FIT compat break
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

With manually written ITS, it's easy to omit signing some of the images.
This flew under the radar so far, but with v2026.03.0, this will lead to
verification failure.

The security advisory has been updated, but it's nonetheless worth an
addition to the migration guide.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 .../migration-guides/migration-2026.03.0.rst  | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

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



