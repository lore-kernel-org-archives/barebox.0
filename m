Delivery-date: Tue, 13 Feb 2024 16:18:26 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rZuYE-004xoR-2J
	for lore@lore.pengutronix.de;
	Tue, 13 Feb 2024 16:18:26 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rZuYE-0004dQ-12
	for lore@pengutronix.de; Tue, 13 Feb 2024 16:18:26 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=pn71VIl1QGihVDZXUDy3Bx6N6TBp6MqFKPy5TvCMEGU=; b=JJnZAcFkzBHuBU6aHvys10ujvl
	VUkAuQ5cbXD+xjKv0smXqKKn4fgN8tKffwiDS6uaBfAWY/wsa9vxzZ4LuvXaQ5Fz9eNx29+JcQ/lo
	1oB//3hTw7eKMnPmK1d2ervHKmBJ+7OMqy82BwIdzlrhYibRhMvGGya55lNyCF8zKtll35NqGefva
	pyt+c3jM7aPNx5D6DbjOCi+VZ6JggiWZXcA4yiWx4JEmM09X3dZXXexa22rSB8J+xOK+o/raFDTi7
	PRvZvOSnXkS/xYj/NgZVwAQVJ2CYBL5k1bjYBrkZMGBLf/VbIpxxRl8KT8veA94MCLFHW9LgD8z2U
	/267dMWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZuXf-00000009ih8-02Jo;
	Tue, 13 Feb 2024 15:17:51 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZuXc-00000009if5-0svV
	for barebox@lists.infradead.org;
	Tue, 13 Feb 2024 15:17:49 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rZuXa-0004Lt-1Z; Tue, 13 Feb 2024 16:17:46 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rZuXZ-000VpN-LB; Tue, 13 Feb 2024 16:17:45 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rZuXZ-002pOE-1n;
	Tue, 13 Feb 2024 16:17:45 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 13 Feb 2024 16:17:42 +0100
Message-Id: <20240213151744.307958-5-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240213151744.307958-1-s.hauer@pengutronix.de>
References: <20240213151744.307958-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240213_071748_333494_72590A50 
X-CRM114-Status: GOOD (  12.32  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 4/6] hab: pass flags to lockdown_device()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On i.MX93 there is no way to write fuses temporarily, so we have to
make sure the user really wants to write the fuses permanently. Do
this by passing flags containing IMX_SRK_HASH_WRITE_PERMANENT to the
lockdown_device hook.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/hab/hab.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/hab/hab.c b/drivers/hab/hab.c
index a85bbae6d6..d7be3c49eb 100644
--- a/drivers/hab/hab.c
+++ b/drivers/hab/hab.c
@@ -96,7 +96,7 @@ static int imx_hab_permanent_write_enable_iim(int enable)
 	return imx_iim_permanent_write(enable);
 }
 
-static int imx_hab_lockdown_device_iim(void)
+static int imx_hab_lockdown_device_iim(unsigned flags)
 {
 	return imx_iim_write_field(IMX25_IIM_HAB_TYPE, 3);
 }
@@ -152,7 +152,7 @@ static int imx_hab_permanent_write_enable_ocotp(int enable)
 	return imx_ocotp_permanent_write(enable);
 }
 
-static int imx6_hab_lockdown_device_ocotp(void)
+static int imx6_hab_lockdown_device_ocotp(unsigned flags)
 {
 	int ret;
 
@@ -163,7 +163,7 @@ static int imx6_hab_lockdown_device_ocotp(void)
 	return imx_ocotp_write_field(OCOTP_SEC_CONFIG_1, 1);
 }
 
-static int imx8m_hab_lockdown_device_ocotp(void)
+static int imx8m_hab_lockdown_device_ocotp(unsigned flags)
 {
 	int ret;
 
@@ -206,7 +206,7 @@ struct imx_hab_ops {
 	int (*write_srk_hash)(const u8 *srk, unsigned flags);
 	int (*read_srk_hash)(u8 *srk);
 	int (*permanent_write_enable)(int enable);
-	int (*lockdown_device)(void);
+	int (*lockdown_device)(unsigned flags);
 	int (*device_locked_down)(void);
 	int (*print_status)(void);
 };
@@ -372,7 +372,7 @@ int imx_hab_lockdown_device(unsigned flags)
 			return ret;
 	}
 
-	ret = ops->lockdown_device();
+	ret = ops->lockdown_device(flags);
 
 	if (flags & IMX_SRK_HASH_WRITE_PERMANENT)
 		ops->permanent_write_enable(0);
-- 
2.39.2



