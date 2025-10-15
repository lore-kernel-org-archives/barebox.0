Delivery-date: Wed, 15 Oct 2025 11:10:32 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v8xWi-0082c8-08
	for lore@lore.pengutronix.de;
	Wed, 15 Oct 2025 11:10:32 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v8xWh-0005Tx-Gs
	for lore@pengutronix.de; Wed, 15 Oct 2025 11:10:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=KQLQGmhkbkDj12IFIBMr7aqd74MKG/eKjTDXA5UUh+E=; b=ZiTPcEkSfeqMDT/xPeHR2Uq0Oa
	ZlRqQMCkqyai44QT+dUtr0CRv3SztgL4a7UbOwOkf2W7OMaO/eGffIZTPBCVc1ZpNi2fw0XvFhQWw
	7+cMWPArPX+wKeVyb6NBNueFpKgA9QSx3I3PpMPSbH1EiWz2NoHD+TlUD1bFzpZ89Dk358flHZnad
	iHqne8r7bKTKoDVx256Lb9JGpXpBTajbPqZOkqBxtEEdnILWPzib/ch4RPPdExgwHjXNIhrDLFzV9
	WI1II3Sak1XQhnnEvZlPvIG5fqfzQ+SBEwx1LHf44rZdZ4dNAYoU+QQqx2hgYef758MHPDr4+zIpv
	VsAuYkUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8xWF-000000013av-0SHQ;
	Wed, 15 Oct 2025 09:10:03 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8xWC-000000013ZL-124k
	for barebox@lists.infradead.org;
	Wed, 15 Oct 2025 09:10:01 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1v8xW9-0005L8-5t; Wed, 15 Oct 2025 11:09:57 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1v8xW9-003hUt-00;
	Wed, 15 Oct 2025 11:09:57 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1v8xW8-00000009e43-3mwZ;
	Wed, 15 Oct 2025 11:09:56 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Jonas Rebmann <jre@pengutronix.de>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 15 Oct 2025 11:09:33 +0200
Message-ID: <20251015090956.2298649-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251015_021000_280031_695CC9DE 
X-CRM114-Status: UNSURE (   9.63  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH master] security: hide CRYPTO_BUILTIN_DEVELOPMENT_KEYS behind INSECURE
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

CONFIG_HAS_INSECURE_DEFAULTS is meant for options that may be insecure
by default and need extra care when used in secure deployments.

CONFIG_CRYPTO_BUILTIN_DEVELOPMENT_KEYS can't be used in a secure manner
at all and the help text spells it out, so it's more appropriate to have
it explicitly depending on INSECURE.

Cc: Jonas Rebmann <jre@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 security/Kconfig | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/security/Kconfig b/security/Kconfig
index 7ac92e4af760..40d468ae07d2 100644
--- a/security/Kconfig
+++ b/security/Kconfig
@@ -16,6 +16,7 @@ config INSECURE
 	  This option is a moving target. Currently it:
 
 	    - changes the default of global.env.autoprobe to 1
+	    - allows enablement of CRYPTO_BUILTIN_DEVELOPMENT_KEYS
 
 source "security/Kconfig.policy"
 
@@ -79,7 +80,7 @@ endchoice
 endif
 
 config CRYPTO_BUILTIN_DEVELOPMENT_KEYS
-	select HAS_INSECURE_DEFAULTS
+	depends on INSECURE
 	depends on CRYPTO_BUILTIN_KEYS
 	bool "Include development keys in build"
 	help
-- 
2.47.3



