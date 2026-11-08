Delivery-date: Sun, 08 Nov 2026 10:35:04 +0100
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xPzIm-008dSf-19
	for lore@lore.pengutronix.de;
	Sun, 08 Nov 2026 10:35:04 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 92E282001E8
	for <lore@pengutronix.de>; Sun, 08 Nov 2026 10:35:04 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=Ie28asoR;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794130504;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=PrFxbW5T4CX+eG209MXC0aqELYumH6Bd6KSOF0ZMhZs=;
	b=McExXRd9Czh+npYa5RweCkNKJN53zxPBBykSAdSVNFWqo3j6KhpusWSMr6E0TEXPyoYsqi
	WY0ek0K2J7irJDC78xcpuPH3GxC2qst4OeIU5SidA7qyDYb4vDj5DHQzti8soSUUR9WlHS
	WvBSNa6t5cQq48V/yA3moU0TkAq4hlVxP/Eq/20OPWbGz0lgdilG6Ud9o3vRfvEGhxbcBV
	/RM6IUQng66CPv8QZTNl+wKxhUHEH2eG03GolIdjJIxnrmXVYiizGM6CGLJQY3fjPEOMXk
	JKhsTEXaO5sFOmL6OVsHCrxGuPnSQmNu89s1FUDu3bv9W6+QVal+Wo/lqfTO6A==
ARC-Authentication-Results: i=1;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=Ie28asoR;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1794130504; a=rsa-sha256;
	cv=none;
	b=WqYlrR9KtLS8JJcHGiLMxQ3IckT62Q5egMMVM8Od57JrkGaTl5X7qyIavCHwUnsdDGIDcN
	tq6DsLZ7p2uF+7kVGTXzOHr6AW+v8yW+5KjS6Y8Oxceub8gBIofjHP2g+cAMHUttks3Ono
	2QB5cWxbxEkG4nEo5mEUlNOl01Ji4h6eJO2gnrgO6RtjnchnkLuUYq3lR26N+y4jfByHfX
	9xbx4wuCDUKcxa9uVAWkJaagrNY2+Mcvo318U7OMEijySjvBEK8DwbVUrRK2P/nEwOXM/M
	WPeEJDkiVVTiv9j2+i9FsElVZAXPCLqE+nVmAWv34ATaFD81J5E9MEz6TlhAtA==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=PrFxbW5T4CX+eG209MXC0aqELYumH6Bd6KSOF0ZMhZs=; b=Ie28asoR1oAE2w
	h0M0j9BqJmwbNId6c5ngkg0B6y2rvVzAGxmMw48LQMuKCf3wrk9A2bQ2WY2dML0EP+weTjvRas2zq
	kcs/4P8sY7VthSeFJSFKlJDYmxMF3GupYsqtVTK5Dae4DNSmgCspeIXtUZ1f4goPXKe2GYbEvgW69
	iJIuf4ca/poFXxmhl3+sbjoojU5zeNov2EwoP57bqQeEnZ/D2tV8avfWtoqcOUPfcN3Z8l3Iurnk5
	P6XTL98oAYSjGhAuueclF4CJLHdyRWsO15BayptyQKE5hXHI1UYSEhOf44uxlzqdmU6YV2rI2570V
	PaKUpi4KBQcvkUEYHtug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPzHm-0000000FuSy-2c3q;
	Sun, 08 Nov 2026 09:34:02 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPzHh-0000000FuPE-3G5i
	for barebox@lists.infradead.org;
	Sun, 08 Nov 2026 09:33:59 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1xPzHg-0008Mb-3j; Sun, 08 Nov 2026 10:33:56 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Subject: [PATCH 3/5] serial: virtio_console: report the console size
