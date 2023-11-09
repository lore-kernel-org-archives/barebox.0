Delivery-date: Thu, 09 Nov 2023 12:56:30 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r13eA-00498o-0Z
	for lore@lore.pengutronix.de;
	Thu, 09 Nov 2023 12:56:30 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r13eA-0004wH-6m
	for lore@pengutronix.de; Thu, 09 Nov 2023 12:56:30 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=uEohV1EyZ1K4tUxFfy9wQ4frw/M+JmDVoyCPiFqiJ+o=; b=L/ILw1GMQmqLm2M8RQiMogAjwr
	2KnBppq04SVJ3ojFWk57mVNQknpXPKLuj/VnVloc7n7PPT9cOtB4Qb/mtqAunSRwRHom/SMm23XHv
	PGpmX5mqHo31Szh4FZBr0/VPaBq9yEOvfbZllAlc/5IvLsQxGPpy1pwr7FZGAQ30bcQjxBrvy9JK7
	ceNwsyy7caSMrD+mSOn4n7dXXrMboQrLSP5XjbTVP6WsqI4G25lBHL4mfzoz8rG1D5Qk1rA9y6Ub3
	qjVYgBriiqzxw9RNWdIVsT++cF3QLIMjrWRyvk+dUxL+79CWRCPcD5VMQS2cLylD+wgiCfdsYdc86
	frUTe6MQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r13dA-006E8U-1X;
	Thu, 09 Nov 2023 11:55:28 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r13d7-006E63-2R
	for barebox@lists.infradead.org;
	Thu, 09 Nov 2023 11:55:26 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r13d6-0004dT-9Q; Thu, 09 Nov 2023 12:55:24 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r13d5-007ldu-Ss; Thu, 09 Nov 2023 12:55:23 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r13d5-005kdd-2b;
	Thu, 09 Nov 2023 12:55:23 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu,  9 Nov 2023 12:55:22 +0100
Message-Id: <20231109115522.1370884-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231109_035525_793056_3D6C79C4 
X-CRM114-Status: GOOD (  10.56  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH master] mfd: syscon: don't register clocked syscon if geting clock fails
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

When of_syscon_register is called with check_clk=true, it will attempt
to attach the clock. If that fails, the newly allocated syscon is freed,
but a dangling pointer remained in the syscon_list.

Fix this by only registering the syscon in the successful case.

Fixes: b36b7b727192 ("mfd: syscon: clock peripheral if specified in device tree")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/mfd/syscon.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/mfd/syscon.c b/drivers/mfd/syscon.c
index 3e12123b572e..3c2e1241fdff 100644
--- a/drivers/mfd/syscon.c
+++ b/drivers/mfd/syscon.c
@@ -74,8 +74,6 @@ static struct syscon *of_syscon_register(struct device_node *np, bool check_clk)
 	syscon_config.val_bits = reg_io_width * 8;
 	syscon_config.max_register = resource_size(&res) - reg_io_width;
 
-	list_add_tail(&syscon->list, &syscon_list);
-
 	syscon->regmap = regmap_init_mmio_clk(NULL, NULL, syscon->base,
 					      &syscon_config);
 
@@ -93,6 +91,8 @@ static struct syscon *of_syscon_register(struct device_node *np, bool check_clk)
 		}
 	}
 
+	list_add_tail(&syscon->list, &syscon_list);
+
 	return syscon;
 
 err_map:
-- 
2.39.2



