Delivery-date: Tue, 02 Apr 2024 17:04:00 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rrfg8-003laH-1a
	for lore@lore.pengutronix.de;
	Tue, 02 Apr 2024 17:04:00 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rrfg7-0005fT-RE
	for lore@pengutronix.de; Tue, 02 Apr 2024 17:04:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=D7ZQwSdvsGFlAyESyshrbzWxf9D+1lQrgLV5yIAioRY=; b=N0B1xTWaR7jeUoYNNo++Y7IC5V
	5EuhP3WXwUdw06Rcwo4inRo3tTaHSVxNCVy66F2TSB5RtQxfsrfp7vaY9sipN9AzQTV/5DuOIKLmw
	nIc0gt3YRts4MkURGVMRSjwI1DY3OG4U2OJM9C4bIP8S6xcp60K06vvABo/j7Y2PoHDR0JIrjf5xn
	sInbRsgUeMQVo85dzIgIzk6WMtZpmPMHYbz9jiiWnMa2u6UEQP9lf9v+P2G4M15HDBR0o/2GFwAdT
	8RVTpPVoVf3SsY/v1LoRZqD6auB2qqPcdRrlzqwcwQSO0HUrTj+T9uYkfJAmez+LNHS7C/1pwRF/W
	ZWq9EY3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rrfft-0000000BjNX-0yHf;
	Tue, 02 Apr 2024 15:03:45 +0000
Received: from metis.whiteo.stw.pengutronix.de ([185.203.201.7])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rreXH-0000000BRjq-45XO
	for barebox@lists.infradead.org;
	Tue, 02 Apr 2024 13:50:50 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rreX7-0001yG-7K; Tue, 02 Apr 2024 15:50:37 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rreX6-009zhU-R7; Tue, 02 Apr 2024 15:50:36 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rreX6-00FWhb-2R;
	Tue, 02 Apr 2024 15:50:36 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: lgo@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue,  2 Apr 2024 15:50:33 +0200
Message-Id: <20240402135035.3700601-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240402135035.3700601-1-a.fatoum@pengutronix.de>
References: <20240402135035.3700601-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240402_065048_791664_8B19F6F5 
X-CRM114-Status: GOOD (  13.80  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/4] input: add CONFIG_INPUT_EVBUG debug option
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Misconfigured pull-ups may cause the barebox boot to abort. To help
debugging such issues, add a CONFIG_INPUT_EVBUG option similar to Linux,
which will print a debug message every time a key event is reported.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/input/Kconfig | 11 +++++++++++
 drivers/input/input.c | 11 +++++++++++
 2 files changed, 22 insertions(+)

diff --git a/drivers/input/Kconfig b/drivers/input/Kconfig
index 52234c0ecc49..01e0b722c20f 100644
--- a/drivers/input/Kconfig
+++ b/drivers/input/Kconfig
@@ -12,6 +12,17 @@ config INPUT
 config INPUT_MATRIXKMAP
 	bool
 
+config INPUT_EVBUG
+        bool "Event debugging"
+        help
+          Say Y here if you have a problem with the input subsystem and
+          want all events (keypresses), to be output to
+          the barebox log. While this is useful for debugging, it's also
+          a security threat - your keypresses include your passwords, of
+          course and could be visible to userspace if pstore is configured.
+
+          If unsure, say N.
+
 config KEYBOARD_GPIO
 	bool "GPIO Buttons"
 	depends on GENERIC_GPIO
diff --git a/drivers/input/input.c b/drivers/input/input.c
index deef5ddd22a7..1a4792935114 100644
--- a/drivers/input/input.c
+++ b/drivers/input/input.c
@@ -1,5 +1,7 @@
 // SPDX-License-Identifier: GPL-2.0-only
 
+#define pr_fmt(fmt) "input: " fmt
+
 #include <common.h>
 #include <init.h>
 #include <kfifo.h>
@@ -33,6 +35,15 @@ void input_report_key_event(struct input_device *idev, unsigned int code, int va
 	if (code > KEY_MAX)
 		return;
 
+	/*
+	 * We don't use pr_debug here as we want to output the message
+	 * to the log, even if CONFIG_COMPILE_LOGLEVEL < MSG_DEBUG and
+	 * the DEBUG mcro wasn't defined for the file.
+	 */
+	if (IS_ENABLED(CONFIG_INPUT_EVBUG))
+		pr_print(MSG_DEBUG, "Event. Dev: %s, Type: %d, Code: %d, Value: %d\n",
+			 dev_name(idev->parent), EV_KEY, code, value);
+
 	if (value)
 		set_bit(code, idev->keys);
 	else
-- 
2.39.2



