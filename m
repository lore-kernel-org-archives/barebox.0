Delivery-date: Tue, 23 Jan 2024 14:15:59 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rSGdB-00DU1H-2K
	for lore@lore.pengutronix.de;
	Tue, 23 Jan 2024 14:15:58 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rSGdC-00017f-EU
	for lore@pengutronix.de; Tue, 23 Jan 2024 14:15:58 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=rNSq1sHh3HtOpcMNMw8AXWN5fpN9Bj/UUEVn+evHAw8=; b=4GY0rTevVJ6S6vzVyOxFAtkgB/
	+ZJYk+KfTnEFB2QK6NQ4WaVy2fMZb0mYdh5dRcu3O+qqfBVnHtObNkozS54Asj8COxotK0MNI6xxj
	QyioQxq03FfhHfkVyl26bOCaN1EgihYJKHm2sd8wam1Y91iNONzAc57StAhgSEn3o4zIj+f42GSnM
	1/gBZ9eJXIJLYLnyMjZK21BN92yjtDGeasv09d/OheeSO8VMzUDncQpPrGZkbdaCmbQX62RYw94WQ
	2Ol+DwDUZv8jbJ9MpB4fUudbzdXkTE35/sMsqZdr5b2ZsaO26i2SniZskIwDzfbAVDrD9oSetGRC7
	jsldcyfg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rSGby-00GYT7-1w;
	Tue, 23 Jan 2024 13:14:42 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rSGbv-00GYRl-1G
	for barebox@lists.infradead.org;
	Tue, 23 Jan 2024 13:14:40 +0000
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <bst@pengutronix.de>)
	id 1rSGbs-0000zx-Mi; Tue, 23 Jan 2024 14:14:36 +0100
From: Bastian Krause <bst@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Bastian Krause <bst@pengutronix.de>
Date: Tue, 23 Jan 2024 14:14:33 +0100
Message-Id: <20240123131433.3825978-1-bst@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240123_051439_427747_9B7508A5 
X-CRM114-Status: UNSURE (   8.57  )
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
X-Spam-Status: No, score=-5.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] Documentation: usb: document bbu fastboot partition name
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

After looking this up the nth time in the code base, it's really time to
document this.

Signed-off-by: Bastian Krause <bst@pengutronix.de>
---
 Documentation/user/usb.rst | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/Documentation/user/usb.rst b/Documentation/user/usb.rst
index 95d6dd7e363..92fe1234645 100644
--- a/Documentation/user/usb.rst
+++ b/Documentation/user/usb.rst
@@ -168,7 +168,8 @@ The Fastboot gadget supports the following commands:
 ``fastboot flash`` additionally supports image types UBI and Barebox. For UBI
 Images and a MTD device as target, ubiformat is called. For a Barebox image
 with an available barebox update handler for the fastboot exported device, the
-barebox_update is called.
+barebox_update is called (exported as ``bbu-<update_handler_name>`` fastboot
+partition).
 
 The barebox Fastboot gadget supports the following non standard extensions:
 
-- 
2.39.2



