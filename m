Delivery-date: Fri, 12 Jun 2026 08:00:20 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wXuwG-004xrT-0j
	for lore@lore.pengutronix.de;
	Fri, 12 Jun 2026 08:00:20 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wXuwE-0005G1-SO
	for lore@pengutronix.de; Fri, 12 Jun 2026 08:00:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Py37n+ZL7S4HPzQcjVncTuQhOSHKnx3lpB608wFrDwg=; b=2yhCr06ipM6lex6MQJrPlL2Yr4
	Jbvm90eIC5dGMHGaya998XHREgGsqB3VCwbjFQUPmQz791zINhoJ1E7IxGSQpWG3oQQHBu3vat0pI
	tiZ38PFuHZGEyr/3M455j2oGLsEhNURO09psoQ4fw5ItEHFbdX8DkoBAFNDSxDRhR9FaecDeZETVw
	EKhFk3s2ZiUOOrUfHpAGs8sRVZfiWDOZbalQh/bv9gD7udDAMKB8aqYG9mMJ5OuhIjlGyICnzLkkI
	yNDwiaLlAJR6IDincICbK6D/M5QzqavSkLXDN7jxbAkUeEP8bGY11PSDjoCLyT8IUiWG6DKfRPyNk
	yW4dxL8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXuve-0000000AOTM-1Nis;
	Fri, 12 Jun 2026 05:59:42 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXuvZ-0000000AOPh-1tw0
	for barebox@lists.infradead.org;
	Fri, 12 Jun 2026 05:59:40 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1wXuvW-0004mM-5O; Fri, 12 Jun 2026 07:59:34 +0200
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac] helo=dude04)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1wXuvW-002Keu-0D;
	Fri, 12 Jun 2026 07:59:34 +0200
Received: from ore by dude04 with local (Exim 4.98.2)
	(envelope-from <ore@pengutronix.de>)
	id 1wXuvV-00000002fQ2-4C3D;
	Fri, 12 Jun 2026 07:59:34 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>,
	Oleksij Rempel <o.rempel@pengutronix.de>
Date: Fri, 12 Jun 2026 07:59:20 +0200
Message-ID: <20260612055930.635833-4-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260612055930.635833-1-o.rempel@pengutronix.de>
References: <20260612055930.635833-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260611_225937_523727_E7A7C943 
X-CRM114-Status: UNSURE (   9.19  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v1 04/10] clk: tolerate clocks registered without a name
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Ahmad Fatoum <a.fatoum@barebox.org>

bclk_register() crashes when ->name is NULL because __bclk_register()
strdup()s it unconditionally. Reject such registrations early with
-EINVAL instead of taking down the system, so a buggy driver only
fails its own clock instead of the whole boot.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 drivers/clk/clk.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/clk/clk.c b/drivers/clk/clk.c
index 5e385380cee2..99f995fb0224 100644
--- a/drivers/clk/clk.c
+++ b/drivers/clk/clk.c
@@ -494,6 +494,9 @@ int bclk_register(struct clk *clk)
 
 	clk->parents = xzalloc(sizeof(struct clk *) * clk->num_parents);
 
+	if (!clk->name)
+		return -EINVAL;
+
 	ret = __bclk_register(clk);
 	if (ret)
 		free(clk->parents);
-- 
2.47.3



