Delivery-date: Tue, 25 May 2021 21:40:11 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1llcuR-0006Ko-Mh
	for lore@lore.pengutronix.de; Tue, 25 May 2021 21:40:11 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1llcuQ-0007LM-JB
	for lore@pengutronix.de; Tue, 25 May 2021 21:40:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zSGoFZMIG5LcNXqNK2NjreDtd4sVPLJgxtkQ7vcFzs0=; b=hqwjbNg/pkB54N
	0j+AIo1+QlVShQJbAIkINdXkMIcC/nKsVsaw/gxgdLyinlbUGVjm0gjrwJSMkNnchGNdZ40IHPxTK
	3ofzqs6YVknbvowlIe66vKfhnlp6dhZ2tcCctNGq7XMyfHdoMKXZUqfik+CiyiGI9Np/PhtiU4k+Q
	uk82JoV96msjP5SMx2eabQEdPmLFA4yWSHka2YGd/3GwhKnDtJuvu8v/zisTMtKhNPxJGDlZ1rSgI
	mtJ0+yt0GSXlvvpWGeHKZch5GbJY6eev+w6NNPMXMJzwsiUKeILhPb8ezNxcdSoIP0+bgvBFQgxFg
	14AaYSb+uCzaT7MZQpLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1llcsw-007nLz-Hk; Tue, 25 May 2021 19:38:39 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1llcqp-007mcL-0Y
 for barebox@lists.infradead.org; Tue, 25 May 2021 19:36:28 +0000
Received: from dude03.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::39])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <l.stach@pengutronix.de>) id 1llcqn-0006vM-NS
 for barebox@lists.infradead.org; Tue, 25 May 2021 21:36:25 +0200
From: Lucas Stach <l.stach@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue, 25 May 2021 21:36:24 +0200
Message-Id: <20210525193624.3348572-3-l.stach@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210525193624.3348572-1-l.stach@pengutronix.de>
References: <20210525193624.3348572-1-l.stach@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210525_123627_113981_4225BED5 
X-CRM114-Status: UNSURE (   8.16  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/3] ARM: imx_v8_defconfig: enable EHCI
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The i.MX8MM USB host controller uses the standard EHCI interface. Enable
support in the defconfig to make this work out of the box.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/configs/imx_v8_defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/configs/imx_v8_defconfig b/arch/arm/configs/imx_v8_defconfig
index db097d1675b8..e1e7b0f91e67 100644
--- a/arch/arm/configs/imx_v8_defconfig
+++ b/arch/arm/configs/imx_v8_defconfig
@@ -105,6 +105,7 @@ CONFIG_MTD_DATAFLASH=y
 CONFIG_MTD_M25P80=y
 CONFIG_USB_HOST=y
 CONFIG_USB_IMX_CHIPIDEA=y
+CONFIG_USB_EHCI=y
 CONFIG_USB_STORAGE=y
 CONFIG_USB_GADGET=y
 CONFIG_USB_GADGET_SERIAL=y
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

