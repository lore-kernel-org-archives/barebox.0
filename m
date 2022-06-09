Delivery-date: Thu, 09 Jun 2022 13:18:53 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nzGBh-008hbL-G6
	for lore@lore.pengutronix.de; Thu, 09 Jun 2022 13:18:53 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nzGBf-0000w3-MY
	for lore@pengutronix.de; Thu, 09 Jun 2022 13:18:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0yJ1F551yPHp5ZFV3ZRHlhLGvOvhb7VP30YBRjFcpps=; b=ZHOAtLOqtJsJpl
	tByRdwKljAelLxlWaSrVV+a5s3wWypZJ1l3/A03jviws8618wKe2lZVQQyS56ny6/wqRS2y/81lMX
	QfOt/hmtmpzHEm3LIjMSHB72w/rJklynRk5rvrix17GlS7zL8WgWl4/cUQffM7Sd2CtF575vtvJZS
	C5zjmq22rXZQ2WVlRIl5elVDqdxGdo7lVeZvpqJsiCGmbSqhMRbuy6dn1Vy9i6y+KwfYrjz0UJRrg
	+uTaha7o/yVR4s4x4Hg+uBHYFSOQiyH9nE5trjUcDIG7Vov2Wa5abXdsIiechwXtVoEFXwRJ+SdYG
	/+6yBubSDn5EVvrXxEcQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzGA5-001Div-Ko; Thu, 09 Jun 2022 11:17:13 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzG9y-001Dfz-Va
	for barebox@lists.infradead.org; Thu, 09 Jun 2022 11:17:08 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1nzG9x-0000dW-PZ; Thu, 09 Jun 2022 13:17:05 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1nzG9y-007N0l-F8; Thu, 09 Jun 2022 13:17:05 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1nzG9w-00AI9w-9x; Thu, 09 Jun 2022 13:17:04 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu,  9 Jun 2022 13:17:03 +0200
Message-Id: <20220609111703.2446899-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220609111703.2446899-1-a.fatoum@pengutronix.de>
References: <20220609111703.2446899-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220609_041707_314532_99AE82CB 
X-CRM114-Status: GOOD (  12.16  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 2/2] fastboot: inform user if barebox update falls back to raw copy
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Fastboot will fall back to a raw copy even for bbu- partitions if
no barebox_update was found or if support isn't compiled in.

Coupled with eMMC boot partitions, this could lead to
`barebox_update -t mmc` updating the boot partition, while a
`fastboot flash bbu-mmc` will write the image to the user area instead.

It's worth telling the user when this happens, so add a status message.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - print message in case barebox_update handler is not found
---
 common/fastboot.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/common/fastboot.c b/common/fastboot.c
index 330a06f5a32f..24eddf1cc3a5 100644
--- a/common/fastboot.c
+++ b/common/fastboot.c
@@ -683,8 +683,14 @@ static void cb_flash(struct fastboot *fb, const char *cmd)
 		};
 
 		handler = bbu_find_handler_by_device(data.devicefile);
-		if (!handler)
+		if (!handler) {
+			fastboot_tx_print(fb, FASTBOOT_MSG_INFO,
+					  "No suitable barebox_update handler found");
+			fastboot_tx_print(fb, FASTBOOT_MSG_INFO,
+					  "Falling back to raw copy to %s", filename);
+
 			goto copy;
+		}
 
 		fastboot_tx_print(fb, FASTBOOT_MSG_INFO,
 				  "This is a barebox image...");
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

