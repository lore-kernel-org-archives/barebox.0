Delivery-date: Fri, 28 Nov 2025 15:11:56 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vOzCW-005nwb-2S
	for lore@lore.pengutronix.de;
	Fri, 28 Nov 2025 15:11:56 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vOzCW-00042m-87
	for lore@pengutronix.de; Fri, 28 Nov 2025 15:11:56 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=w5P4+hBZamrSnhof4eJ7FV2tA51bOZzy1qyBjoEY44g=; b=xBSZZUNKgIN04sxHB2oVsQNTew
	amaYtwHMtaNHi/SIN5rY1dE9mv9IWY6klCYxWEPUS0A7zAD8FROEyo/P1OdPFJ+hWa8JiZlX1gQ84
	HF4zPoJZHvJT4WOyhgsMBX+y4mCbWgIEar1UaWS455aPnJNT4T3+9jZztElMBHXqObGV0W2Pcp9gx
	U62kSihCxVroI64vpws1/3WXXzEnj2oX9yb/AlCrF4x9qzdqq8zSI8kVXTInRfs8bmjOQzVAkzKNv
	v7vGj7u1Wj1NncX40PHJPwdBRiuhC0PPHXm6AGBctM1AJZZH7hDNyEmmfW1Ogj2YsN8JIWJZaEisz
	EJlN+WEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOzC0-00000000WV3-2v3J;
	Fri, 28 Nov 2025 14:11:24 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOzBz-00000000WU9-1p7z
	for barebox@lists.infradead.org;
	Fri, 28 Nov 2025 14:11:23 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 67C2E60154;
	Fri, 28 Nov 2025 14:11:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1D3D2C4CEF1;
	Fri, 28 Nov 2025 14:11:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764339081;
	bh=kKFM7mtMyAQ9l6CY+F2m4AbIdWEiZfGqrzOxbWprOxQ=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=dBajyab+byu0R1tBCS2btFnq9ZbIU7gVl1QTnnVBXYuM8Y60GYz2BHpEO19DLHiYb
	 qeqnslv98TMlCrDMyvbuI0t2QWc3BySkmCh/Aek6YiGHb4PLx0yR4+Xv2IlfVm3n3R
	 amYvePet5BIR3ei+5FLWKpJQRpMpp9Wa8bfvd6HiciyYQWBFc7Lo0508cKnEK3g8Q6
	 r+e4D2yQrSxuLAGJ+ZoXoboiwb6QHb1HBBax4tginP3AYjvOcLd0tu+kHVP7rosH48
	 cgeK//sUSYfBEU1wz9PGpkqYiVtStQWbxq/VnBWpWfO4sHakeGLX4NsVLlLXgdv8DT
	 RrVtA1Dhd9iAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0D9DDCFD376;
	Fri, 28 Nov 2025 14:11:21 +0000 (UTC)
From: Maud Spierings via B4 Relay <devnull+maudspierings.gocontroll.com@kernel.org>
Date: Fri, 28 Nov 2025 15:08:52 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251128-imx_usb-v1-1-bb6a5180b38e@gocontroll.com>
References: <20251128-imx_usb-v1-0-bb6a5180b38e@gocontroll.com>
In-Reply-To: <20251128-imx_usb-v1-0-bb6a5180b38e@gocontroll.com>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Maud Spierings <maudspierings@gocontroll.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1764339080; l=906;
 i=maudspierings@gocontroll.com; s=20250214; h=from:subject:message-id;
 bh=ibPWv04zyWFyRhgPhqdcGR/Vsh14YWmSQjpyoJfwofY=;
 b=sJld0JL6e7YwabN+9bJ5JojOuJRsG5XDhCipBwOykCuwpkZHhcw+vguNd+5uc/+QibjpkLWfc
 DF3jTB1NqgaCnHaFoimDJO6CaW8LfZZqApqYLcC/JfgEXjwgK416oJx
X-Developer-Key: i=maudspierings@gocontroll.com; a=ed25519;
 pk=7chUb8XpaTQDvWhzTdHC0YPMkTDloELEC7q94tOUyPg=
X-Endpoint-Received: by B4 Relay for maudspierings@gocontroll.com/20250214
 with auth_id=341
X-Original-From: Maud Spierings <maudspierings@gocontroll.com>
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
Reply-To: maudspierings@gocontroll.com
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-103.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,USER_IN_WELCOMELIST,
	USER_IN_WHITELIST autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 1/3] scripts: common: fix pread_full() for windows
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Maud Spierings <maudspierings@gocontroll.com>

pread() is not available for windows, convert to lseek() + read()

Signed-off-by: Maud Spierings <maudspierings@gocontroll.com>

---

I think this modifies the state of fd, I am not sure if pread() did this
too. May be necessary to point the file pointer where it was before? On
the other hand this reads the whole file so why.
---
 scripts/common.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/scripts/common.c b/scripts/common.c
index a6eee968b7..544d295b7f 100644
--- a/scripts/common.c
+++ b/scripts/common.c
@@ -202,8 +202,12 @@ int pread_full(int fd, void *buf, size_t size, loff_t offset)
 	size_t insize = size;
 	int now;
 
+	now = lseek(fd, offset, SEEK_SET);
+	if (now < 0)
+		return now;
+
 	while (size) {
-		now = pread(fd, buf, size, offset);
+		now = read(fd, buf, size);
 		if (now == 0)
 			break;
 		if (now < 0)

-- 
2.52.0




