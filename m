Delivery-date: Fri, 17 May 2024 09:48:58 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s7sKo-0014CJ-0S
	for lore@lore.pengutronix.de;
	Fri, 17 May 2024 09:48:58 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s7sKn-0007pF-Gt
	for lore@pengutronix.de; Fri, 17 May 2024 09:48:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=HVhCwfAWp7yGMxADgEXI10TKe1HHH4SRps9+6d2Okzk=; b=a3u+dyjUIikUXpZksKNtcYXkH4
	yJfvcj8ESo/fIZ49982KX4b31UTceb2apP8cxe2AQz7LXij1S3BPrmpspb9QjOVT7rNQSCP0yrOUv
	1Cz0UXIT/3prTjBW+Oxyg0AfTWd3L01ViN8Up5CMELdjlDj+/xBc6kABd8NtGrPzYIJEJe++c0HuM
	xhgsv3mVnYza8Alh652qGM4c48xAJ/d+8+ukF74fkcOpDe62h0/Ke96FkefyJMboXPzrivsk4mjtq
	BQ8APNbQJK0OY5fDPx8HiNBUDV0opkJZ+esnVVsdU531o9NGcTqLqF0SgipRphNHfI6QfsQCRMRoS
	Egd1t8wQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7sKP-000000076mp-1DMN;
	Fri, 17 May 2024 07:48:33 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7sKJ-000000076hW-1Sdk
	for barebox@lists.infradead.org;
	Fri, 17 May 2024 07:48:29 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s7sKH-0007PC-Lk; Fri, 17 May 2024 09:48:25 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s7sKH-001q0g-6W; Fri, 17 May 2024 09:48:25 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s7sKH-003DkZ-0N;
	Fri, 17 May 2024 09:48:25 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 17 May 2024 09:48:23 +0200
Message-Id: <20240517074824.767767-6-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240517074824.767767-1-a.fatoum@pengutronix.de>
References: <20240517074824.767767-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240517_004827_460718_7569CC62 
X-CRM114-Status: UNSURE (   7.20  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 6/7] globalvar: fix memory leak
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

val is copied and then goes out of scope, thereby leaking the buffer it
points at. Free it before that happens.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/globalvar.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/common/globalvar.c b/common/globalvar.c
index a83529f98fe0..79624adcfe6f 100644
--- a/common/globalvar.c
+++ b/common/globalvar.c
@@ -370,6 +370,7 @@ int nvvar_load(void)
 		if (ret)
 			pr_err("failed to create nv variable %s: %s\n",
 					n, strerror(-ret));
+		free(val);
 	}
 
 	closedir(dir);
-- 
2.39.2