Date: Sun,  8 Nov 2026 10:32:05 +0100
Message-ID: <20261108093354.1247607-4-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261108093354.1247607-1-a.fatoum@barebox.org>
References: <20261108093354.1247607-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: a.fatoum@barebox.org
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261108_013357_835396_B1403E34 
X-CRM114-Status: GOOD (  13.19  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hosts that offer VIRTIO_CONSOLE_F_SIZE, like TinyEMU, keep
    the size of their terminal in the config space. Implement get_size with it,
    so that sedit and watch don't need to query the terminal and wait [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
                             trust
                             [2a0a:edc0:2:b01:1d:0:0:104 listed in]
                             [list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 92E282001E8
X-Spamd-Result: default: False [-6.11 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	MID_CONTAINS_FROM(1.00)[];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2a0a:edc0:0:900:1d::77:received];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[barebox.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCVD_IN_DNSWL_NONE(0.00)[2a0a:edc0:2:b01:1d::104:received];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=1];
	RCPT_COUNT_TWO(0.00)[2];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	RCVD_TLS_LAST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@barebox.org,barebox-bounces@lists.infradead.org]
X-Rspamd-Action: no action
X-Stat-Signature: 4tuxcttwwy3bx1dge3kisjog983bjfzu

Hosts that offer VIRTIO_CONSOLE_F_SIZE, like TinyEMU, keep the size of
their terminal in the config space. Implement get_size with it, so that
sedit and watch don't need to query the terminal and wait up to 100ms
for the reply. When the reply takes longer, as in the barebox web demo,
sedit gives up and the reply ends up in the edited file:

  [24;80R#!/bin/sh

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 drivers/serial/virtio_console.c | 27 +++++++++++++++++++++++++++
 1 file changed, 27 insertions(+)

diff --git a/drivers/serial/virtio_console.c b/drivers/serial/virtio_console.c
index ae36cad6e5bd..3d14bf502489 100644
--- a/drivers/serial/virtio_console.c
+++ b/drivers/serial/virtio_console.c
@@ -18,6 +18,7 @@
 #include <xfuncs.h>
 #include <linux/spinlock.h>
 #include <linux/virtio.h>
+#include <linux/virtio_config.h>
 #include <linux/virtio_ring.h>
 #include <linux/virtio_console.h>
 
@@ -105,6 +106,24 @@ static int virtcons_getc(struct console_device *cdev)
 	return ch;
 }
 
+static int virtcons_get_size(struct console_device *cdev, int *width, int *height)
+{
+	struct virtio_device *vdev = dev_to_virtio(cdev->dev);
+	u16 cols, rows;
+
+	virtio_cread(vdev, struct virtio_console_config, cols, &cols);
+	virtio_cread(vdev, struct virtio_console_config, rows, &rows);
+
+	/* the host may not have filled them in yet */
+	if (!cols || !rows)
+		return -ENODATA;
+
+	*width = cols;
+	*height = rows;
+
+	return 0;
+}
+
 static int virtcons_probe(struct virtio_device *vdev)
 {
 	struct virtqueue *vqs[2];
@@ -146,6 +165,8 @@ static int virtcons_probe(struct virtio_device *vdev)
 	virtcons->cdev.tstc = virtcons_tstc;
 	virtcons->cdev.getc = virtcons_getc;
 	virtcons->cdev.putc = virtcons_putc;
+	if (virtio_has_feature(vdev, VIRTIO_CONSOLE_F_SIZE))
+		virtcons->cdev.get_size = virtcons_get_size;
 
 	have_one = true;
 
@@ -168,9 +189,15 @@ static struct virtio_device_id id_table[] = {
 	{ 0 },
 };
 
+static const unsigned int features[] = {
+	VIRTIO_CONSOLE_F_SIZE,
+};
+
 static struct virtio_driver virtio_console = {
 	.driver.name =	"virtio_console",
 	.id_table =	id_table,
+	.feature_table = features,
+	.feature_table_size = ARRAY_SIZE(features),
 	.probe =	virtcons_probe,
 	.remove =	virtcons_remove,
 };
-- 
2.47.3



