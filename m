Delivery-date: Wed, 20 Aug 2025 16:05:43 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uojRf-002dej-2v
	for lore@lore.pengutronix.de;
	Wed, 20 Aug 2025 16:05:43 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uojRe-00015v-MI
	for lore@pengutronix.de; Wed, 20 Aug 2025 16:05:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=j2zNbmXLfDf0niqLS2dILU/9PZt4i5r/smJFoVOUF4w=; b=VCry3awawrtWfkKue4llfWWAqe
	opX4OZpOgGzX1I/npbf3/TiGG+rtz23dHSc9rERTOQ3yKPtMfbzXYYF+17wyp666ucVEMwEJ9z6b0
	4WSJ+Hr4xOzuDZe/0AbPlFSW0VuA1lwr2d6OlCjEf3PPMEtMpud5isYrlAsgDCnLyoFwxdPpatVZF
	HKVKQ6GiViNMq6A0zVrezFA+d3Lt0yimTLtOMyJlA60XcKHl90ofTUM5xWkfhbB2PmGyuCrOL5huf
	+ZSl7ZWSYAHy2RnQdS5qtCNmrFt9Hvp1hoFGYuHEg3dvDK/FTAbSJzbRXjitRM3yX4e0k8kCQwnEM
	bEJsAFcA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uojR3-0000000DvtJ-16Ch;
	Wed, 20 Aug 2025 14:05:05 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uoihM-0000000DjqQ-1V7I
	for barebox@lists.infradead.org;
	Wed, 20 Aug 2025 13:17:53 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uoihK-0000fr-PJ; Wed, 20 Aug 2025 15:17:50 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uoihK-001Fp4-1h;
	Wed, 20 Aug 2025 15:17:50 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uoihK-004jSI-1P;
	Wed, 20 Aug 2025 15:17:50 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 20 Aug 2025 15:17:45 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250820-security-policies-v1-1-76fde70fdbd8@pengutronix.de>
References: <20250820-security-policies-v1-0-76fde70fdbd8@pengutronix.de>
In-Reply-To: <20250820-security-policies-v1-0-76fde70fdbd8@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1755695870; l=895;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=/gUIMIY5+WEGVdX4U0D0O9qduBQ/0Y5PHpIALfxO07Q=;
 b=dPuuJroriDElvOezL3MNqR5pOEgRN4Bw90NSHCXZk6kUz7csfnRxi4rBNTnvPVICmSEUcCjnD
 EA8/mIJKm30CWNFKgZglr0zeXvh8wPFV1y2Yh662U+EgU5szUBJfVmK
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250820_061752_402616_99ACA1D0 
X-CRM114-Status: UNSURE (   9.10  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 01/24] kconfig: allow setting CONFIG_ from the outside
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
2.39.5



