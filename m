Delivery-date: Tue, 25 May 2021 21:39:59 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1llcuF-0006KB-Tg
	for lore@lore.pengutronix.de; Tue, 25 May 2021 21:39:59 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1llcuE-0007Ba-Rn
	for lore@pengutronix.de; Tue, 25 May 2021 21:39:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5XI3MWilK1/2JTeQypIKSa/j3yQZwhSkrxW+JMIK49U=; b=V+5Le/JFADiDl2
	diz2Mf7rk7PNUVx85gvQM6y5qL3j0/nQ9Ek6Wgg3bVHn4x9/Vt4svt1i2A24A74+mTwre4KHwQtK2
	4NPFyka5HyNA3o0a1JHG6Nu8n8cQnWOGS7hmBC3BbYqzbCN6MU/1O6roucJ6luIb67jF2Xs7Uopa6
	knFW+rzI2rtk5OrfStL8BiVmaC50CPJDsm52iRDJVnDAKi2/9e2EoUvK+m8nKzRYk9HSgxn3EsFBy
	EMwaxtZS+X8/y5rJ5o6+bc4FYkvSweT/XeVAqnM/MXOD1etomo+X9k6yEcbroJBvtkYk2dGGMrz/k
	T6n7kC4SREeyseupa01A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1llcsg-007nGh-GA; Tue, 25 May 2021 19:38:22 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1llcqo-007mcK-TH
 for barebox@lists.infradead.org; Tue, 25 May 2021 19:36:28 +0000
Received: from dude03.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::39])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <l.stach@pengutronix.de>) id 1llcqn-0006vM-HB
 for barebox@lists.infradead.org; Tue, 25 May 2021 21:36:25 +0200
From: Lucas Stach <l.stach@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue, 25 May 2021 21:36:23 +0200
Message-Id: <20210525193624.3348572-2-l.stach@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210525193624.3348572-1-l.stach@pengutronix.de>
References: <20210525193624.3348572-1-l.stach@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210525_123626_983698_0EC45329 
X-CRM114-Status: UNSURE (   7.38  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/3] ARM: imx_v8_defconfig: enable PRT8MM board
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/configs/imx_v8_defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/configs/imx_v8_defconfig b/arch/arm/configs/imx_v8_defconfig
index 06d79f594d5b..db097d1675b8 100644
--- a/arch/arm/configs/imx_v8_defconfig
+++ b/arch/arm/configs/imx_v8_defconfig
@@ -1,5 +1,6 @@
 CONFIG_ARCH_IMX=y
 CONFIG_IMX_MULTI_BOARDS=y
+CONFIG_MACH_PROTONIC_IMX8M=y
 CONFIG_MACH_ZII_IMX8MQ_DEV=y
 CONFIG_MACH_NXP_IMX8MM_EVK=y
 CONFIG_MACH_NXP_IMX8MP_EVK=y
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

