Delivery-date: Mon, 19 Feb 2024 18:21:55 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rc7L1-00ExUl-1M
	for lore@lore.pengutronix.de;
	Mon, 19 Feb 2024 18:21:55 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rc7L0-0003wP-Qz
	for lore@pengutronix.de; Mon, 19 Feb 2024 18:21:55 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=+RBLMSOeno9Ye1QUzUOV1piNPqSkjrpdqizBXIsqTUM=; b=OFJ+o4AtuIrZ622WEXa/oZOmXj
	77pOTwmjPLyhUjH2l0IkvhmP85kifSvftpuKPQsTeOwupPu0rso2htFsXOzb8gpB265p0tzGrnQTd
	aGNH00GZFo4bRBocRcQNr4wFjGvVvz6Aobxh38H/vXudkEn+nvlccieUvCQz/B4ANvhu/EDlEQTXI
	idoqM8VzAaz096+aBfkWx+lYfqYXwT83EX6KX93SyhR1hjp1x0sROQA4mojtyCByT5I4HXOQtkxFj
	6wrU9UeZkK5VEMcaY8tM0vtVaGshgEbKDnmhYxoATSfYrcTcsyqMogxhedeDoT97fKYgS425sRpji
	3Iht7VMA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rc7KN-0000000BUq2-3eHD;
	Mon, 19 Feb 2024 17:21:15 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rc7KK-0000000BUo9-2dBy
	for barebox@lists.infradead.org;
	Mon, 19 Feb 2024 17:21:14 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rc7KI-0003VS-Hh; Mon, 19 Feb 2024 18:21:10 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rc7KI-001gzj-5H; Mon, 19 Feb 2024 18:21:10 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rc7KI-00FrfX-0D;
	Mon, 19 Feb 2024 18:21:10 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 19 Feb 2024 18:21:08 +0100
Message-Id: <20240219172108.3780861-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240219_092112_683231_75A6938D 
X-CRM114-Status: GOOD (  10.34  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] usb: core: replace calls to strerror with %pe format specifier
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

printf(), and by extension dev_err(), already has built-in support for
formatting error codes, so make use of that instead of manual use of
strerror().

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/usb/core/usb.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/usb/core/usb.c b/drivers/usb/core/usb.c
index 62d9f11146a9..614527fecbf3 100644
--- a/drivers/usb/core/usb.c
+++ b/drivers/usb/core/usb.c
@@ -477,8 +477,8 @@ int usb_new_device(struct usb_device *dev)
 	/* we set the default configuration here */
 	err = usb_set_configuration(dev, dev->config.desc.bConfigurationValue);
 	if (err) {
-		dev_err(&dev->dev, "Setting default configuration failed with: %s\n" \
-			"len %d, status %lX\n", strerror(-err),
+		dev_err(&dev->dev, "Setting default configuration failed with: %pe\n" \
+			"len %d, status %lX\n", ERR_PTR(err),
 		       dev->act_len, dev->status);
 		goto err_out;
 	}
@@ -502,7 +502,7 @@ int usb_new_device(struct usb_device *dev)
 
 	err = register_device(&dev->dev);
 	if (err) {
-		dev_err(&dev->dev, "Failed to register device: %s\n", strerror(-err));
+		dev_err(&dev->dev, "Failed to register device: %pe\n", ERR_PTR(err));
 		goto err_out;
 	}
 
-- 
2.39.2



