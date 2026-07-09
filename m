Delivery-date: Thu, 09 Jul 2026 09:16:04 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1whizM-001ptg-2H
	for lore@lore.pengutronix.de;
	Thu, 09 Jul 2026 09:16:04 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 750AA202774
	for <lore@pengutronix.de>; Thu, 09 Jul 2026 09:16:03 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=FghO9x6Y;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=8io6IwfpE2u7LjYxkoeBYc8TihBMFz7lMWknzQ/eIT4=; b=FghO9x6Y2uDr17iZOZHu1nUhHq
	BDc7KUxNzVvIE+PUE1yWkKyjwW+6/GuDfWL9yWgu/nOSNXASMhPCk9my50IZoHHrZKmUeyEhWJKB5
	KghNUQHAvQoNnWvQ5tuG6dUv7RD9C9uoCgHGYZEya2/iIFYKiw5THKsKB5hW5XnK1XBkE9w8XytZI
	eon6XWnQ3DCV1W1sR3tqmxoKaX7R/11paKxRyXHtPDtElgKsjrbEbHN14Mn1fxOoSdZJKhyMXiw94
	uvRwbULJKwKad0M0/gDX3cKbD7cufiGfz8r6KFRbw1cCnYqJ6+/Boy9qsIafTvzU4Ju8YgDw7k7ty
	xITlWgMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whiyw-00000001FbT-17bJ;
	Thu, 09 Jul 2026 07:15:38 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whiys-00000001Faq-2u0f
	for barebox@lists.infradead.org;
	Thu, 09 Jul 2026 07:15:36 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1whiyl-0005w8-PI; Thu, 09 Jul 2026 09:15:27 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Subject: [PATCH] video: fb: mirror cdev writes to shadow buffer
Date: Thu,  9 Jul 2026 09:15:25 +0200
Message-ID: <20260709071526.502694-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: a.fatoum@barebox.org
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260709_001534_734773_C4152819 
X-CRM114-Status: GOOD (  12.43  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  The shadow framebuffer is allocated by the framebuffer core,
    but maintained by gui_screen_blit and gu_screen_blit_area. Direct framebuffer
    devices currently ignore the shadow framebuffer, which leads to surprising
    behavior when doing sequences like: 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
                             trust
                             [2a0a:edc0:2:b01:1d:0:0:104 listed in]
                             [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 DMARC_MISSING          Missing DMARC policy
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
X-Spamd-Result: default: False [-5.11 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2a0a:edc0:0:900:1d::77:received,2607:7c80:54:3::133:from];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DMARC_NA(0.00)[barebox.org];
	RCVD_IN_DNSWL_NONE(0.00)[2a0a:edc0:2:b01:1d::104:received];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@barebox.org,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-0.999];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 750AA202774
X-Stat-Signature: tth4kr4wj3q14buhqwztnghs637epu4h

The shadow framebuffer is allocated by the framebuffer core,
but maintained by gui_screen_blit and gu_screen_blit_area.

Direct framebuffer devices currently ignore the shadow framebuffer,
which leads to surprising behavior when doing sequences like:

  cp /dev/zero /dev/fb0
  splash /env/data/splash.png

as the framebuffer is first cleared and then the old content appear
again as background of the splash screen.

Fix this by having writes go to both.

Reads should arguably be left out as it's useful to be able to see
the actual framebuffer used by the hardware.

Mmap is a bit hairier, but what we do here is already an improvement.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 drivers/video/fb.c | 15 ++++++++++++++-
 1 file changed, 14 insertions(+), 1 deletion(-)

diff --git a/drivers/video/fb.c b/drivers/video/fb.c
index 10d34a39e2b2..d5ab7f4088da 100644
--- a/drivers/video/fb.c
+++ b/drivers/video/fb.c
@@ -238,9 +238,22 @@ static int fb_set_modename(struct param_d *param, void *priv)
 	return 0;
 }
 
+static ssize_t fb_cdev_write(struct cdev *cdev, const void *buf, size_t count,
+			     loff_t offset, ulong flags)
+{
+	struct fb_info *info = cdev->priv;
+	ssize_t ret;
+
+	ret = mem_write(cdev, buf, count, offset, flags);
+	if (ret > 0 && info->screen_base_shadow)
+		memcpy(info->screen_base_shadow + offset, buf, ret);
+
+	return ret;
+}
+
 static struct cdev_operations fb_ops = {
 	.read	= mem_read,
-	.write	= mem_write,
+	.write	= fb_cdev_write,
 	.memmap	= generic_memmap_rw,
 	.ioctl	= fb_ioctl,
 	.close  = fb_close,
-- 
2.47.3



