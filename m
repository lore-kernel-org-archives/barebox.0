Delivery-date: Mon, 02 Jun 2025 16:57:53 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uM6bp-002zob-0w
	for lore@lore.pengutronix.de;
	Mon, 02 Jun 2025 16:57:53 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uM6bo-0001fQ-Oq
	for lore@pengutronix.de; Mon, 02 Jun 2025 16:57:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=7l7qalT33mKd+8qkUX+7rtdrmVI3f3UzR+2V61J4G2s=; b=Qjjytut7zGjbL4Uuzrd4nAqRKE
	39cbWFgKlbvTefqFU85yzCTOmi4hg/4LoHPMElnemFQZYaVeymRK/TWI4Agz2e26+egQIERW56pir
	9sV/Df7Z2iCz6OtGhEy62mArk/OhzbXx6jK+n5hcHdtXXXNiGjgYaAaFWJV17BJ2Nf4fwpFSIn1Ab
	DmGY/scflF4uRP0azS+TjRNFJcD057RYntvAFPp3lZ8EWyc1rY556//sqm7jjJNakx+G6B/M//Zxm
	p6/c8qSxdnGfuXK5eouO7ns0Bgbu6xFRAlj3H/Vl1/2Y6owq4/Z+mXyaobRhrJ6qngAnxrT0w+U6a
	gPOYeaTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uM6bL-00000007gcK-2bvl;
	Mon, 02 Jun 2025 14:57:23 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uM6ZQ-00000007gO3-1ziU
	for barebox@lists.infradead.org;
	Mon, 02 Jun 2025 14:55:25 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uM6ZO-0000Wp-TA; Mon, 02 Jun 2025 16:55:22 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uM6ZO-001TKP-2J;
	Mon, 02 Jun 2025 16:55:22 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uM6ZO-00Bkrv-1v;
	Mon, 02 Jun 2025 16:55:22 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>,
	Fabian Pflug <fpg@pengutronix.de>
Date: Mon,  2 Jun 2025 16:55:21 +0200
Message-Id: <20250602145521.2801745-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250602_075524_509974_7F2A103E 
X-CRM114-Status: GOOD (  12.41  )
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

CONFIG_OPTEE_SIZE and CONFIG_OPTEE_SHM_SIZE have a direct correspondence
to OP-TEE build config options, so point that out in the help text.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
Cc: Fabian Pflug <fpg@pengutronix.de>
---
 common/Kconfig | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/common/Kconfig b/common/Kconfig
index fe50da8f3084..12982b45c59d 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -1307,6 +1307,7 @@ config OPTEE_SIZE
 	  Size to reserve in main memory for OP-TEE.
 	  Can be larger than the actual size used by OP-TEE, this is used to prevent
 	  barebox from using or speculating into this area.
+	  This should be at least as big as CFG_TZDRAM_SIZE in OP-TEE.
 
 config OPTEE_SHM_SIZE
 	hex
@@ -1315,7 +1316,11 @@ config OPTEE_SHM_SIZE
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



