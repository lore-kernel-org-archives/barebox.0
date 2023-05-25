Delivery-date: Thu, 25 May 2023 17:31:22 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q2Cvz-00DwST-C3
	for lore@lore.pengutronix.de; Thu, 25 May 2023 17:31:22 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q2Cvw-00087i-TR
	for lore@pengutronix.de; Thu, 25 May 2023 17:31:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=2XDs9VhxTE468zN203lxvhg+f1OOFBx1+0vG85t2VL4=; b=VuMixqF229ZXwJPGoWcY6EjyBV
	/IQF6Vid/IkH1oTeIerLudq7x9+2Yj0zuOqwsTWgXDDeoweDJWb6ef0nV8MdkEXtq4dlR0aFzsH9G
	KKPNLrDFHTbSSitH7w4O596oZlfITS4hUiWsEg+aH3dTBOJKJkMr8Jzy86NLkM87azMF2FbidWDRM
	nOsmFL20q2VKXnRZIaYcHtSPTM4hP4rBpjN0SjicAwAVBM1udEOIcNHDgXhDGEPfQiWMJpYTDcjPS
	Hamfs7xpbtHZ6lP6AoL4BvrRkeNCWglC47AuDKzyZfDhLg1c1K7sOknoWrtos2G4w8U4j16xIvchu
	WVTGZpXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q2CuX-00GyFh-34;
	Thu, 25 May 2023 15:29:53 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q2CuU-00GyD3-0d
	for barebox@lists.infradead.org;
	Thu, 25 May 2023 15:29:51 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <rhi@pengutronix.de>)
	id 1q2CuL-0007dg-KD; Thu, 25 May 2023 17:29:41 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <rhi@pengutronix.de>)
	id 1q2CuK-002ksy-Vd; Thu, 25 May 2023 17:29:40 +0200
Received: from rhi by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <rhi@pengutronix.de>)
	id 1q2CuK-00HKAz-69; Thu, 25 May 2023 17:29:40 +0200
From: Roland Hieber <rhi@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Roland Hieber <rhi@pengutronix.de>
Date: Thu, 25 May 2023 17:29:35 +0200
Message-Id: <20230525152934.4127575-1-rhi@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230525_082950_231223_1BB1801C 
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] commands: ethlog: wire up help text
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The help text for ethlog currently contains only the short synopsis, but
no explanation what all the options actually do, although that info is
available a few lines further up. It was probably just forgotten to be
included in the command definition.

Signed-off-by: Roland Hieber <rhi@pengutronix.de>
---
 commands/ethlog.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/commands/ethlog.c b/commands/ethlog.c
index 7885d32c6b47..21d88bf1cbfb 100644
--- a/commands/ethlog.c
+++ b/commands/ethlog.c
@@ -90,4 +90,5 @@ BAREBOX_CMD_START(ethlog)
 	BAREBOX_CMD_OPTS("[-rp] [device]")
 	BAREBOX_CMD_GROUP(CMD_GRP_NET)
 	BAREBOX_CMD_COMPLETE(eth_complete)
+	BAREBOX_CMD_HELP(cmd_ethlog_help)
 BAREBOX_CMD_END
-- 
2.39.2



