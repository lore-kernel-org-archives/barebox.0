Delivery-date: Mon, 13 Dec 2021 22:11:23 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mwsbT-005gAn-Be
	for lore@lore.pengutronix.de; Mon, 13 Dec 2021 22:11:23 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mwsbR-0003Nc-2e
	for lore@pengutronix.de; Mon, 13 Dec 2021 22:11:22 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eM0Hjt5gsvT4Xrq2JRfTcLHhFZEX4cMgpqKSmJ5AWao=; b=Lta3ztfaEsnlm/
	knr9G8kOh68ZU/GZqmcGneRMaplp+hQEaRs8b+AcHYnXOCvseyPzji//M3FhdDIiHO3ZH8SHON32O
	PgxTPLlJIE1GDwNgZjYX72q6+WgafYouhZAAo812nEvRub9RPOpiTJONbsH9M3b2H3s4xrGgFjgPW
	+SDKAIcHkUvR1W/tfFZuzgfsWSXQZS3IOEOzuUICR2H26M0vAF8+0y93TLGBBl+QTXJuguLlF+Px3
	YgzbdE7vxA6EGpDxNWTKhOKjyETiExEuQ+Bylj4xlftHVoItX5a7mSNi5//VKa9K8lo3QkWgQQWOX
	Ruy2Khl+6vtHp4UmfPwQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mwsZz-00BPA2-Nr; Mon, 13 Dec 2021 21:09:51 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mwsZM-00BOof-Fj
 for barebox@lists.infradead.org; Mon, 13 Dec 2021 21:09:16 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mwsZL-0002T9-0B; Mon, 13 Dec 2021 22:09:11 +0100
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <sha@pengutronix.de>)
 id 1mwsZJ-00EGpX-D6; Mon, 13 Dec 2021 22:09:09 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 13 Dec 2021 22:09:01 +0100
Message-Id: <20211213210905.3399551-22-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211213210905.3399551-1-s.hauer@pengutronix.de>
References: <20211213210905.3399551-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211213_130912_593437_CF5B464B 
X-CRM114-Status: GOOD (  17.36  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 21/25] edit: Improve behaviour on efi-stdio console
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Our console driver for the EFI simple text protocol does not support
the "\e[1S" escape sequence to scroll the window which means sedit
doesn't work properly. Disable smartscroll when the efi-stdio console
is active. While at it put the screen height reduction into the same
dynamic test.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/edit.c | 46 ++++++++++++++++++++++++++++++++++++----------
 1 file changed, 36 insertions(+), 10 deletions(-)

diff --git a/commands/edit.c b/commands/edit.c
index 30448cbc04..592cf4aa3d 100644
--- a/commands/edit.c
+++ b/commands/edit.c
@@ -522,6 +522,25 @@ static int read_modal_key(bool is_modal)
 	return -EAGAIN;
 }
 
+static bool is_efi_console_active(void)
+{
+	struct console_device *cdev;
+
+	if (!IS_ENABLED(CONFIG_DRIVER_SERIAL_EFI_STDIO))
+		return false;
+
+	for_each_console(cdev) {
+		if (!(cdev->f_active & CONSOLE_STDIN))
+			continue;
+		if (!(cdev->f_active & CONSOLE_STDOUT))
+			continue;
+		if (!strcmp(dev_name(cdev->dev), "efi-stdio"))
+			return true;
+	}
+
+	return false;
+}
+
 static int do_edit(int argc, char *argv[])
 {
 	bool is_vi = false;
@@ -539,16 +558,7 @@ static int do_edit(int argc, char *argv[])
 		return 1;
 
 	screenwidth = 80;
-
-	/*
-	 * The EFI simple text output protocol wraps to the next line and scrolls
-	 * down when we write to the right bottom screen position. Reduce the number
-	 * of rows by one to work around this.
-	 */
-	if (IS_ENABLED(CONFIG_EFI_BOOTUP))
-		screenheight = 24;
-	else
-		screenheight = 25;
+	screenheight = 25;
 
 	/* check if we are not called as "edit" */
 	if (*argv[0] != 'e') {
@@ -560,6 +570,22 @@ static int do_edit(int argc, char *argv[])
 			is_vi = true;
 	}
 
+	if (is_efi_console_active()) {
+		/*
+		 * The EFI simple text output protocol wraps to the next line and
+		 * scrolls down when we write to the right bottom screen position.
+		 * Reduce the number of rows by one to work around this.
+		 */
+		screenheight--;
+
+		/*
+		 * Our console driver for the EFI simple text output protocol does
+		 * not implement the "\e[1S" sequence we use for scrolling the
+		 * screen.
+		 */
+		smartscroll = 0;
+	}
+
 	cursx  = 0;
 	cursy  = 0;
 	textx  = 0;
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

