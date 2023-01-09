Delivery-date: Mon, 09 Jan 2023 09:37:51 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pEnfE-006TIe-7Y
	for lore@lore.pengutronix.de; Mon, 09 Jan 2023 09:37:51 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pEnfC-0000sm-9q
	for lore@pengutronix.de; Mon, 09 Jan 2023 09:37:50 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=hA1lGRv9E1WZXY2PKr1bfG9pDpZagxdpSIJnCV8cz1Y=; b=yKq95v4a7N79ccsjtWhlK/qNHo
	1X2vVibch9T2xdzz4TviuC2f0N/yZtmaLx5X3o31BRijv+MQzmiBF9yUf69I6WC91MTSKPpQJCIO8
	4ZB6ia9q/YF2ujLiGKzpmKAXtXRyo13LjH/ny5gaWk5zIHGOpb0Het+Sql4Ni1C3LansIFWXxGnwU
	P9UQs9seP1LlYG7C7x0K/XVS0LFkwWY/inBdL0RH/bZFZBIDfTb8xyyhHQ7aY6zgucY9X5KFJqSlW
	b8NAvLUofjzU+gy9aciFaD5u0jQBQVYuR/rbtK+k3bZg+6QgyEL2ypPc0qq+bmfd2YNtwtQVMMBFo
	as31kQsQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pEndj-000PK4-QO; Mon, 09 Jan 2023 08:36:19 +0000
Received: from relay8-d.mail.gandi.net ([2001:4b98:dc4:8::228])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pEndc-000PH0-6y
	for barebox@lists.infradead.org; Mon, 09 Jan 2023 08:36:15 +0000
Received: (Authenticated sender: ahmad@a3f.at)
	by mail.gandi.net (Postfix) with ESMTPSA id A30751BF215;
	Mon,  9 Jan 2023 08:36:06 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <ahmad@a3f.at>
Date: Mon,  9 Jan 2023 09:36:00 +0100
Message-Id: <20230109083600.1820078-3-ahmad@a3f.at>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20230109083600.1820078-1-ahmad@a3f.at>
References: <20230109083600.1820078-1-ahmad@a3f.at>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230109_003612_487002_B77EF125 
X-CRM114-Status: GOOD (  10.93  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master 3/3] reset: core: support deep probe with resets registered in CLK_OF_DECLARE
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We already have such an exception for clocks, which may be registered
early outside the driver model using CLK_OF_DECLARE. Add a further
exception for reset controllers, so they too may be registered in
CLK_OF_DECLARE on a deep probe system. Checking for success of
of_device_ensure_probed() here isn't necessary anyways, because if
there is no provider, the list_for_each_entry loop below won't find
any and error is propagated.

Another solution would be to rewrite deep probe drivers to use
the driver model instead of CLK_OF_DECLARE, but this error case
if not very obvious, so save others time by just allowing it.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 drivers/reset/core.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/reset/core.c b/drivers/reset/core.c
index 31fac2de0347..5ab21ac95e3a 100644
--- a/drivers/reset/core.c
+++ b/drivers/reset/core.c
@@ -192,9 +192,8 @@ static struct reset_control *of_reset_control_get_by_index(struct device_node *n
 	if (ret)
 		return ERR_PTR(ret);
 
-	ret = of_device_ensure_probed(args.np);
-	if (ret)
-		return ERR_PTR(ret);
+	/* Ignore error, as CLK_OF_DECLARE resets have no proper driver. */
+	of_device_ensure_probed(args.np);
 
 	rcdev = NULL;
 	list_for_each_entry(r, &reset_controller_list, list) {
-- 
2.38.1



