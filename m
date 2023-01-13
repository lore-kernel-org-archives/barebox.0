Delivery-date: Fri, 13 Jan 2023 12:39:41 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pGIPO-00AjOg-5e
	for lore@lore.pengutronix.de; Fri, 13 Jan 2023 12:39:41 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pGIPK-0006om-Vo
	for lore@pengutronix.de; Fri, 13 Jan 2023 12:39:40 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=VwAzEKXK6V+sE7G58CpT/Gzzg0qIEhJaIJFlLCpH92c=; b=j+q9Zp3yWl2U2Pz3Xj2duDfI0V
	itDI4K6xsNjE/tZnrXx7w3Roc1cHhc/1EmnZXien3oI/xGP0hNzHA1tKF42XJS+oMoaIAY9kXsnHG
	rqn0LynTd9/RcGKCK+aG9iHszf/TJtnr8xp6Du3+0T//gcZwHYGWgSrwvZNEj0Q3qs7rZxum+CAzU
	sB+seWG3Z0HwdLN1rCaozTlJT6iwsM3N6v+ho4zLTrim+9yZpgLaZ9KxyIYdIdlLBJiehj5SgMiL3
	LG+AYcsxOJTThHdO8fOYrAcJGkglBRhXyxpl7ttO5htH07E8LAJmw+aUagQOwMWEiD/hpYGGn25Ba
	wE/yk7FQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pGINo-002FFA-DE; Fri, 13 Jan 2023 11:38:04 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pGIK9-002DQN-5r
	for barebox@lists.infradead.org; Fri, 13 Jan 2023 11:34:20 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1pGIK4-0005Yn-BM; Fri, 13 Jan 2023 12:34:12 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <ore@pengutronix.de>)
	id 1pGIK3-005kq8-OG; Fri, 13 Jan 2023 12:34:11 +0100
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ore@pengutronix.de>)
	id 1pGIK2-00BGRN-8c; Fri, 13 Jan 2023 12:34:10 +0100
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Fri, 13 Jan 2023 12:34:01 +0100
Message-Id: <20230113113407.2684725-2-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230113113407.2684725-1-o.rempel@pengutronix.de>
References: <20230113113407.2684725-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230113_033417_361957_72FF9EEE 
X-CRM114-Status: GOOD (  12.09  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v1 2/8] ARM: imx6sx: udoo-neo: enable deep probe support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Deep probe seems to work without any issues, so enable it now.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 arch/arm/boards/udoo-neo/board.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/boards/udoo-neo/board.c b/arch/arm/boards/udoo-neo/board.c
index 3bed20ae50..da1534989e 100644
--- a/arch/arm/boards/udoo-neo/board.c
+++ b/arch/arm/boards/udoo-neo/board.c
@@ -4,6 +4,7 @@
 #include <common.h>
 #include <init.h>
 #include <linux/clk.h>
+#include <deep-probe.h>
 
 static int imx6sx_udoneo_probe(struct device *dev)
 {
@@ -16,6 +17,7 @@ static const struct of_device_id imx6sx_udoneo_of_match[] = {
 	{ .compatible = "fsl,imx6sx-udoo-neo" },
 	{ /* sentinel */ },
 };
+BAREBOX_DEEP_PROBE_ENABLE(imx6sx_udoneo_of_match);
 
 static struct driver imx6sx_udoneo_driver = {
 	.name = "board-udoo-neo",
-- 
2.30.2



