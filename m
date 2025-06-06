Delivery-date: Fri, 06 Jun 2025 07:58:58 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uNQ6U-004HIc-1w
	for lore@lore.pengutronix.de;
	Fri, 06 Jun 2025 07:58:58 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uNQ6P-0004tp-5s
	for lore@pengutronix.de; Fri, 06 Jun 2025 07:58:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=HJtBE8q9xpiF6svgFK0fQeuvm2EhES7VNzHm6Oft/9A=; b=tZLOSLaZTp3RJbqTIMZ1byuact
	HJcdly9c2OnwuVGhrkJDum4hjqUIdVQbpENl3G+BBANq16vIA8lF6QqjQNACoijjIAY24kzQn+0Bo
	3v6fCf36Czk4157NbpswuUUdzit7QaNaM9pW3fMSeCZa82hZRCaRZkTzZm1BTRzRluFbxJ6xGf6LO
	chVyD9BCtRe8QuGXhcrA72uGTYs1OBBfFGvQyh8cumJMDE7UoPPEoEUhnKBkOrPMQESrW1O/js1Nv
	w3dTgumzBOWf24NamLKUvIueotec6jyaU/ObBft4l1xHBshCnjPn7mBHrVF81UIoXE6ZGJN9mZyZJ
	3UpayM4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uNQ5b-0000000H9Ll-2May;
	Fri, 06 Jun 2025 05:58:03 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uNQ5R-0000000H9DW-1nCr
	for barebox@lists.infradead.org;
	Fri, 06 Jun 2025 05:57:56 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1uNQ5Q-0003r4-6B; Fri, 06 Jun 2025 07:57:52 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Fri,  6 Jun 2025 07:57:41 +0200
Message-Id: <20250606055748.1990383-10-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250606055748.1990383-1-a.fatoum@barebox.org>
References: <20250606055748.1990383-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250605_225753_461670_9634624E 
X-CRM114-Status: GOOD (  11.28  )
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
X-Spam-Status: No, score=-5.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 09/16] video: vpl: handle missing struct vpl::ioctl gracefully
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Display controllers don't usually implement the ioctl callback, because
they are invoked via the register_framebuffer API and only need to call
other drivers' ioctl and their own is never called.

Yet, when by mistake an ioctl is directed at a display controller, we
currently crash. Let's handle this case gracefully instead.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 drivers/video/vpl.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/video/vpl.c b/drivers/video/vpl.c
index 0b86ef9f7e81..da8bd93b7d6a 100644
--- a/drivers/video/vpl.c
+++ b/drivers/video/vpl.c
@@ -106,6 +106,7 @@ static int vpl_foreach_endpoint(struct vpl *vpl, unsigned int port,
 }
 
 struct vpl_ioctl {
+	int err;
 	unsigned cmd;
 	void *ptr;
 };
@@ -114,6 +115,11 @@ static int vpl_remote_ioctl(struct vpl *vpl, unsigned port, void *_data)
 {
 	struct vpl_ioctl *data = _data;
 
+	if (!vpl->ioctl) {
+		data->err = -EOPNOTSUPP;
+		return 0;
+	}
+
 	return vpl->ioctl(vpl, port, data->cmd, data->ptr);
 }
 
@@ -122,5 +128,5 @@ int vpl_ioctl(struct vpl *vpl, unsigned int port,
 {
 	struct vpl_ioctl data = { .cmd = cmd, .ptr = ptr };
 
-	return vpl_foreach_endpoint(vpl, port, vpl_remote_ioctl, &data);
+	return vpl_foreach_endpoint(vpl, port, vpl_remote_ioctl, &data) ?: data.err;
 }
-- 
2.39.5



