Delivery-date: Mon, 14 Oct 2024 17:38:55 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0N9r-004JWx-19
	for lore@lore.pengutronix.de;
	Mon, 14 Oct 2024 17:38:55 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0N9q-0001qU-RE
	for lore@pengutronix.de; Mon, 14 Oct 2024 17:38:55 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=chUJqKfTaYmGyq4fUS4K/3+lj6fy9E/FZCHLWqJ6tHM=; b=t6tvX7GCTcK/1gm8qi5n1PovDd
	uKWWK+Ez2Z8MNMma5shQknVpxaFU7pQdYJPZlRRo0ht/hLwj8xPOnGbr5H35eecOTzpq1gbROnHbi
	HVz+0tn+jebZKX5oolTkJECuD//1nmfOXeVr7SMztmNuFJArcGfz6Ix4pA/LQCsSdXrdADte80/qW
	dtvygADMeonKzB9i9J6/8miZaupaYth2ImuFXN4gOwQBGJgyCHoSX4uLOBAJOXcIS/DkmaTwoGrJ4
	Wi2TJWleQMwYJKJS4zwKb4yuPRJDBrVuVztP/6R5R+NiiC+qCeAqS82nlN2v7Sq+zHQ2p6MLyy1JV
	Xe2CxLtQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0N9I-00000005iXF-3nHE;
	Mon, 14 Oct 2024 15:38:20 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0N3u-00000005fN3-39u2
	for barebox@lists.infradead.org;
	Mon, 14 Oct 2024 15:32:48 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 5AE23A41F28;
	Mon, 14 Oct 2024 15:32:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E41A8C4CEC3;
	Mon, 14 Oct 2024 15:32:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728919964;
	bh=lHqOBKpd6l/4Kus20bEPdv3rbTwDA5Rkr7KkrW5Bjzw=;
	h=From:Date:Subject:To:Cc:Reply-To:From;
	b=C297i5IKEfcAgI0zE8tc8DBjXDSxaTecv2GJfwGEx5UYK3YAgoe97kFGyLb8zucjK
	 SN6FdOS7YqCbW8IaMFITpBvNu2eiwn2yRlWE4/zuZ3fZWimLtTXcaJZXedO67RZrfB
	 KmOVjZlREcS/iIXfe+o7re9raf3nI71E5uNCV6NHwZ5S1iWbWDeByaoK7M1xb0jCS/
	 5nzbeM4KrckroJ11PiiwlWW9plM/V1n075W3rt5rc35rkAo7dhcBCRWLHWCVXF+RgG
	 Z8YvcKerkahqqqqI8FzWLHZpF1wW2JefwyC0Infyen4X73u+XQFpZvfjQT8ZaXTpeP
	 YTeApU46K1pHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1358D1812A;
	Mon, 14 Oct 2024 15:32:44 +0000 (UTC)
