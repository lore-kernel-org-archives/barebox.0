Delivery-date: Wed, 11 Sep 2024 10:24:41 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1soIeX-003QH0-1N
	for lore@lore.pengutronix.de;
	Wed, 11 Sep 2024 10:24:41 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1soIeW-0001Uh-8v
	for lore@pengutronix.de; Wed, 11 Sep 2024 10:24:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=pteW5c4Kq9tilj1wvGSIKiI1HgZ5te7FM3Jpv37Zrls=; b=rZJC4qpJw4kd5up1C7tFwimOMI
	pDwDOoHbG7bbGasDyp9CgckIk1goMJrtIWzrBXmX+ywQRu6Ghz1MCzs+0WcGXRkn9ncLKNiYpJJyP
	OAlg+ju+Ppja3T/cY0TNXnN+UxaprtQ9RQ7sopj/w1hQWcABNKpZ/Q/bjSrhPP+3C+WJG1GbXNARO
	v1CSjhOX+0PAZTd7d4o3g79Xx/3iANJlHvsZkhGU8Bywxs1gYLlfENuDT1g7itbxJrcLRcej44U2r
	OMt9YPTBl4n6dirfvEm8fS5rFLEqdwuixYdo503wNQFdftwnozP/AvKgnodFlDRz24DiXYyj/vWEa
	tMpXKYUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soIdz-00000008d2h-4Bn4;
	Wed, 11 Sep 2024 08:24:08 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soIXu-00000008bIn-0DLV
	for barebox@lists.infradead.org;
	Wed, 11 Sep 2024 08:17:51 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1soIXs-0006mq-PR; Wed, 11 Sep 2024 10:17:48 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1soIXs-0075kR-CH; Wed, 11 Sep 2024 10:17:48 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1soIXr-006Piu-2e;
	Wed, 11 Sep 2024 10:17:48 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 11 Sep 2024 10:17:46 +0200
Message-Id: <20240911081747.1523613-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240911081747.1523613-1-a.fatoum@pengutronix.de>
References: <20240911081747.1523613-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240911_011750_109392_21E3E90E 
X-CRM114-Status: GOOD (  11.31  )
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
Subject: [PATCH 2/3] ARM: rpi: always add built-in env
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The function loads both the built-in env and the barebox.env file on the
SD-Card's boot partition. Failure to mount the SD-Card should still
result in the built-in env being loaded, therefore move it to the start
of the function.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/boards/raspberry-pi/rpi-common.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boards/raspberry-pi/rpi-common.c b/arch/arm/boards/raspberry-pi/rpi-common.c
index ee0b0f63dbef..7a3911e36fa1 100644
--- a/arch/arm/boards/raspberry-pi/rpi-common.c
+++ b/arch/arm/boards/raspberry-pi/rpi-common.c
@@ -196,6 +196,8 @@ static int rpi_env_init(void)
 	const char *diskdev;
 	int ret;
 
+	defaultenv_append_directory(defaultenv_rpi);
+
 	device_detect_by_name("mci0");
 	device_detect_by_name("mci1");
 
@@ -218,8 +220,6 @@ static int rpi_env_init(void)
 		return 0;
 	}
 
-	defaultenv_append_directory(defaultenv_rpi);
-
 	default_environment_path_set("/boot/barebox.env");
 
 	return 0;
-- 
2.39.2



