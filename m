Delivery-date: Mon, 27 Oct 2025 07:09:37 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vDGQD-00CF3U-0h
	for lore@lore.pengutronix.de;
	Mon, 27 Oct 2025 07:09:37 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vDGQC-0006Dw-Kv
	for lore@pengutronix.de; Mon, 27 Oct 2025 07:09:37 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=XkJqp00nsl2pfVCO1FoZNrQICsmZABfiUTq5LQK3hG4=; b=y7nKD1iIeAPuaTabnaL0dImI89
	4a5/m4mk36bwWpiEUCt1wvjiCmjDl0nRALKT1gEGHFvnwmFOHTgjhPo5ZrQewhMlf8vKAS5CRBLL6
	GZ3MCxLe2aDL64JE0NUbZip+Eab40uMq/ei2ugb9rvgpVKlzdEhZfy0JnYsOhBg6NWlapwZiXTkBn
	cASs6+/Dgy+E0DQY+XsfPUv+FUj9I/Y/MytFpprIxyjC27TwqWSRKUMib7RyPaVe7iRRPh1oyfLCG
	DvApBgNlpkY/A0dIn1kNQabYjc67D7ig5+YCmVtirqeOs7jpHuU176pPl4frAo7hBRqVhqVZQsPmy
	Ch1lNg+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDGPb-0000000DAjQ-1Ot5;
	Mon, 27 Oct 2025 06:08:59 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDGPY-0000000DAik-2QUs
	for barebox@lists.infradead.org;
	Mon, 27 Oct 2025 06:08:58 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1vDGPT-00068R-VD; Mon, 27 Oct 2025 07:08:52 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon, 27 Oct 2025 07:08:50 +0100
Message-ID: <20251027060850.2376494-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251026_230856_613827_656DD26C 
X-CRM114-Status: GOOD (  10.20  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] console: print banner on every fully activated console
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On systems with multiple consoles, the first console is usually
activated via device trees and the others later via board code.

The later consoles don't get previous log replayed and it can thus be
hard to determine when the log starts when the console remains open
between reboots.

Improve upon this by printing out the barebox prompt whenever a console
is switching from deactivated to ioe. We don't actually require input,
but checking for input allows users to disable this by first switching
to oe, then ioe.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 common/console.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/common/console.c b/common/console.c
index 95e5fb4df33c..aa2013c51522 100644
--- a/common/console.c
+++ b/common/console.c
@@ -83,6 +83,7 @@ int console_close(struct console_device *cdev)
 
 int console_set_active(struct console_device *cdev, unsigned flag)
 {
+	unsigned flag_new = flag & ~cdev->f_active;
 	int ret;
 
 	if (!cdev->getc)
@@ -117,6 +118,10 @@ int console_set_active(struct console_device *cdev, unsigned flag)
 		barebox_banner();
 		while (kfifo_getc(console_output_fifo, &ch) == 0)
 			console_putc(CONSOLE_STDOUT, ch);
+	} else if (IS_ENABLED(CONFIG_BANNER) && cdev->puts &&
+		   flag_new == CONSOLE_STDIOE) {
+		cdev->puts(cdev, version_string, strlen(version_string));
+		cdev->puts(cdev, "\n\n", 2);
 	}
 
 	return 0;
-- 
2.47.3



