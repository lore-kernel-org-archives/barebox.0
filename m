Delivery-date: Mon, 03 May 2021 13:51:08 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ldX6S-00030O-D4
	for lore@lore.pengutronix.de; Mon, 03 May 2021 13:51:08 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ldX6R-0000AZ-4b
	for lore@pengutronix.de; Mon, 03 May 2021 13:51:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Fv4Uf3cITcWPt/al7CFIe5E2jFreWDJGYHaEDfDbAiQ=; b=RX8fsGTwsr+uNxJllccJc+wny
	ourPwEhdrGnhOOOIynAwXrDvvvY3t+Wy4oxWHsL2R1XOaw6823x3cfTzlAtehl22oyaFW6pbi6D+5
	pKERB28iAfwK4LWje3FRw9adiyii3Cj6uOMkJyIM72MPgXGPTqBFMmDJvQn8yNjnYMc4IIFqNp3lj
	4Y9PctMOHhOyLBjIb1i89CpXjxw3TRP2iVhjqxj1sPqjtU2qeET17A7lPi5eqr7/BBfFVB32DLYRH
	aQ27ZvBhJIst6YtjJc7MY9wAiGj+j9GD7zmkyIvfWDNw+YYvDAhZnK3wk4ka07yFYMfNbdRHPhNtD
	krOKtaxLg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1ldX5I-00Dmkx-Pi; Mon, 03 May 2021 11:49:57 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ldX4k-00Dmev-HM
 for barebox@desiato.infradead.org; Mon, 03 May 2021 11:49:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=oZ3iuqVLkVT/a7B4CWBD5i+/ihYT1agZWzL5DIGeDsw=; b=fBeNePfc4eKI6C7k/mbTu3qoMv
 LxIPE4R7E/8ZnMK4aj5j6MauQ2RyDWl8vYTgvqzXVfLfrDJLhU0JG1mRt8wlVJMcQ81V9wm5UfGgM
 RkJM/m0ARdhO2sDBn+owvjqUPaJj4pI9vPZZd6RUPih28I7JqsEwC4hj1MiVI6bDXmDRRiBOJ+1mw
 QKKOYBxXMtHFdOec/csYIQ5rbPlpi1xC/y8MFvS1HptX9ACFOHcC3wScqW/tV2lstto2zZxIUbsbo
 Am3KrmDKNI4zVlphTNWPvCxN0nvT3KUSzb1md6rbS5xVZ12jTkBHxqDis3yZDSfXodmaQbVa+0pS4
 9GahQhAw==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ldX4g-0031aH-KQ
 for barebox@lists.infradead.org; Mon, 03 May 2021 11:49:21 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1ldX4d-0007pm-Lj; Mon, 03 May 2021 13:49:15 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1ldX4c-0003bg-Gb; Mon, 03 May 2021 13:49:14 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  3 May 2021 13:48:55 +0200
Message-Id: <20210503114901.13095-11-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210503114901.13095-1-a.fatoum@pengutronix.de>
References: <20210503114901.13095-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210503_044918_710833_11CC9354 
X-CRM114-Status: GOOD (  14.14  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 10/16] usbgadget: allow DFU and Fastboot functions to coexist
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

According to the commit, one upon a time the fastboot client tool
did not support a device that exports DFU as well. It does nowadays,
and while dfu-util 0.9 doesn't, it might some day.

Because these host tools are outside of barebox' control, allow both to
coexist and just throw a warning that dfu-util might not work.

With the new system partitions support, enabled fastboot and DFU mean
that autostart would start both as part of the same multi-gadget. This
would've failed, but would now just emit a warning.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/usbgadget.c | 13 ++++++-------
 1 file changed, 6 insertions(+), 7 deletions(-)

diff --git a/common/usbgadget.c b/common/usbgadget.c
index 0b2d9a2120f7..009debd93efc 100644
--- a/common/usbgadget.c
+++ b/common/usbgadget.c
@@ -52,14 +52,13 @@ int usbgadget_register(bool dfu, const char *dfu_opts,
 		return COMMAND_ERROR_USAGE;
 
 	/*
-	 * Creating a gadget with both DFU and Fastboot doesn't work.
-	 * Both client tools seem to assume that the device only has
-	 * a single configuration
+	 * Creating a gadget with both DFU and Fastboot may not work.
+	 * fastboot 1:8.1.0+r23-5 can deal with it, but dfu-util 0.9
+	 * seems to assume that the device only has a single configuration
+	 * That's not our fault though. Emit a warning and continue
 	 */
-	if (fastboot_opts && dfu_opts) {
-		pr_err("Only one of Fastboot and DFU allowed\n");
-		return -EINVAL;
-	}
+	if (fastboot_opts && dfu_opts)
+		pr_warn("Both DFU and Fastboot enabled. dfu-util may not like this!\n");
 
 	opts = xzalloc(sizeof(*opts));
 	opts->release = usb_multi_opts_release;
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

