Delivery-date: Wed, 06 Mar 2024 20:40:03 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rhx7T-00BFG8-0N
	for lore@lore.pengutronix.de;
	Wed, 06 Mar 2024 20:40:03 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rhx7S-0006ks-HZ
	for lore@pengutronix.de; Wed, 06 Mar 2024 20:40:03 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=ti+L6JArk9VNqe2R/+9d/sCsHlrNRkeL67jhhXBQuT4=; b=ZP7ILjRJ292vhSCk/bOOBd31CR
	Iqu9heFXc4Mr/OFTLze9JF5JcD9kY0L9tAZKU/EdtPV3UPErMr7QzmZQ5BSdiokrnXkgkKXRcsn9K
	6xurusUw0eqmGpvHuqpwBIJjbm6xxzaOj1xOZ86oUXWsIwVSKAxbsPtEInUzDjunuF/672Nqq/1nn
	YEHFoc5vZ1P1PwWawViB4u7KOXLpX7BMvRc2T1w8xtTeRyz2UOxz8agZzIA39on0uZJbvaHaTr/iF
	WVVVzH+05WJ+GJ/HuX8n4AU3xokGvzunE3oU726TsLR7BYk4xX4Cat7BNsHl+D4Hn736nQtM8pr1a
	PTP0lY4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhx6v-00000001eeh-3xic;
	Wed, 06 Mar 2024 19:39:29 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhx6t-00000001eeA-0236
	for barebox@lists.infradead.org;
	Wed, 06 Mar 2024 19:39:28 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhx6r-0005zs-9J; Wed, 06 Mar 2024 20:39:25 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhx6q-004o22-Si; Wed, 06 Mar 2024 20:39:24 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhx6q-002zJU-0x;
	Wed, 06 Mar 2024 20:39:24 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  6 Mar 2024 20:39:24 +0100
Message-Id: <20240306193924.712323-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240306_113927_394200_07CA3803 
X-CRM114-Status: GOOD (  11.09  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] pbl: make PBL_FULLY_PIC specific to ARM64
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This has only been tested on ARM64 so far and quick test on a
Raspberry Pi 3 Model B in 32-bit mode hangs, so mark this
ARM64-specific for now.

CPU_64 implies ARM already, but we list both anyway for documentation
purposes.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 pbl/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/pbl/Kconfig b/pbl/Kconfig
index 669a49a530a2..d1877a988d21 100644
--- a/pbl/Kconfig
+++ b/pbl/Kconfig
@@ -48,7 +48,7 @@ config PBL_RELOCATABLE
 
 config PBL_FULLY_PIC
 	bool "fully position-independent pbl image"
-	depends on PBL_RELOCATABLE && ARM
+	depends on PBL_RELOCATABLE && ARM && CPU_64
 	help
 	  Compared to CONFIG_PBL_RELOCATABLE, this image has no relocations in
 	  the code sections.
-- 
2.39.2



