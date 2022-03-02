Delivery-date: Wed, 02 Mar 2022 21:09:50 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nPVIE-00FnsU-RG
	for lore@lore.pengutronix.de; Wed, 02 Mar 2022 21:09:50 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nPVID-00036e-Pq
	for lore@pengutronix.de; Wed, 02 Mar 2022 21:09:50 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=syQlyQcHKAkZLfmFOPlVl4XLORTkQ4qR66I9b9aC6cA=; b=avOvH9zMox6GTN
	GAyauaWNqSV5oLkbZ5kM7th1G832LWVfoU/bYa659rv2EOAC/NSu1linHX6HL0jqZ6xRi/wy935pv
	KMtmwys2CMYIoqiySzCa2JWUpiKjWTNq//Ch4S8yUJlz4xxYJZsOWAc+2NliKDT86AiwryRIXiyth
	rtcmaAW3URjLFUuHD0kEBTVamrwsJaoDeBMvs0PCid+3DaGwiVBlJRkXwV+lhPhRdoqPNYzfjzGxz
	miLE85sKnukYLCo0AogSPVTaqES5F2+46Kc0CmeegX8nToi6CaY4y6fhLqLl30/JV2FfySYWAYE7Y
	fJGzzD97T3vE73FpZX/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nPVGl-0043xr-2w; Wed, 02 Mar 2022 20:08:19 +0000
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nPVGf-0043wc-Hw
 for barebox@lists.infradead.org; Wed, 02 Mar 2022 20:08:14 +0000
Received: (Authenticated sender: ahmad@a3f.at)
 by mail.gandi.net (Postfix) with ESMTPSA id B512340002;
 Wed,  2 Mar 2022 20:08:07 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <ahmad@a3f.at>
Date: Wed,  2 Mar 2022 21:08:01 +0100
Message-Id: <20220302200801.657501-1-ahmad@a3f.at>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220302_120813_770786_839551C6 
X-CRM114-Status: UNSURE (   8.59  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] of: deep-probe: replace BUG() with more verbose panic()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

In the case, we do hit this bug, the node name can be helpful, so
print it out.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 drivers/of/platform.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/of/platform.c b/drivers/of/platform.c
index 0e718469dbcd..9b487cbb0c68 100644
--- a/drivers/of/platform.c
+++ b/drivers/of/platform.c
@@ -422,7 +422,9 @@ int of_device_ensure_probed(struct device_node *np)
 	if (IS_ERR(dev))
 		return PTR_ERR(dev);
 
-	BUG_ON(!dev);
+	if (!dev)
+		panic("deep-probe: device for '%s' couldn't be created\n",
+			 np->full_name);
 
 	/*
 	 * The deep-probe mechanism relies on the fact that all necessary
-- 
2.34.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

