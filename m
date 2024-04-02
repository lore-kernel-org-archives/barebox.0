Delivery-date: Tue, 02 Apr 2024 12:01:17 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rraxA-003FoG-3D
	for lore@lore.pengutronix.de;
	Tue, 02 Apr 2024 12:01:17 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rrax5-0004Vk-S8
	for lore@pengutronix.de; Tue, 02 Apr 2024 12:01:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=1dlSCo1A7vIs9nZ/SRW0FqZFMDNdY/zrr2tqN49RfYM=; b=XDGsalhGRfcHWq5124/4GdMZ+n
	305pxKII9TeichB6fLP5SlhRopFowlc7WtcfeA1aAyte/41EigvIdcnAE+Hqt+TG8NsNxJb7LYj+y
	ieslGvDqDI515QTJMIJ2zRPw6gbWGYWmI52r5eZ9PDGPmfl1jE47aYpbG36tVm82yQwkOciA9G5Ee
	vbkSclGogzu+gOJkcwLyX1N9qe2aE2Hqv0eNOx7x6K0N45qXeSrYGaZzSn/4Czmmkl/NNTq0Bd3rC
	X2L/ofKceCoUnehNhQh3vNfVnKsocYKKkqXMyjcokuGMJdbv8Ee/3PKL0qlbkPY0q+m/yUBjwdoMz
	CX/0XswA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rrawA-0000000AXkx-3oVb;
	Tue, 02 Apr 2024 10:00:14 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rraw8-0000000AXk7-1lnc
	for barebox@lists.infradead.org;
	Tue, 02 Apr 2024 10:00:13 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rraw6-0003Hi-Ko; Tue, 02 Apr 2024 12:00:10 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rraw6-009xJ7-7y; Tue, 02 Apr 2024 12:00:10 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rraw6-00AQII-0U;
	Tue, 02 Apr 2024 12:00:10 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue,  2 Apr 2024 12:00:06 +0200
Message-Id: <20240402100006.2484309-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240402_030012_490219_D127BAE3 
X-CRM114-Status: UNSURE (   9.32  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] fastboot: explain use of struct fastboot::cmd_exec/flash
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Commit ed1dded0898f ("usb: gadget: fastboot: Add external command
execution support") added hooks that allow board code to register its
own OEM extensions for Fastboot. There are no users of these hooks
upstream and without digging into the Git history, it's not evident, why
these hooks are there, especially as the files have been renamed since.

Add a comment to explain what these never-set callbacks are for.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/fastboot.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/common/fastboot.c b/common/fastboot.c
index d8dabd89ab27..f8a01dea7a65 100644
--- a/common/fastboot.c
+++ b/common/fastboot.c
@@ -666,6 +666,7 @@ static void cb_flash(struct fastboot *fb, const char *cmd)
 		goto out;
 	}
 
+	/* Check if board-code registered a vendor-specific handler */
 	if (fb->cmd_flash) {
 		ret = fb->cmd_flash(fb, fentry, fb->tempname, fb->download_size);
 		if (ret != FASTBOOT_CMD_FALLTHROUGH)
@@ -940,6 +941,7 @@ void fastboot_exec_cmd(struct fastboot *fb, const char *cmdbuf)
 	g_fb = fb;
 	fb->active = true;
 
+	/* Check if board-code registered a vendor-specific handler */
 	if (fb->cmd_exec) {
 		ret = fb->cmd_exec(fb, cmdbuf);
 		if (ret != FASTBOOT_CMD_FALLTHROUGH)
-- 
2.39.2



