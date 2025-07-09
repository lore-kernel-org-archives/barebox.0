Delivery-date: Wed, 09 Jul 2025 14:08:20 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uZTb2-00Fh96-1n
	for lore@lore.pengutronix.de;
	Wed, 09 Jul 2025 14:08:20 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uZTb1-0001IN-EH
	for lore@pengutronix.de; Wed, 09 Jul 2025 14:08:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=sVp9OoPdVwLHCr8nO1XPo1LanYeceIk16PodoH3RIhc=; b=hba0IO5KjUmCJBX2TaMhksNDj1
	MkKB90HRB3+Mk1yfNc11jk+hO3QyDOJva7qFsB125sssOAGpgGmZltnr+Ans2kblLzeuN0xlIftQs
	uWMxjxFrmzYYAYraRwyghIut+uY7X5MVot2b+fWjoENSvhuZUsvCVhO05wK9/m+JpWXyi5HL1sBPd
	DavL6NFRcxq2/WMOU3jN3fw0IQCEERySwtLJeKTilM7RspHErRpU84b1SR/f/JDqMWipcmdRT2K02
	KDeiD+s8fmbV7j5GRzPswqmgwFhwkiyAJrIGXpfmgx14TqiiL4EZAvz/PfYQOMxWtcKMm3BmJ3LHB
	sWEzwUXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZTac-00000008aOD-3wOS;
	Wed, 09 Jul 2025 12:07:54 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZRt5-00000008HmK-1af8
	for barebox@lists.infradead.org;
	Wed, 09 Jul 2025 10:18:52 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uZRt4-00044u-2b; Wed, 09 Jul 2025 12:18:50 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uZRt3-007ZCM-2t;
	Wed, 09 Jul 2025 12:18:49 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uZRt3-00Gx1j-0w;
	Wed, 09 Jul 2025 12:18:49 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  9 Jul 2025 12:18:48 +0200
Message-Id: <20250709101848.4039929-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250709101848.4039929-1-a.fatoum@pengutronix.de>
References: <20250709101848.4039929-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250709_031851_414002_D5A67E50 
X-CRM114-Status: GOOD (  10.45  )
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
Subject: [PATCH 2/2] hardening: update text after addition of CONFIG_ARM_MMU_PERMISSIONS
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Until we have wired CONFIG_MEMORY_ATTRIBUTES with CONFIG_ARM_MMU_PERMISSIONS,
add a notice to the help text about it.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 lib/Kconfig.hardening | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/lib/Kconfig.hardening b/lib/Kconfig.hardening
index 53bf4d5bb956..d9f6909eca51 100644
--- a/lib/Kconfig.hardening
+++ b/lib/Kconfig.hardening
@@ -261,8 +261,9 @@ config MEMORY_ATTRIBUTES
 	bool "record memory attributes" if EXPERIMENTAL
 	help
 	  Tag all SDRAM memory region requests with type and attributes.
-	  This is currently not acted upon, but protections (e.g. read-only)
-	  will in future be enforced by the MMU.
+	  This is currently independent from ARM_MMU_PERMISSIONS, but protections
+	  (e.g. read-only) may in future be enforced by the MMU in addition
+	  to the protections already in-place.
 
 endmenu
 
-- 
2.39.5