From: Ahmad Fatoum via B4 Relay <devnull+a.fatoum.barebox.org@kernel.org>
Date: Mon, 14 Oct 2024 17:32:38 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241014-usb_kbd-polling_interval-v1-1-92309deabaf2@barebox.org>
X-B4-Tracking: v=1; b=H4sIAJU5DWcC/x3M0QpAMBSA4VfRubbaGMmrSMI55mSNNqS0d7dcf
 hf//0IgzxSgzV7wdHPg3SWoPIN5HZ0hwZgMhSy0kkqLK0zDNqE4dmvZmYHdSf4erZDUaJQ1Nlh
 WkPLD08LPv+76GD/JiObWagAAAA==
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1232;
 i=a.fatoum@barebox.org; h=from:subject:message-id;
 bh=+oTe0y6oPSO9CGWeM1TS2pqbtm7feOiUaQ80clLoiBI=;
 b=owEBbQKS/ZANAwAIAcPqw96TIdWbAcsmYgBnDTmbsunNEfFmGcgfmWhpxfDVMBa8MYSF07Npf
 98m9VIDaHiJAjMEAAEIAB0WIQTK3+EIrTqYqXmq7ubD6sPekyHVmwUCZw05mwAKCRDD6sPekyHV
 m3HmD/0akWU9RghUv9cKcB5XbMJ5HC705NvtYd89i6bZE17FTjN52K/CkXjXjgYrn9O97MX6PWS
 xMDn8sHRpOOc5V6juYg3XSqCcR99dSfhvc3U7nCUJ8O/bxlVmsSEZTPpcgw5PueRxb9cvrlC6oR
 Yw/cEFKIcmbun2QmCVnxCFYfKHoQP/nOnuBu4McxqeqqLKL1pPYDZJOLxaIkoOQxEl52YMzOQGa
 CLpPeF1lv2nRXy9xqpz2s1IiFsw7Z/mfkbPsR5j1qtPqXawtPrQ73EZaMNQd9ks4DzGe3G/skCc
 JK7TSSRy/zzYjqD7l8E83Gq2tsOLXyUFFIqsntjHXzyIkXtPgt0qW1ahbwxYGfulSliAmlO+4vx
 ubNOHZjCFyeoX4OHe3CP1I3hwgBHE6Lj+pjRryRYusR3rbqW5QwwpOc64YPAk+LA8YnSfukc1NI
 8lbBBLI734SUXndWTYeT/XJNB9MvdsgUwFmv4UdUXI+fWh96Pms6X+gw86n3TuafJr6JhwSzecA
 Jwf54FQ/aLfXZJ4E7qfwR8y8yB77QGq1FXZ2Ws8Rt52FxqfS5A79QH7TapdwMlGxKK1QtXrH/+0
 eL7m803ADIW8sLKDecm+CJpb+9dMGfS8UJo7ZIsPgDSaNlPPqhY3sVgdKXcIxkG0WDB7vBq0xcW
 c23xMv2LGunMREg==
X-Developer-Key: i=a.fatoum@barebox.org; a=openpgp;
 fpr=CADFE108AD3A98A979AAEEE6C3EAC3DE9321D59B
X-Endpoint-Received: by B4 Relay for a.fatoum@barebox.org/default with
 auth_id=246
X-Original-From: Ahmad Fatoum <a.fatoum@barebox.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241014_083246_980848_52921803 
X-CRM114-Status: UNSURE (   8.01  )
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
Reply-To: a.fatoum@barebox.org
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-105.1 required=4.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	USER_IN_WELCOMELIST,USER_IN_WHITELIST autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] input: usb_kbd: make polling interval configurable
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Ahmad Fatoum <a.fatoum@barebox.org>

We currently use whatever polling interval the keyboard reports, but in
some keyboard it can be useful to set a lower interval, e.g. for better
control of the snake in the barebox demo[1].

Add a parameter to make this possible.

[1]: https://fosstodon.org/@barebox/112983807569839989

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 drivers/input/usb_kbd.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/input/usb_kbd.c b/drivers/input/usb_kbd.c
index 2e75aabf3da4..d47e760a89ee 100644
--- a/drivers/input/usb_kbd.c
+++ b/drivers/input/usb_kbd.c
@@ -169,6 +169,11 @@ static int usb_kbd_probe(struct usb_device *usbdev,
 	data->intpktsize = min(usb_maxpacket(usbdev, data->intpipe),
 			       USB_KBD_BOOT_REPORT_SIZE);
 	data->intinterval = data->ep->bInterval;
+
+	dev_add_param_uint32(&usbdev->dev, "polling_interval",
+			     NULL, NULL, &data->intinterval, "%u",
+			     NULL);
+
 	/* test polling via interrupt endpoint */
 	data->do_poll = usb_kbd_int_poll;
 	ret = data->do_poll(data);

---
base-commit: ac1be0df8dce0a220e254005e1e07a0d23299f6b
change-id: 20241014-usb_kbd-polling_interval-0e84d06d8d35

Best regards,
-- 
Ahmad Fatoum <a.fatoum@barebox.org>




