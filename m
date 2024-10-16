Delivery-date: Wed, 16 Oct 2024 11:02:56 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0zvk-00501F-2h
	for lore@lore.pengutronix.de;
	Wed, 16 Oct 2024 11:02:56 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0zvk-00061t-8e
	for lore@pengutronix.de; Wed, 16 Oct 2024 11:02:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8vnHYGJVyFvs8h51kpk0aKSDp2bByoyZvmgv4mChnEk=; b=M1FX8ddu4G/7XnrasxUPyQZme8
	7I9ECZXjbwj3sn3x4cI2H9YgMdNr/SSMXy/IAQNybBMSbNzwTl21sXaDpf6/ENKj0BRRyPdM9bwuQ
	XFytU1L1809XWkvA4snLgyDkbimrJjMP+UYhM8Huy7zQGBdt83nCzJ7kKYoJo6pLf/9kkuswgjz2Y
	6Jeq3UtoEX2ftZXFfyS2EO+xTd065lDSm5ix1/PEDnM/cewIMIVxBNPgkj6/Y3C/O9khO39k6/bLG
	W4azqgxwreBfMoN4aooxdZIaQn+uH2cdj2uhLMbG8R3dqGdfWOeojsVhgRHUY7jnaDHV4IzJpUQaZ
	MZTLMR6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0zvC-0000000B9UQ-1hNy;
	Wed, 16 Oct 2024 09:02:22 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0zuq-0000000B9G7-3BSc
	for barebox@lists.infradead.org;
	Wed, 16 Oct 2024 09:02:03 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t0zuh-0005Ld-B0; Wed, 16 Oct 2024 11:01:51 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t0zug-002EML-RN; Wed, 16 Oct 2024 11:01:50 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t0zug-00GdhR-2S;
	Wed, 16 Oct 2024 11:01:50 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 16 Oct 2024 11:01:40 +0200
Message-Id: <20241016090150.3963002-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20241016090150.3963002-1-a.fatoum@pengutronix.de>
References: <20241016090150.3963002-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241016_020200_990928_001172A3 
X-CRM114-Status: GOOD (  11.69  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 03/13] bootsource: stub out when in PBL
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

To optimize out calls to undefined functions in PBL at compile-time
instead of link time, let's use IS_PROPER instead of IS_ENABELED(),
so the remainder of the code is skipped in PBL build instead of relying
on linker garbage collection.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/bootsource.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/common/bootsource.c b/common/bootsource.c
index 6808c9c51d88..ef90bd8d7dc4 100644
--- a/common/bootsource.c
+++ b/common/bootsource.c
@@ -158,7 +158,7 @@ int bootsource_of_alias_xlate(enum bootsource src, int instance)
 	struct device_node *np;
 	int alias_id;
 
-	if (!IS_ENABLED(CONFIG_OFDEVICE))
+	if (!IS_PROPER(CONFIG_OFDEVICE))
 		return BOOTSOURCE_INSTANCE_UNKNOWN;
 
 	if (src == BOOTSOURCE_UNKNOWN ||
-- 
2.39.5



