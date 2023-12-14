Delivery-date: Thu, 14 Dec 2023 16:19:09 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rDnUS-0030ih-37
	for lore@lore.pengutronix.de;
	Thu, 14 Dec 2023 16:19:09 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rDnUT-00047N-6x
	for lore@pengutronix.de; Thu, 14 Dec 2023 16:19:09 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=fZmTB5pwmMLc34DlwwmuUz/I4JcNs1G6i9zIQHQXXow=; b=oM/UxrclIyKwSMG9U3Zia4hBKg
	6pQT+GcVhRYnTYRMFmjpn9zw4OMLo4ZjX3VUi8FZ5mBwdWROmly5Ohj6ZG8rMPSuKtoTwlWlBaKHp
	9IZYnXBt682uDn0hiNJShg353YlHxZKwxAxT4uLQzDcG9cICFAPNGZqXnCXUfMcypAY6dthW1XfnT
	YfJHGCPCx8ccPSh0hzVYs4hTAlrBwR+uMF7mkYT9hPPpphMAAU02iZb/e6oQ390AO2ZTG1VMpH6vl
	pVINbdpeYouhYKIoI9umR9aqFyXuuOcxnR33OhiYgUNK67uTFYgliUtl8glb1hApOQPZ60Zyavi9g
	lQhRH83Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rDnTX-000ehi-1l;
	Thu, 14 Dec 2023 15:18:11 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rDnTU-000egY-0V
	for barebox@lists.infradead.org;
	Thu, 14 Dec 2023 15:18:09 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rDnTS-00033N-S0; Thu, 14 Dec 2023 16:18:06 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rDnTS-00Fphf-FU; Thu, 14 Dec 2023 16:18:06 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rDnTS-006x67-1I;
	Thu, 14 Dec 2023 16:18:06 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 14 Dec 2023 16:18:05 +0100
Message-Id: <20231214151805.1657124-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231214151805.1657124-1-a.fatoum@pengutronix.de>
References: <20231214151805.1657124-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231214_071808_215995_5650DEDD 
X-CRM114-Status: GOOD (  12.33  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 3/3] ARM: rpi: look for env in mmc0 as well
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Raspberry Pi Compute Module 4S device tree has a DT alias for the eMMC,
which makes it mmc0. Use that as a fallback, so environment and /boot
mount is correct there as well.

There is no upstream device tree for this S-variant yet, but it's already
bootable when barebox is passed the device tree by the VideoCore.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/boards/raspberry-pi/rpi-common.c | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boards/raspberry-pi/rpi-common.c b/arch/arm/boards/raspberry-pi/rpi-common.c
index f3a28e87c6f0..abee5ffcdbee 100644
--- a/arch/arm/boards/raspberry-pi/rpi-common.c
+++ b/arch/arm/boards/raspberry-pi/rpi-common.c
@@ -188,14 +188,20 @@ mem_initcall(rpi_mem_init);
 static int rpi_env_init(void)
 {
 	struct stat s;
-	const char *diskdev = "/dev/disk0.0";
+	const char *diskdev;
 	int ret;
 
 	device_detect_by_name("mci0");
 
+	diskdev = "/dev/disk0.0";
 	ret = stat(diskdev, &s);
 	if (ret) {
-		printf("no %s. using default env\n", diskdev);
+		device_detect_by_name("mmc0");
+		diskdev = "/dev/mmc0.0";
+		ret = stat(diskdev, &s);
+	}
+	if (ret) {
+		printf("no /dev/disk0.0 or /dev/mmc0.0. using default env\n");
 		return 0;
 	}
 
-- 
2.39.2



