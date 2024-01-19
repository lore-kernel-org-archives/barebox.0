Delivery-date: Fri, 19 Jan 2024 15:25:42 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rQpoT-0079Ws-0I
	for lore@lore.pengutronix.de;
	Fri, 19 Jan 2024 15:25:42 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rQpoT-0003iD-Ne
	for lore@pengutronix.de; Fri, 19 Jan 2024 15:25:42 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=j0MUWjok4PmLgUwQ4Iw0gmWde6POIZPUL5v/qyELDVA=; b=GjcT3EQQtWA8KVr8CcvqiadFGa
	4CiL83KyI4OUWdOt6Bg3lkalqe0+Z6GYuOLnURhjv8/g5/Un+xIZjtIKU83m+6TXdQi/ssELR9JAk
	I8FJ/nfkLcjoYHYD1PsUrqcg6Oce5E2don99tA0nQKLh105Ot3b8UxIfNbNULApLkpdw2PPPNmoI2
	B8Pk7k3PoFpwK0BxRvt8u9hgN9Zml9S0K/Lv++UWYMO1GKmdmUUpSs6mKws+kmFa2O2unV7rSFtR5
	ylnJG84OsWoREXyfNS26W5FLjPPqFrxgAmCZUC9a9lVv8isAhsUoQUnaG8XHnMvCwgGSMPYEnObi2
	luv9e2jA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rQpnI-005pqU-05;
	Fri, 19 Jan 2024 14:24:28 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rQpnE-005pnR-2W
	for barebox@lists.infradead.org;
	Fri, 19 Jan 2024 14:24:26 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rQpn5-0003OT-DV; Fri, 19 Jan 2024 15:24:15 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rQpn5-000wI3-0w; Fri, 19 Jan 2024 15:24:15 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rQpn4-00DczL-2z;
	Fri, 19 Jan 2024 15:24:14 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri, 19 Jan 2024 15:24:07 +0100
Message-Id: <20240119142413.3206832-2-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240119142413.3206832-1-s.hauer@pengutronix.de>
References: <20240119142413.3206832-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240119_062424_860043_D0A5191D 
X-CRM114-Status: GOOD (  10.48  )
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
X-Spam-Status: No, score=-6.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 1/7] firmware: add missing FIRMWARE_IMX8MQ_OPTEE symbol
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

CONFIG_FIRMWARE_IMX8MQ_OPTEE is used but not defined in Kconfig. Add the
missing symbol like existing for the other i.MX8M variants.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 firmware/Kconfig | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/firmware/Kconfig b/firmware/Kconfig
index 38fbf85555..8babdb85a8 100644
--- a/firmware/Kconfig
+++ b/firmware/Kconfig
@@ -53,6 +53,10 @@ config FIRMWARE_IMX8MP_OPTEE
 	bool "install OP-TEE on i.MX8MP boards"
 	depends on FIRMWARE_IMX8MP_ATF && PBL_OPTEE
 
+config FIRMWARE_IMX8MQ_OPTEE
+	bool "install OP-TEE on i.MX8MQ boards"
+	depends on FIRMWARE_IMX8MQ_ATF && PBL_OPTEE
+
 config FIRMWARE_CCBV2_OPTEE
 	bool
 	depends on MACH_WEBASTO_CCBV2 && PBL_OPTEE
-- 
2.39.2



