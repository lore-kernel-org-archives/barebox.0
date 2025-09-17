Delivery-date: Wed, 17 Sep 2025 15:54:06 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uysbm-0045lQ-1j
	for lore@lore.pengutronix.de;
	Wed, 17 Sep 2025 15:54:06 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uysbk-0006X7-P6
	for lore@pengutronix.de; Wed, 17 Sep 2025 15:54:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=lFxwp1/rrW3LS1YdukBdpRwOzFptgYKFMqEMu12k8T8=; b=NyRganTwXi+Lk3MMKY4SE5UMbh
	b1zZ5c5PoSPqMNSXIpIbLhryHsSaZS8mHBmaBY2lHx7uOUp6pPFVduU3tdo65J9l7I3HynH9Up3GW
	pPV4WWBXwr/CSsZTe4aK5UEg0i/uSB894CZhG4jiM3kui8x/wLo+aL4j0yy0kL1DLqVdnW5GhNQQx
	KeUliLAseIDpPe7DvxKAgXLh/e1GUIt9t1JKaRlm5Wp28nuuNeVscUxDKkyCr5ZunmmF12kMcOCm6
	SQlX0uVo7DVMWdOVh3r53V3NZFPwiryEyjM4oYM4mpqv6xkCss4bjrngDeRN/7XHIu1JVnMYVxTj1
	D06f9P3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uysbN-0000000Bsqb-1zIR;
	Wed, 17 Sep 2025 13:53:41 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uysbK-0000000Bsla-3wcZ
	for barebox@lists.infradead.org;
	Wed, 17 Sep 2025 13:53:40 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uysbB-0006AU-5T; Wed, 17 Sep 2025 15:53:29 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uysbA-001luM-2X;
	Wed, 17 Sep 2025 15:53:28 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uysbA-0000000CZtI-2rTK;
	Wed, 17 Sep 2025 15:53:28 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 17 Sep 2025 15:53:21 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250917-security-policies-v2-1-f30769a3ff51@pengutronix.de>
References: <20250917-security-policies-v2-0-f30769a3ff51@pengutronix.de>
In-Reply-To: <20250917-security-policies-v2-0-f30769a3ff51@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758117208; l=895;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=+zCUFLbd3bXpfBjFPLd2aU5iBQCZvbO3DUMjLJlv2mY=;
 b=rnrTOe8eCgJvFuIOvGPA2J2AX5cX3Qe65IGLFpBaNr27sI5ntujfm5UuUl0l1h0j38su+4Z/g
 UXgTxReWJtmBI1yVthSPhm/h+Up40nW8sGT7Btzw4KZM4aqechyNRSL
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250917_065338_984013_AD6ABFD9 
X-CRM114-Status: UNSURE (   9.21  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 01/24] kconfig: allow setting CONFIG_ from the outside
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Ahmad Fatoum <a.fatoum@pengutronix.de>

Regular config options apply build-wide. Security config options will
be enabled depending on the policy that's currently active.

To allow using an SCONFIG_ prefix for the latter, introduce
KCONFIG_CONFIG_ to affect this.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 scripts/kconfig/Makefile | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/scripts/kconfig/Makefile b/scripts/kconfig/Makefile
index 5a215880b2688c2ffadd3248410ee29cf19c510c..c4dbdf9abfc7262ec75163a11be432dedbaedfeb 100644
--- a/scripts/kconfig/Makefile
+++ b/scripts/kconfig/Makefile
@@ -29,6 +29,9 @@ KCONFIG_DEFCONFIG_LIST += arch/$(SRCARCH)/configs/$(KBUILD_DEFCONFIG)
 
 # We need this, in case the user has it in its environment
 unexport CONFIG_
+ifdef KCONFIG_CONFIG_
+export CONFIG_=$(KCONFIG_CONFIG_)
+endif
 
 config-prog	:= conf
 menuconfig-prog	:= mconf

-- 
2.47.3



