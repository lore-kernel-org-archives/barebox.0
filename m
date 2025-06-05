Delivery-date: Thu, 05 Jun 2025 13:37:08 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uN8uC-003zgS-0r
	for lore@lore.pengutronix.de;
	Thu, 05 Jun 2025 13:37:08 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uN8u9-0000Qu-N1
	for lore@pengutronix.de; Thu, 05 Jun 2025 13:37:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=kvVxQ4zjY2Pe9Klwl9/BUqvXTY9KpRUUKknVmrfMCn0=; b=hOLrU0h86AmMaPG6m/rQ4aYqXM
	z4IenhlBJ7t7NKVitCrp6adPWcgsUsYrWRwddmi2NQHgq8Wq5dv1XAnAKiUApg28PS5RmSDlzobNF
	e11kzJtbk4qj70Ov7qCEYd9F3byNjbqPHIHlGG97HesSOc6sbHGUgQDmOoYJslIfKL6XGriKBdy9x
	GyEcyRj9eIB3a/mqxykZbpf00Ps0IQC45ZW9+8vzvJkxOcooPgUy64kox1RaxHDM4j6UepQKtcb0O
	hqxw/eJ9gEY8Su7oEE8/kCkQlPfFTb0iAH0wn/i/QeJB07R9VwOg2tuD/GPu5XH5LJ6ForU1VVYF0
	AVyd5QEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uN8tT-0000000FNEP-2lcZ;
	Thu, 05 Jun 2025 11:36:23 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uN8j2-0000000FMDk-0QV3
	for barebox@lists.infradead.org;
	Thu, 05 Jun 2025 11:25:37 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uN8j0-0001FN-TG; Thu, 05 Jun 2025 13:25:34 +0200
Received: from dude06.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::5c])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uN8j0-001wty-2I;
	Thu, 05 Jun 2025 13:25:34 +0200
Received: from localhost ([::1] helo=dude06.red.stw.pengutronix.de)
	by dude06.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uN8j1-008F6s-0s;
	Thu, 05 Jun 2025 13:25:34 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu,  5 Jun 2025 13:25:33 +0200
Message-Id: <20250605112533.1960069-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250605112533.1960069-1-a.fatoum@pengutronix.de>
References: <20250605112533.1960069-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250605_042536_259934_400BA50B 
X-CRM114-Status: GOOD (  10.67  )
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
Subject: [PATCH 3/3] fastboot: switch to using error format specifiers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

With the addition of the __printf attribute to fastboot_tx_print, we get
a number of warnings telling us that we are passing not a string literal
as format string, but the result of strerror.

Silence the warning by using the error format specifiers instead.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/fastboot.c                        | 6 +++---
 drivers/usb/gadget/function/f_fastboot.c | 2 +-
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/common/fastboot.c b/common/fastboot.c
index 886f22f61128..2a5906c7e6a4 100644
--- a/common/fastboot.c
+++ b/common/fastboot.c
@@ -835,7 +835,7 @@ static void cb_erase(struct fastboot *fb, const char *cmd)
 
 	fd = open(filename, O_RDWR);
 	if (fd < 0)
-		fastboot_tx_print(fb, FASTBOOT_MSG_FAIL, strerror(-fd));
+		fastboot_tx_print(fb, FASTBOOT_MSG_FAIL, "%m");
 
 	ret = erase(fd, ERASE_SIZE_ALL, 0, ERASE_TO_CLEAR);
 
@@ -920,7 +920,7 @@ static void cb_oem_setenv(struct fastboot *fb, const char *cmd)
 	free(var);
 
 	if (ret)
-		fastboot_tx_print(fb, FASTBOOT_MSG_FAIL, strerror(-ret));
+		fastboot_tx_print(fb, FASTBOOT_MSG_FAIL, "%pe", ERR_PTR(ret));
 }
 
 static void cb_oem_exec(struct fastboot *fb, const char *cmd)
@@ -935,7 +935,7 @@ static void cb_oem_exec(struct fastboot *fb, const char *cmd)
 
 	ret = run_command(cmd);
 	if (ret < 0)
-		fastboot_tx_print(fb, FASTBOOT_MSG_FAIL, strerror(-ret));
+		fastboot_tx_print(fb, FASTBOOT_MSG_FAIL, "%pe", ERR_PTR(ret));
 	else if (ret > 0)
 		fastboot_tx_print(fb, FASTBOOT_MSG_FAIL, "");
 	else
diff --git a/drivers/usb/gadget/function/f_fastboot.c b/drivers/usb/gadget/function/f_fastboot.c
index 20a5f076aa12..85732802ff80 100644
--- a/drivers/usb/gadget/function/f_fastboot.c
+++ b/drivers/usb/gadget/function/f_fastboot.c
@@ -471,7 +471,7 @@ static void rx_handler_dl_image(struct usb_ep *ep, struct usb_request *req)
 					    req->actual);
 	if (ret < 0) {
 		fastboot_tx_print(&f_fb->fastboot, FASTBOOT_MSG_FAIL,
-				  strerror(-ret));
+				  "%pe", ERR_PTR(ret));
 		return;
 	}
 
-- 
2.39.5



