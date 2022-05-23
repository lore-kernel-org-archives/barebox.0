Delivery-date: Mon, 23 May 2022 12:39:03 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nt5Sp-006Poc-P7
	for lore@lore.pengutronix.de; Mon, 23 May 2022 12:39:03 +0200
Received: from [2607:7c80:54:3::133] (helo=bombadil.infradead.org)
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nt5Sn-0003Qk-D6
	for lore@pengutronix.de; Mon, 23 May 2022 12:39:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ybpwOZSKgk9VBCL96JgEJLT7fNZ+9gXhHpBEFP6qsFk=; b=TkHquf3zYgbqIy
	iSkIhc87+RC1AUiHRfQwRX0RkA8aKvuWwlorGbT89vLwgGIw4bb32ILbapMPDJgEJQrr48pPGkK0Y
	RVMOPwOtRoDlnNlxuAPotQgK7j5JaCleFubPzpVe4swoben4A2oiz+CToHAEb7apj5Yv6mTz45jPs
	utb/d//unGNZumXDfj/ygAkvBhjefebjRz6VH+i8ds3baArQqBGOQ+EmW4dNjqqIMXPXt4CYWZ7P/
	r1ELxLC3GbtQ60eF3pd1gBduj9EfxckXcOYuFN3wR2M256RW3AAHatMPF8e5qMJCkr/XnK+hKdeNl
	3Vx0PwYPMiGly39da6gA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nt5RE-003J4P-0O; Mon, 23 May 2022 10:37:24 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nt4Jq-002p3v-W7
 for barebox@lists.infradead.org; Mon, 23 May 2022 09:25:46 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1nt4Jl-0005tN-Rs; Mon, 23 May 2022 11:25:37 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1nt4Jm-0043M9-Cj; Mon, 23 May 2022 11:25:37 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1nt4Jk-003JzH-0j; Mon, 23 May 2022 11:25:36 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 23 May 2022 11:25:26 +0200
Message-Id: <20220523092526.791716-8-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220523092526.791716-1-a.fatoum@pengutronix.de>
References: <20220523092526.791716-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220523_022543_125091_351A9C10 
X-CRM114-Status: GOOD (  10.97  )
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
X-Host-Lookup-Failed: Reverse DNS lookup failed for 2607:7c80:54:3::133 (failed)
X-Broken-Reverse-DNS: no host name for IP address 2607:7c80:54:3::133
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,PTX_BROKEN_RDNS,RDNS_NONE,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=no autolearn_force=no version=3.4.2
Subject: [PATCH 8/8] video: efi_gop: add $global.bootm.earlycon fixup for
 framebuffer console
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/video/efi_gop.c | 18 +++++++++++++++---
 1 file changed, 15 insertions(+), 3 deletions(-)

diff --git a/drivers/video/efi_gop.c b/drivers/video/efi_gop.c
index 52387f30dcd0..5e9bc406e1b6 100644
--- a/drivers/video/efi_gop.c
+++ b/drivers/video/efi_gop.c
@@ -238,11 +238,23 @@ static int efi_gop_probe(struct efi_device *efidev)
 	priv->fb.current_mode = priv->mode;
 
 	ret = register_framebuffer(&priv->fb);
-	if (!ret) {
-		priv->dev->priv = &priv->fb;
-		return 0;
+	if (ret)
+		goto free_modes;
+
+	priv->dev->priv = &priv->fb;
+
+	if (IS_ENABLED(CONFIG_FRAMEBUFFER_CONSOLE)) {
+		struct console_device *cdev;
+
+		cdev = console_get_by_dev(&priv->fb.dev);
+		if (cdev)
+			dev_add_param_fixed(&cdev->class_dev, "linux.bootargs.earlycon",
+					    "earlycon=efifb");
 	}
 
+	return 0;
+
+free_modes:
 	if (priv->fb.modes.modes) {
 		int i;
 
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

