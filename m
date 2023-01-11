Delivery-date: Wed, 11 Jan 2023 09:01:37 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFW3F-008dkp-SE
	for lore@lore.pengutronix.de; Wed, 11 Jan 2023 09:01:37 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFW3C-0008QF-Ri
	for lore@pengutronix.de; Wed, 11 Jan 2023 09:01:36 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=t3l3TfTGVLJKi+jCCid64rbzWFl2OCkF7guOX8otakM=; b=GbPkXqU6O+2V9dh4CjT7R0EkZN
	07cNdo9BwHCOeKYZLIgPQZWrBefEVnalVTNk9y/SzC6HtpL2BNm6fIhW76hHk5CbEvcQie/LKoD5m
	0X/tavAF76cFD+vhPpmikhWpPH/T3clH1cRtRz1xmhvxYAkrhAUHRGdyamT/+kQq5fCh9kUhu1zgj
	IDIkPgTu2ae+6EA0Y2i6iO5kjRk0yegPsf6jSENPU3nuvuEnH/nnCfyi0cmQQSpbE3aKT4gTHeZiO
	+EwIoBz1YqxgHQiBsTEmZx4k3v7xyDwHMFxVzdzyhcAnHMkf+lFdRqNhB+LlCcugIIju8XdpNRumX
	lMJH/YsA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFW1p-00ADdU-55; Wed, 11 Jan 2023 08:00:09 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFW1T-00ADTL-OG
	for barebox@lists.infradead.org; Wed, 11 Jan 2023 07:59:50 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pFW1S-0007Y1-BI; Wed, 11 Jan 2023 08:59:46 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pFW1R-005FcE-Lv; Wed, 11 Jan 2023 08:59:45 +0100
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pFW1Q-003uWX-Gy; Wed, 11 Jan 2023 08:59:44 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 11 Jan 2023 08:59:39 +0100
Message-Id: <20230111075940.922817-7-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230111075940.922817-1-a.fatoum@pengutronix.de>
References: <20230111075940.922817-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230110_235947_879671_5355F2E4 
X-CRM114-Status: GOOD (  13.00  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 6/7] common: add new CONFIG_HAVE_OPTEE symbol
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We have two methods of loading a trusted OS: The legacy, but generic,
way of doing it in barebox proper during bootm and the new way of doing
it in prebootloader to reduce attack surface as much as possible by
running barebox proper completely in normal world.

Add a new CONFIG_HAVE_OPTEE symbol that is selected in both cases, so
code can use just that instead of checking for both.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/Kconfig | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/common/Kconfig b/common/Kconfig
index 46675dfe2ea7..9e175d36c43e 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -1119,11 +1119,14 @@ config EXTERNAL_DTS_FRAGMENTS
 
 menu "OP-TEE loading"
 
+config HAVE_OPTEE
+	bool
+
 config OPTEE_SIZE
 	hex
 	default 0x02000000
 	prompt "OP-TEE Memory Size"
-	depends on BOOTM_OPTEE || PBL_OPTEE
+	depends on HAVE_OPTEE
 	help
 	  Size to reserve in main memory for OP-TEE.
 	  Can be smaller than the actual size used by OP-TEE, this is used to prevent
@@ -1133,6 +1136,7 @@ config BOOTM_OPTEE
 	bool
 	prompt "support booting OP-TEE"
 	depends on BOOTM && ARM
+	select HAVE_OPTEE
 	help
 	  OP-TEE is a trusted execution environment (TEE). With this option
 	  enabled barebox supports starting optee_os as part of the bootm command.
@@ -1144,6 +1148,7 @@ config PBL_OPTEE
 	bool "Enable OP-TEE early start"
 	depends on ARM
 	depends on !THUMB2_BAREBOX
+	select HAVE_OPTEE
 	help
 	  Allows starting OP-TEE during lowlevel initialization of the PBL.
 	  Requires explicit support in the board's lowlevel file.
-- 
2.30.2



