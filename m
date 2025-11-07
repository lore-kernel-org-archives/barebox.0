Delivery-date: Fri, 07 Nov 2025 14:22:43 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vHMQN-00GJDG-0J
	for lore@lore.pengutronix.de;
	Fri, 07 Nov 2025 14:22:43 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vHMQM-0003LP-J3
	for lore@pengutronix.de; Fri, 07 Nov 2025 14:22:43 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=v5bZfdx9IvhiDs4/mIrNkqqyjI+Xmt4ro7G/gDsgVHc=; b=kgCQB8ZtgS0wTcAZ3a5aS8WeOh
	tXXbt7zas82nIA/peNXvVpT+hn+tRY2MRXpKnm9RXzjZ0EENbcpu9WLcQqAnX+rxbCdy0hHgfxjX2
	3vI7LPC/R8gMEm70d/ToidF2EO6zrAjb1zhPz2ut21SMHX6dnMA/wpzI+KUlKWSd6zK89AeocidZe
	7zLj4ZXwCUWcfZ+WaSLpmxbNaWbIumm0+tqyw7evhld/CWLrVo0+gBdYIqBu4D2KjVhcj35gJ9c0z
	k3F9R+W+rzrltWr0FOCvl0PqLXxlcPB5vfyXyVLu5DqWNpBz6p2wLTsCjdSe+m6QpbReZAgdtL4tU
	Tuay/0ow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vHMPm-0000000HODs-2Gi2;
	Fri, 07 Nov 2025 13:22:06 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vHMPk-0000000HODX-0pPM
	for barebox@lists.infradead.org;
	Fri, 07 Nov 2025 13:22:05 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1vHMPh-0003CP-9G; Fri, 07 Nov 2025 14:22:01 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Fri,  7 Nov 2025 14:21:43 +0100
Message-ID: <20251107132158.629348-1-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251107_052204_254461_B43BA77D 
X-CRM114-Status: UNSURE (   7.72  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: i.MX8MP: skov: add new 10" jt101tm023 variant support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Steffen Trumtrar <s.trumtrar@pengutronix.de>

Add new 10" JuTouch JT101TM023 board variant incl. the possible HDMI
sub-variant.

Unfortunately HDMI variants have no dedicated revision encoding, instead
HDMI variants are encoded via a sub-variant in SW via barebox-state. Add
a dedicated Rev.C compatible so the compatible can be used by systemd
services, albeit Rev.B-HDMI and Rev.C-HDMI don't differ.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 arch/arm/boards/skov-imx8mp/board.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm/boards/skov-imx8mp/board.c b/arch/arm/boards/skov-imx8mp/board.c
index 0e471a3437bf..0266388849d2 100644
--- a/arch/arm/boards/skov-imx8mp/board.c
+++ b/arch/arm/boards/skov-imx8mp/board.c
@@ -90,6 +90,12 @@ static const struct board_description imx8mp_variants[] = {
 	[3] = {
 		.dts_compatible = "skov,imx8mp-skov-revc-tian-g07017",
 	},
+
+	[4] = {
+		.dts_compatible = "skov,imx8mp-skov-revc-jutouch-jt101tm023",
+		.dts_compatible_hdmi = "skov,imx8mp-skov-revc-hdmi",
+		.flags = SKOV_IMX8MP_HAS_HDMI,
+	},
 };
 
 static const struct board_description imx8mp_basic_variant = {
-- 
2.47.3



