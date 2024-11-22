Delivery-date: Fri, 22 Nov 2024 17:23:55 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tEWRn-0054xd-1d
	for lore@lore.pengutronix.de;
	Fri, 22 Nov 2024 17:23:55 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tEWRm-0003QN-Ut
	for lore@pengutronix.de; Fri, 22 Nov 2024 17:23:55 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=NaBs+M/Si6D+GaP/vDpYSkSiB5pk1ykFPBTy8uj6Pyo=; b=aEHN23c6jEd8UgAA1FY6fnu+3b
	8z6/xrwiffDrYf4/QJcWXM8uF7HkrfGS40v5/XUO+HHhXAE2IYYazeXrOmr9W/Y1xqLRHFwNa3unf
	oIz09GT3fUdT/dA3EvRGw2l41eTTNnTJRh+//actzn6Un5AaeTOWCq7IasI8t74wuGjQsIL6YKZku
	fhVNKvx1PaVvTcfAtXZtt/hmPu6cPtDL476o13t5F1obly2oOjradrIrflJFQxTnnp0/JFM9Lfrz9
	NO6OTz4iU1Pux3UdAHedvmdZtmHDFJEs2A3YeMQd6mkpsxD1Aj8lBkrcwRFYgYSY6VjUqvPcYp8EQ
	2h7CX/+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tEWRK-00000002q33-3PaN;
	Fri, 22 Nov 2024 16:23:26 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tEWRH-00000002q1j-3VKm
	for barebox@lists.infradead.org;
	Fri, 22 Nov 2024 16:23:25 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tEWRG-0003Dk-DV; Fri, 22 Nov 2024 17:23:22 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tEWRG-0026Fc-0l;
	Fri, 22 Nov 2024 17:23:22 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tEWRG-00GPX2-0S;
	Fri, 22 Nov 2024 17:23:22 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: bst@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 22 Nov 2024 17:23:21 +0100
Message-Id: <20241122162321.3909910-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20241122162321.3909910-1-a.fatoum@pengutronix.de>
References: <20241122162321.3909910-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241122_082323_871730_968C5328 
X-CRM114-Status: GOOD (  10.78  )
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
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master v2 2/2] startup: do not bring up networking if console input disabled
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Bringing up network interfaces is a development convenience.
If barebox is configured not to enable any console input by default,
we shouldn't bring up the network interfaces automatically either.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - commit message adjusted: DHCP isn't attempted in eth_open_all by
    default, just network links are brought up.
---
 common/startup.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/common/startup.c b/common/startup.c
index 9510824a908a..d71d83c221dc 100644
--- a/common/startup.c
+++ b/common/startup.c
@@ -315,7 +315,7 @@ static int run_init(void)
 	if (autoboot == AUTOBOOT_BOOT)
 		run_command("boot");
 
-	if (IS_ENABLED(CONFIG_NET))
+	if (IS_ENABLED(CONFIG_NET) && !IS_ENABLED(CONFIG_CONSOLE_DISABLE_INPUT))
 		eth_open_all();
 
 	if (autoboot == AUTOBOOT_MENU)
-- 
2.39.5



