Delivery-date: Fri, 25 Jun 2021 08:59:09 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lwfnx-0006zb-SX
	for lore@lore.pengutronix.de; Fri, 25 Jun 2021 08:59:09 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lwfnx-0007be-2O
	for lore@pengutronix.de; Fri, 25 Jun 2021 08:59:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Ief70APk1JM/V0ycyom+AcXWXAvbhkCu+2P1oFyf2NA=; b=QL8/uLF5EyOs1x
	aGbh4xiXewPWEyJnJo3P8L2NLxUHrKknjwEiftBaa7ax77SosdjWesr177y5JYDwyNrwlCvAJgP2d
	+xNTstsAc34adfy161UiENP+px9Zg3J6ZfCTM6iTbsEroKZamXmSiFazkzZ55VHP2rTPpbb+akeZI
	s8fIqE1phiniGaxDqL6wCsGPTUuT3g7ffrBwDGupXI39I6EQdBA+XH+di9axHvrpBZApKtUfPpnN1
	wS+7+fMXkZIOFwKzKjvvrPAsf7noOOZc0VjtfM709gLqwo6y9UXG7TLwFWVMa6ohaZTRcT6y3NGY2
	2n25CmuuyvhaM7erpskQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lwfmM-00HUW5-3I; Fri, 25 Jun 2021 06:57:30 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lwfmG-00HUVl-Vk
 for barebox@lists.infradead.org; Fri, 25 Jun 2021 06:57:26 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lwfmF-0007PU-D1; Fri, 25 Jun 2021 08:57:23 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lwfmF-0006oX-39; Fri, 25 Jun 2021 08:57:23 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri, 25 Jun 2021 08:57:22 +0200
Message-Id: <20210625065722.26149-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210624_235725_058250_DFFB6693 
X-CRM114-Status: UNSURE (   9.48  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: Rockchip: rk3568 EVB: Add eMMC pinmux
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The eMMC relied on reset default pinmux. This doesn't work when not
booting from eMMC, so add pinmux.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/dts/rk3568-evb1-v10.dts | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/dts/rk3568-evb1-v10.dts b/arch/arm/dts/rk3568-evb1-v10.dts
index 91e2344195..88aad40db9 100644
--- a/arch/arm/dts/rk3568-evb1-v10.dts
+++ b/arch/arm/dts/rk3568-evb1-v10.dts
@@ -462,6 +462,8 @@
 	non-removable;
 	no-sd;
 	status = "okay";
+	pinctrl-names = "default";
+	pinctrl-0 = <&emmc_bus8 &emmc_clk &emmc_cmd &emmc_datastrobe>;
 
 	partitions {
 		compatible = "fixed-partitions";
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

