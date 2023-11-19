Delivery-date: Sun, 19 Nov 2023 20:40:39 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r4neo-000TPv-2M
	for lore@lore.pengutronix.de;
	Sun, 19 Nov 2023 20:40:39 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r4neo-0005Kt-MX
	for lore@pengutronix.de; Sun, 19 Nov 2023 20:40:39 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=VfEg9JKkUadtHMD6tnqlKxgtG4fM//AYqFzZVe4s0OI=; b=XWzmaj5OieeQFt0jZciB62JGUK
	407tA/XuptRtv+QHsk0GMRdmCD3WTSRaE6Q5mPJDzYM1Gn34X3Nr2kJQVuD9/VZc/6BRZLMdb9vb0
	nRokfMnxKK9GR/GCsBeaJqhBKujHGvKluU+tbuiR8SiHeVqcjDA0OEYdYn+2TQpRYBO36Uzym3y3V
	WVPS0ZiYKH6xVm7q8z9ZegP/U6Fuuw9sH552LVJWDPdj66tc8dLrfnpWFql+aX/H76mrVKsb0LDDB
	Nx2m/wodnja1WqJfpHwiEX0Gm+ACSmXgnHxW8+qFdVNf3HtJYIpypjSJrPta9aYaByBIKblBfWqxO
	DLvegMPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r4nd8-00AasD-2m;
	Sun, 19 Nov 2023 19:38:54 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r4nd4-00Aarm-1z
	for barebox@lists.infradead.org;
	Sun, 19 Nov 2023 19:38:52 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r4ncz-0004zy-9w; Sun, 19 Nov 2023 20:38:45 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r4ncy-00ABsJ-To; Sun, 19 Nov 2023 20:38:44 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r4ncy-003kVJ-2h;
	Sun, 19 Nov 2023 20:38:44 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Sun, 19 Nov 2023 20:38:42 +0100
Message-Id: <20231119193842.893726-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231119_113850_678902_54F018A7 
X-CRM114-Status: UNSURE (   7.60  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] fixup! ARM: i.MX: add i.MX9 debug_ll support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

ARM: i.MX9: hide DEBUG_IMX9_UART symbol on non-i.MX9

Without CONFIG_ARCH_IMX93=y, there is no point in suggesting the i.MX9
DEBUG_LL implementation to users.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/common/Kconfig b/common/Kconfig
index 1e61b5924c4b..8bd8fa8df655 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -1372,6 +1372,7 @@ config DEBUG_IMX8M_UART
 
 config DEBUG_IMX9_UART
 	bool "i.MX9 Debug UART"
+	depends on ARCH_IMX93
 	select DEBUG_IMX_UART
 
 config DEBUG_VEXPRESS_UART
-- 
2.39.2



