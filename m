Delivery-date: Thu, 29 Sep 2022 12:06:46 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1odqRK-000Wxt-1s
	for lore@lore.pengutronix.de; Thu, 29 Sep 2022 12:06:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1odqRI-0003jr-Q9
	for lore@pengutronix.de; Thu, 29 Sep 2022 12:06:45 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=MP5eojQGX9razYZqvUV63yCx/Pgcfrdr8r6XBLw/6jc=; b=vNjeEefYDsq6GnwyJN/p42wtCf
	R602QEWaiHXL2cIHWD7FtJSpibeYpZ1vk15kim8TXDCeOm0SApTc475VD8x+iBtPWTBu0b7ad9imm
	6K+qdFJstmnFNtKDddhUhbQkA/Bn2uGeEV+EIqJ2j7RLmyNqd+Noc1Es7SieaAhTrUa0kI2xhr48+
	hmNz4TvH2MXbjW9Ko+zOm+wqWWdkL9jI48B6ZHB8VjujEn2FmlnKac/julhXc9Rwa8HD1kObBUVXw
	LLpC8RHQVkCQNe2vl2iIHFYhUAU5AIyko/YqBJdG1RV0pzpUqg5kGWYHyTv5Ut+BxZ+xvclJReYPF
	W+B0hKcQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odqPu-002Ip8-6t; Thu, 29 Sep 2022 10:05:18 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odqPo-002Ilf-1r
	for barebox@lists.infradead.org; Thu, 29 Sep 2022 10:05:13 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1odqPk-0003JI-DI; Thu, 29 Sep 2022 12:05:08 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1odqPl-003aak-7X; Thu, 29 Sep 2022 12:05:07 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1odqPj-003lWC-08; Thu, 29 Sep 2022 12:05:07 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 29 Sep 2022 12:05:02 +0200
Message-Id: <20220929100502.895553-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220929_030512_113412_E39AC26C 
X-CRM114-Status: GOOD (  12.32  )
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
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] usb: have usb_rescan return count of enumerated devices
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Some USB mass storage devices can take a comparatively long time after
vbus is applied until they can be enumerated. Board code can reissue
usb_rescan() to retry enumeration at a later time. It's useful for
board code to check whether any new devices have been detected by a
usb_rescan() call. To facilitate this, have usb_rescan() return the
number of devices found in addition to printing it to the log.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/usb/core/usb.c | 4 +++-
 include/usb/usb.h      | 2 +-
 2 files changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/usb/core/usb.c b/drivers/usb/core/usb.c
index 34a0f004f7bb..ed3a96cb9e5e 100644
--- a/drivers/usb/core/usb.c
+++ b/drivers/usb/core/usb.c
@@ -599,7 +599,7 @@ int usb_host_detect(struct usb_host *host)
 	return 0;
 }
 
-void usb_rescan(void)
+int usb_rescan(void)
 {
 	struct usb_host *host;
 	int ret;
@@ -613,6 +613,8 @@ void usb_rescan(void)
 	}
 
 	pr_info("%d USB Device(s) found\n", dev_count);
+
+	return dev_count;
 }
 
 /*-------------------------------------------------------------------
diff --git a/include/usb/usb.h b/include/usb/usb.h
index 39f475091617..04b433ba73ca 100644
--- a/include/usb/usb.h
+++ b/include/usb/usb.h
@@ -201,7 +201,7 @@ int usb_clear_halt(struct usb_device *dev, int pipe);
 int usb_string(struct usb_device *dev, int index, char *buf, size_t size);
 int usb_set_interface(struct usb_device *dev, int interface, int alternate);
 
-void usb_rescan(void);
+int usb_rescan(void);
 
 /* big endian -> little endian conversion */
 /* some CPUs are already little endian e.g. the ARM920T */
-- 
2.30.2



