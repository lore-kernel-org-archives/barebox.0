Delivery-date: Mon, 05 Aug 2024 16:07:08 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sayMe-006Vib-2E
	for lore@lore.pengutronix.de;
	Mon, 05 Aug 2024 16:07:08 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sayMe-0003SW-4G
	for lore@pengutronix.de; Mon, 05 Aug 2024 16:07:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=lBew1SmDU9o9Qv8G4wBZAPa2lMzdnesG/jEc6lt2CFA=; b=2VnR2d84nL4IaW9EZP9wCDEtri
	LevHsvilhDk5FBEgaePefusu6EFz7RgBSiNQfvHY5iv3X8hPQwOQfmVOBgVWq25dJEjVHlOBi9vEc
	80tTwhhZQValWXEp7uPOrLC2eSp0umQmBtdeWDkK8WLiyuefjDhCXNQBeLDc96/oAsC3hHypKuWu3
	dalhYUItAlP7PVGnwFjqd7fwXF9PEazj6CNM1u+vTgraabJjcSVrlIvXEKiIjhjMAgpZSJtDq/c62
	AwulSvmuqzD4NJuodbf+Jk+rHnDd/CSmjmB7IVI8SbHDWqLcbLjeyx5e26mWFG0qgBcOrOytdmKNj
	oh3MTTaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sayM9-0000000G55v-0gOg;
	Mon, 05 Aug 2024 14:06:37 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sayM7-0000000G55T-0SUn
	for barebox@lists.infradead.org;
	Mon, 05 Aug 2024 14:06:36 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sayM5-0003MZ-J5; Mon, 05 Aug 2024 16:06:33 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sayM5-004j9y-66; Mon, 05 Aug 2024 16:06:33 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sayM5-007FkQ-0J;
	Mon, 05 Aug 2024 16:06:33 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Stefano Manni <stefano.manni@gmail.com>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  5 Aug 2024 16:06:32 +0200
Message-Id: <20240805140632.1728140-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240805_070635_166932_0696E331 
X-CRM114-Status: UNSURE (   9.73  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] bootchooser: warn if NV is used instead of barebox-state
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

I can't think of a reason why the environment would be preferable
to barebox-state, except for evaluation perhaps.

Thus warn the user if they configure bootchooser without state.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/bootchooser.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/common/bootchooser.c b/common/bootchooser.c
index 022e225165b4..65291c5e59d3 100644
--- a/common/bootchooser.c
+++ b/common/bootchooser.c
@@ -388,6 +388,13 @@ struct bootchooser *bootchooser_get(void)
 		}
 	} else {
 		bc->state_prefix = xstrdup("nv.bootchooser");
+
+		/* NV is available as a fallback, but shouldn't be used in
+		 * production, because it's not power-fail safe.
+		 *
+		 * Thus warn the user about their configuration.
+		 */
+		pr_warn("using non-redundant NV instead of barebox-state\n");
 	}
 
 	INIT_LIST_HEAD(&bc->targets);
-- 
2.39.2



