Delivery-date: Fri, 14 Feb 2025 15:28:21 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tiwg1-002IXA-2h
	for lore@lore.pengutronix.de;
	Fri, 14 Feb 2025 15:28:21 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tiwg0-0000q1-NP
	for lore@pengutronix.de; Fri, 14 Feb 2025 15:28:21 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=MDtdRakSQwZSuofMEwQ24oLu2atqkCB4MGF6LF0vRrs=; b=4dcSGbQtgZYM8I0iXZ0B390+eD
	fKSwLGl4yekB2HE30sfJqeUEh9vGCPm/1Gjd61flZj+XPIo7FriOw/iTJsfyhGCebh+3V20oizisv
	j25RrXAcj41uTDmFcpIk088BrzoepCGaY5Nu5PEm6lsWajpuNKu7mxo2R3pEwuOukdDGEOP7HUBUh
	zvmgFtyZLLtj282eAJGlxgwCFrvG4E3f+iX2nvp/8eOYqScZrXgd/QEwyydWrbCAZJ6B3sCxwZcGc
	HwXq5ZpsTwyzrSCvrugGYeCh5a8eJgGTKtkoBG2W8kKJGeoZp5JGYUifUVu+WFvPPpiDv1GE88kOX
	nepipEEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tiwfb-0000000F9Kt-2xqg;
	Fri, 14 Feb 2025 14:27:55 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tiwfZ-0000000F9Jt-3Fek
	for barebox@lists.infradead.org;
	Fri, 14 Feb 2025 14:27:54 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tiwfY-0000ip-9M; Fri, 14 Feb 2025 15:27:52 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tiwfY-000vrM-0K;
	Fri, 14 Feb 2025 15:27:52 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tiwfY-00FEGW-03;
	Fri, 14 Feb 2025 15:27:52 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 14 Feb 2025 15:27:51 +0100
Message-Id: <20250214142751.3629723-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250214142356.3624561-3-a.fatoum@pengutronix.de>
References: <20250214142356.3624561-3-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250214_062753_805506_3DDE1408 
X-CRM114-Status: UNSURE (   6.91  )
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
X-Spam-Status: No, score=-6.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] fixup! Documentation: user: add security consideration for using barebox
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Actually reference the file...

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/user/user-manual.rst | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/user/user-manual.rst b/Documentation/user/user-manual.rst
index 565e6c11f82f..83ba9e4c3505 100644
--- a/Documentation/user/user-manual.rst
+++ b/Documentation/user/user-manual.rst
@@ -28,6 +28,7 @@ Contents:
    booting-linux
    bootchooser
    remote-control
+   security
    system-setup
    reset-reason
    system-reset
-- 
2.39.5



