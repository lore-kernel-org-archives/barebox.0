Delivery-date: Thu, 20 Feb 2025 21:28:15 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tlD9c-004qFb-0H
	for lore@lore.pengutronix.de;
	Thu, 20 Feb 2025 21:28:15 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tlD9a-0003aD-V9
	for lore@pengutronix.de; Thu, 20 Feb 2025 21:28:15 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=zWnYGeuADVSzHIdBabwVMQ+02LnHBK5LHpHSX9eHG0I=; b=ZJ9PmmJH0UEMn86PvVyYwxSHjL
	YjxLsDchRxaHaTQ5ZmjL73qwglyOQ7zXgYVz6LuOGBFqfCT6/BdFY66RXB69DQmiagELTpsiRrADa
	suB83EMIBbeRO6kBmzTU4mJAK3kkZCTLCfrrokoeCjVNNZHhWgELn4ORiadZS7Hcp7Keg2JCp7LDQ
	oimNylCMMKeZIRHYpBmXK+hV12bukNOTwl4MXAJLM97kfbTorUCN2nc/VfHhy38ZUjMmi6UEqiKff
	IITW62IQl0nNCOPvy4RDPkLM3cVOJNKkNCRgFOoiMF6O53MW2wLwxrc/tBxT6Zei4hOrAp8Qhr1ge
	aNzBk+iw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tlD8s-00000002mm2-1C8z;
	Thu, 20 Feb 2025 20:27:30 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tlD8p-00000002mkx-1s5y
	for barebox@lists.infradead.org;
	Thu, 20 Feb 2025 20:27:28 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tlD8n-0003QG-AD; Thu, 20 Feb 2025 21:27:25 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tlD8n-001zRl-0O;
	Thu, 20 Feb 2025 21:27:25 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tlD8n-00E3Ow-07;
	Thu, 20 Feb 2025 21:27:25 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 20 Feb 2025 21:27:23 +0100
Message-Id: <20250220202723.3349623-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250220_122727_483067_5D4DC2BB 
X-CRM114-Status: UNSURE (   9.61  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] sandbox: configs: disable CONFIG_NET_NETCONSOLE in sandbox_defconfig
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Sandbox users can register extra consoles via command-line arguments, so
it makes sense to have CONFIG_CONSOLE_ACTIVATE_ALL enabled.

This also means that users get an ugly error message by default:

  ERROR: netconsole: port not set

Avoid this by disabling the netconsole support in the defconfig.
Users willing to configure it can always enable it again.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/sandbox/configs/sandbox_defconfig | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/sandbox/configs/sandbox_defconfig b/arch/sandbox/configs/sandbox_defconfig
index a5e0f72c6340..251af8d0ef31 100644
--- a/arch/sandbox/configs/sandbox_defconfig
+++ b/arch/sandbox/configs/sandbox_defconfig
@@ -94,7 +94,6 @@ CONFIG_CMD_SPD_DECODE=y
 CONFIG_CMD_SEED=y
 CONFIG_NET=y
 CONFIG_NET_NFS=y
-CONFIG_NET_NETCONSOLE=y
 CONFIG_NET_SNTP=y
 CONFIG_NET_FASTBOOT=y
 CONFIG_FEATURE_CONTROLLER=y
-- 
2.39.5



