Delivery-date: Wed, 05 Nov 2025 10:37:28 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vGZxI-00FXNG-0h
	for lore@lore.pengutronix.de;
	Wed, 05 Nov 2025 10:37:28 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vGZxH-00039m-L2
	for lore@pengutronix.de; Wed, 05 Nov 2025 10:37:28 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Le470+88xWkanBNEjJk4Bk71i5Gtk0Vgqx1pDpaqnxs=; b=yRyRZTJnMu2lJ5if0ukhUeFRhH
	UTbmHJMPwyAdidU16jwmmEuTGpIN+2O/o8IIv0rQNgTZAfuNvwFYn5SSZDqVqUViUcsI0w4onr2P8
	WuEs5IhKJV/+hPn74guLw8Rx86ZS5jp3DwrxT8g5rjzid9KWMFmbxFdUyjxgy7W1yCT0Fy22vedtb
	pIEFV+KJWVbjZpB0Fvvt10a2wva2vitYESq1olL12RH+qGyaORwQKEOLkvM4lytwJjrQZUNQTJobR
	ewYlufNYWJn9XVpAD56d/pbcQk9z20toAEmtL+jk1rblAiLlElNPQ5MWnAOpUs9iBOZB9adOLgdAC
	xxEifpoQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vGZwd-0000000DOn0-3e7p;
	Wed, 05 Nov 2025 09:36:47 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vGZwa-0000000DOlD-2qq6
	for barebox@lists.infradead.org;
	Wed, 05 Nov 2025 09:36:46 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1vGZwW-00030d-2W; Wed, 05 Nov 2025 10:36:40 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Fabian Pflug <f.pflug@pengutronix.de>,
	Ahmad Fatoum <a.fatoum@barebox.org>
Date: Wed,  5 Nov 2025 10:36:38 +0100
Message-ID: <20251105093639.1200672-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251105_013644_714245_293909C8 
X-CRM114-Status: GOOD (  10.80  )
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
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] commands: usbgadget: improve error message on failure
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The command reports EINVAL when encountering an option it doesn't
understand and the help text for other errors.

It's more useful to users to flip them around, so they can see e.g.
-EPERM if a security policy prevented the command from working.

Reported-by: Fabian Pflug <f.pflug@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 commands/usbgadget.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/commands/usbgadget.c b/commands/usbgadget.c
index 1cd8c915b1b1..2edccca1f36c 100644
--- a/commands/usbgadget.c
+++ b/commands/usbgadget.c
@@ -20,7 +20,6 @@ static int do_usbgadget(int argc, char *argv[])
 {
 	struct usbgadget_funcs funcs = {};
 	int opt;
-	int ret;
 
 	while ((opt = getopt(argc, argv, "asdA::D::S::b")) > 0) {
 		switch (opt) {
@@ -47,12 +46,11 @@ static int do_usbgadget(int argc, char *argv[])
 			usb_multi_unregister();
 			return 0;
 		default:
-			return -EINVAL;
+			return COMMAND_ERROR_USAGE;
 		}
 	}
 
-	ret = usbgadget_prepare_register(&funcs);
-	return ret ? COMMAND_ERROR_USAGE : 0;
+	return usbgadget_prepare_register(&funcs);
 }
 
 BAREBOX_CMD_HELP_START(usbgadget)
-- 
2.47.3



