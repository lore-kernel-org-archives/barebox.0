Delivery-date: Tue, 23 Apr 2024 08:01:53 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rz9E1-00CVcn-1N
	for lore@lore.pengutronix.de;
	Tue, 23 Apr 2024 08:01:53 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rz9Dx-0007rF-8O
	for lore@pengutronix.de; Tue, 23 Apr 2024 08:01:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=opXRhq/UGIO1D5GSCcMdza4P7XDXebrIGbMH/qRWDs4=; b=KdR7emSSUsoQlNmbj7wi2V+re8
	+PqMJ//i8oPbmQxY5jc6XOJY6uYHprBginuUACHB3qIKgQCngF5s0dQc1qh1WUJLNVE95iJLtgRP7
	rBZ9qTokG/+LIqkKiuLnSpfRB47Rp4VSHLKSK7XmYgpnir/MHdz2ISSrMgnB/jVF+aFHmLnF58Tg1
	WsK24e8kRaRrSTfVAoSeAjBx8R5thKsAeS6d+gmIuPkIbfrdJoeH4mb2hXqxi1WoA82v5r2VX/qBs
	ekNhIKGlm+ioYjaL6JyK5M8ZjixQexgBF3/Eqc+SO9a1mqbLyr6kmSxCcaIHmq+0Opw8sTNyFCjsd
	4V8xHacA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rz9DA-0000000G5Rd-19lr;
	Tue, 23 Apr 2024 06:01:00 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rz9D6-0000000G5Qc-0r1I
	for barebox@lists.infradead.org;
	Tue, 23 Apr 2024 06:00:58 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rz9Cx-0007QW-P0; Tue, 23 Apr 2024 08:00:47 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rz9Cx-00Dp23-BM; Tue, 23 Apr 2024 08:00:47 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rz9Cx-006Ln5-0r;
	Tue, 23 Apr 2024 08:00:47 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 23 Apr 2024 08:00:46 +0200
Message-Id: <20240423060046.1513717-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240422_230056_261824_00178E30 
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] ddr: imx: hide config prompt unless COMPILE_TEST
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The DDR drivers are called into by low-level code for DRAM init.
The Kconfig options for them are selected by the SOC symbols, e.g.
ARCH_IMX8M and there's no point in asking for user decision: either
it's required and already selected or it will be unused and subject
to linker garbage collection. Therefore, hide the prompts by default.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/ddr/imx/Kconfig | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/ddr/imx/Kconfig b/drivers/ddr/imx/Kconfig
index 71d4144e856e..ec6c097ec9f6 100644
--- a/drivers/ddr/imx/Kconfig
+++ b/drivers/ddr/imx/Kconfig
@@ -7,10 +7,10 @@ config IMX_DRAM
 
 config IMX8M_DRAM
 	select IMX_DRAM
-	bool "imx8m dram controller support"
+	bool "imx8m dram controller support" if COMPILE_TEST
 
 config IMX9_DRAM
 	select IMX_DRAM
-	bool "imx9 dram controller support"
+	bool "imx9 dram controller support" if COMPILE_TEST
 
 endmenu
-- 
2.39.2



