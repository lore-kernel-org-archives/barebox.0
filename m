Delivery-date: Tue, 30 Apr 2024 20:07:36 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s1rtA-00AqdW-0x
	for lore@lore.pengutronix.de;
	Tue, 30 Apr 2024 20:07:36 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s1rt9-0007Cm-GA
	for lore@pengutronix.de; Tue, 30 Apr 2024 20:07:36 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=eF9ClaRwZpX4YDkcols0n2NOebYBiknqXrrHc44CLl8=; b=Zb8aTW+OzN7AyZZ8UnhMMZIJV+
	KbrjUhLSYrIAwzqARfiDvon/tiM7k8ON1d1M4bPxZRnP0K9l2n4y4H73GubQgg/Xc8bT6trcyjika
	lQRcl59WG33RG/K+h1Mb+3GSKxtJ2qbnOeSz7qqZIoR+yXj7KtiVLUNeh9D8owya9BeDCOTzdhAQz
	u0ak6zURRny0Do1W0JQB3DwhQaRQixHK3F1pz+cRTsZxCtVBrnL7RjnJTOjvrDP1lwWcW8waWhC5w
	Fl0YRlVR1REOQKwp/e/yGC61p7Z6tpMA1JcNAyAW9cRTSW7yKjOdpfOHogfyFfEEYJTdIDsK30wCI
	EuhgCrpw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s1rsL-00000007WxB-3Xnq;
	Tue, 30 Apr 2024 18:06:45 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s1rsH-00000007WuX-2nxr
	for barebox@lists.infradead.org;
	Tue, 30 Apr 2024 18:06:43 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s1rsA-0006kc-U9; Tue, 30 Apr 2024 20:06:34 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s1rsA-00FCgV-Hc; Tue, 30 Apr 2024 20:06:34 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s1rsA-006dMu-1T;
	Tue, 30 Apr 2024 20:06:34 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 30 Apr 2024 20:06:33 +0200
Message-Id: <20240430180633.1581279-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240430180633.1581279-1-a.fatoum@pengutronix.de>
References: <20240430180633.1581279-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240430_110642_103594_0787583D 
X-CRM114-Status: UNSURE (   9.05  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/3] uimage: have TIMESTMAP depend on UIMAGE
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The only users of CONFIG_TIMESTAMP are the uImage command, file system
and the bootm integration. Therefore make it depends on UIMAGE, so
unaffected users are not prompted for it.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/common/Kconfig b/common/Kconfig
index ea7223cffd05..07cb3d5616cc 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -556,6 +556,7 @@ config ERRNO_MESSAGES
 config TIMESTAMP
 	bool
 	default y
+	depends on UIMAGE
 	select GREGORIAN_CALENDER
 	prompt "print timestamp information from uImages"
 	help
-- 
2.39.2



