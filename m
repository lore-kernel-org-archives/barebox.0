Delivery-date: Fri, 01 May 2026 09:07:17 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wIhy1-000n40-1H
	for lore@lore.pengutronix.de;
	Fri, 01 May 2026 09:07:17 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wIhy0-00024x-Nx
	for lore@pengutronix.de; Fri, 01 May 2026 09:07:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=DbC84HguoGT0RDYZFsVvXhoQVwUOvwBSVHL/rfNEAZ8=; b=Qma/P59PQn2DNWwASXftqiQYl4
	IrknL95HqvIA6ZKHeDoCQMxZXW/8f828tVD63ZJlPyF43Y5P/Iu/BjjTzN1it97NC+a42/d7arE+9
	9BAICmtXJxQGYDZiKGkVpSfuaky7S1R9KZg1y9tWfct0Pdc48lXGXTTibdIQC7/i0C4VFDe63dXFg
	Hff4G5AWfkR0C3qOYYFLWKvJ0NJtb70U1LUbQW3Xw7OciVkVe5GozAS3bKl4exjdVTEHJA4j9RZfU
	a3+mNGH4b5rbvIcYXGKjIFRA4I2rrBAw4xXv69Gi9DnqHy8a5/YxwIR/FPmUDVeOZfdKpCh6mxvQZ
	o68M5X0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wIhxa-00000006Rks-3WPP;
	Fri, 01 May 2026 07:06:50 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wIhxW-00000006Req-10ex
	for barebox@lists.infradead.org;
	Fri, 01 May 2026 07:06:47 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1wIhxU-0001W8-Nc; Fri, 01 May 2026 09:06:44 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Fri,  1 May 2026 08:54:01 +0200
Message-ID: <20260501070625.952091-8-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260501070625.952091-1-a.fatoum@barebox.org>
References: <20260501070625.952091-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260501_000646_277761_67CEB0CC 
X-CRM114-Status: UNSURE (   8.40  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 7/9] video: fbconsole: implement get_size
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The fbconsole does not support input and doesn't emulate the control
characters for querying size. The get_size callback allows such consoles
to report their size anyway, so implement it.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 drivers/video/fbconsole.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/video/fbconsole.c b/drivers/video/fbconsole.c
index fd220a6c1e05..9fde6cc9c6d7 100644
--- a/drivers/video/fbconsole.c
+++ b/drivers/video/fbconsole.c
@@ -88,6 +88,15 @@ static int fbc_tstc(struct console_device *cdev)
 	return 0;
 }
 
+static int fbc_get_size(struct console_device *cdev, int *width, int *height)
+{
+	struct fbc_priv *priv = container_of(cdev, struct fbc_priv, cdev);
+
+	*width = priv->cols;
+	*height = priv->rows;
+	return 0;
+}
+
 static void cls(struct fbc_priv *priv)
 {
 	void *buf = gui_screen_render_buffer(priv->sc);
@@ -842,6 +851,7 @@ int register_fbconsole(struct fb_info *fb)
 	cdev->tstc = fbc_tstc;
 	cdev->putc = fbc_putc;
 	cdev->getc = fbc_getc;
+	cdev->get_size = fbc_get_size;
 	cdev->devname = basprintf("fbconsole%s", fbname);
 	cdev->devid = DEVICE_ID_SINGLE;
 	cdev->open = fbc_open;
-- 
2.47.3



