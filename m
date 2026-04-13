Delivery-date: Mon, 13 Apr 2026 14:49:51 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCGjf-00Bij7-0J
	for lore@lore.pengutronix.de;
	Mon, 13 Apr 2026 14:49:51 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCGje-0003GJ-JI
	for lore@pengutronix.de; Mon, 13 Apr 2026 14:49:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=VP4TdLUyhs7F99hV/NW+swTTexjoGduDaXa4JIOwLFE=; b=Bz/IURHHoE8UYCPXZoGpfWl1xu
	RQ2+m7x1RWT2he+ha6M6M6xI8b8IydPooDikbJz1lxOPOW2IcO3sYOcKhVcabhRJL2ayA82kx5QFi
	IKmz5lrHX2l1QDaHLkHBJULgYtoZUMQnmKdteg06UqaRIZDI8tTfg/eizXymrM10Ts0yV0Zg5Hu74
	sTVvOTuKcXf9O2hwlG5Eo4+KmS0DToWccvJzBbBr6dM0SdSE/m3EZLdoChZFD3u+CQMEQOPO7p9rV
	ssCU/QhMMa/lM6T9mE7ekUj91DlCIu6t1LE2wEym6QDbn5U1HwGqHczrc4RpK8SHgIk3OpGFnYsu+
	OaGp0HKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCGjI-0000000Fg95-3Qax;
	Mon, 13 Apr 2026 12:49:28 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCGjG-0000000Fg8z-37Wp
	for barebox@bombadil.infradead.org;
	Mon, 13 Apr 2026 12:49:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=VP4TdLUyhs7F99hV/NW+swTTexjoGduDaXa4JIOwLFE=; b=ZWtCTk+qgxyXaSjO1ai2ghnDeQ
	M/DgmvhnDo2xbXSk1R4XDr4PUabUui+8FzUAUVmkZ/Cy36Bh3d5da23D757jOFf9wJLJgaEecJPeZ
	qlkeFAm2X/ZMsOMs+tL5IYIvSUZhECEjAte8I0ZWeCyWKin0AS4Hg1as/Is0nUF3+eIZG0bJtdtTy
	/cSNz+1w9VPoPodyhUVKwIKRAxY4SFlwf0sO14SDt83/p2UiXavseT6Mkyd70ibrAQN/bUiPR9sgP
	yWLDEfOANCgoGc1yBaDX1wj2/bm1SUvYR8TobFA7zs6sSqP2VVYRlfVldVwpFTyKqaJ2s/CHCewpx
	D5ECZzgg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCGjD-0000000GoBD-3Tot
	for barebox@lists.infradead.org;
	Mon, 13 Apr 2026 12:49:25 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wCGjD-0003Bn-8L; Mon, 13 Apr 2026 14:49:23 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wCGjD-005AqM-0E;
	Mon, 13 Apr 2026 14:49:23 +0200
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wCGjC-0000000EZU2-454H;
	Mon, 13 Apr 2026 14:49:23 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 13 Apr 2026 14:49:21 +0200
Message-ID: <20260413124922.3472858-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260413_134923_990540_A11CCE30 
X-CRM114-Status: UNSURE (   7.41  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=ham autolearn_force=no version=3.4.2
Subject: [PATCH] fixup! serial: introduce clk_get_enabled_for_console()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

serial: ns16550: Remove now unused label

With the switch to clk_get_enabled_for_console, nothing does goto
clk_put, so remove the label.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/serial/serial_ns16550.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/serial/serial_ns16550.c b/drivers/serial/serial_ns16550.c
index b220982450dd..5f62334a0f8a 100644
--- a/drivers/serial/serial_ns16550.c
+++ b/drivers/serial/serial_ns16550.c
@@ -566,7 +566,6 @@ static int ns16550_probe(struct device *dev)
 
 clk_disable:
 	clk_disable(priv->clk);
-clk_put:
 	clk_put(priv->clk);
 release_region:
 	release_region(iores);
-- 
2.47.3



