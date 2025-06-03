Delivery-date: Tue, 03 Jun 2025 12:59:54 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uMPN4-003HYl-1p
	for lore@lore.pengutronix.de;
	Tue, 03 Jun 2025 12:59:54 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uMPN4-0006jG-0Z
	for lore@pengutronix.de; Tue, 03 Jun 2025 12:59:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=58sYr5jXjD6yJrMndUAtZAQ3d3oA5df1lhX6BV8TuQ4=; b=MKLBnbFIp1bACPxnXiPHxlEYGQ
	MsD5zL781Smy+l0d8c8yQ6Hb+3eOqi1KG3iat+VTiIes+cjVI0csAY/KAq7nYCIA8c77n7PPJheA7
	Ywf0sckdcq7pqIKUCIvXgCfJPdSUCb8wBYe2tpXWbUec4BcLyueUWPnaBYVPUReeRRmJs6dJTsuaa
	BnpAvryvbNMQcyfF1gKpyGkd9K5xl1dlmklz6SsTZ1Tvp1d9BiwTCm/Lny9ivrH3wS7AzbncKjVid
	TwfgIpBMyXRL4AoeKpvKOMdmloyDi/JjHagcILctdNZW244/D8U+nsOCLm2+BAMGq6IDqpFpJvnqW
	nYQKt8wQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uMPMa-0000000AjYY-0ohk;
	Tue, 03 Jun 2025 10:59:24 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uMPMW-0000000AjXf-3qYt
	for barebox@lists.infradead.org;
	Tue, 03 Jun 2025 10:59:22 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uMPMU-0006L4-Bj; Tue, 03 Jun 2025 12:59:18 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uMPMS-001bmp-1U;
	Tue, 03 Jun 2025 12:59:16 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uMPMS-00CwQe-18;
	Tue, 03 Jun 2025 12:59:16 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>,
	Fabian Pflug <fpg@pengutronix.de>
Date: Tue,  3 Jun 2025 12:59:14 +0200
Message-Id: <20250603105914.3068724-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250603_035920_954550_32F9A05E 
X-CRM114-Status: GOOD (  13.46  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] common: optee: improve documentation of options
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

CONFIG_OPTEE_SIZE and CONFIG_OPTEE_SHM_SIZE have a correspondence to OP-TEE
build config options, so point that out in the help text.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
Cc: Fabian Pflug <fpg@pengutronix.de>
---
 common/Kconfig | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/common/Kconfig b/common/Kconfig
index fe50da8f3084..987148847eac 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -1304,9 +1304,11 @@ config OPTEE_SIZE
 	prompt "OP-TEE Memory Size"
 	depends on HAVE_OPTEE
 	help
-	  Size to reserve in main memory for OP-TEE.
+	  Size to reserve in main memory for OP-TEE, including its shared memory.
 	  Can be larger than the actual size used by OP-TEE, this is used to prevent
 	  barebox from using or speculating into this area.
+	  On i.MX, this should be at least OP-TEE CFG_TZDRAM + CFG_SHMEM_SIZE.
+	  The name of the CFG_ options may differ on other platforms.
 
 config OPTEE_SHM_SIZE
 	hex
@@ -1315,7 +1317,11 @@ config OPTEE_SHM_SIZE
 	depends on HAVE_OPTEE
 	help
 	  Size to reserve in main memory for static OP-TEE shared memory
-	  communication. Can be used for fixing up the OP-TEE OF node.
+	  communication. The OP-TEE shared memory starts directly after
+	  the OPTEE TZDRAM region. It should be chosen to be equivalent
+	  to CFG_SHMEM_SIZE in OP-TEE.
+
+	  This value can be used for fixing up the OP-TEE OF node.
 
 	  A shared memory size of 0 means that only dynamic shared memory
 	  will be supported for communication with OP-TEE. This is the only
-- 
2.39.5



