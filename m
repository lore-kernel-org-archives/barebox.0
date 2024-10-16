Delivery-date: Wed, 16 Oct 2024 11:02:59 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0zvn-00501n-0k
	for lore@lore.pengutronix.de;
	Wed, 16 Oct 2024 11:02:59 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0zvm-00063f-Jq
	for lore@pengutronix.de; Wed, 16 Oct 2024 11:02:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Iaq/K7RMThAkj9hS28/roQPWkhbfEYRlSq+YOHQYOEw=; b=IUI/qbUSJbMoXGs+8fs+GMvkwW
	H0dem0zoz2hCT7QabwZRcbaBKxgq6Q2LX4t44lKMwNGz6O+XDBMmW7wwSo/Fklri25eb6ovsbCEKs
	THQlCUnElRUMt5v0Xb4iNiXguoOy07tYECYw04YBOQ/QMQxH8kxH6wfGRT22Dy3t0H4mA1UVDTtat
	ZlPNGnFQAQCU/hFHbeBDKFaFvfaI9DbHu6iG9JiTq9w82fhKgjqCwCgN6RwTMIPUJGWqtWfQDZYMb
	kPWmZIOid70uPECUfLZlZGnzAzyXHdMju5aIpF0jntldVQ7vtM4MSC7mM/AKjI6U+UcLY+nADuTup
	774dGHMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0zvF-0000000B9Xg-3QtF;
	Wed, 16 Oct 2024 09:02:25 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0zuq-0000000B9GB-483B
	for barebox@lists.infradead.org;
	Wed, 16 Oct 2024 09:02:05 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t0zuh-0005Lq-Ie; Wed, 16 Oct 2024 11:01:51 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t0zuh-002EMX-0e; Wed, 16 Oct 2024 11:01:51 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t0zug-00GdhR-31;
	Wed, 16 Oct 2024 11:01:50 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 16 Oct 2024 11:01:44 +0200
Message-Id: <20241016090150.3963002-8-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20241016090150.3963002-1-a.fatoum@pengutronix.de>
References: <20241016090150.3963002-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241016_020201_271853_5A52C118 
X-CRM114-Status: GOOD (  10.51  )
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
Subject: [PATCH 07/13] environment: stub out environment API for PBL
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

To optimize out calls to undefined functions in PBL at compile-time
instead of link time, let's define stubs for the functions that
are referenced in obj-pbl-y files, but inside function sections
that are ultimately unreferenced.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/environment.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/environment.h b/include/environment.h
index 8b143c16b7ad..d8871109362a 100644
--- a/include/environment.h
+++ b/include/environment.h
@@ -29,7 +29,7 @@ struct env_context *get_current_context(void);
 char *var_val(struct variable_d *);
 char *var_name(struct variable_d *);
 
-#ifdef CONFIG_ENVIRONMENT_VARIABLES
+#if IS_PROPER(CONFIG_ENVIRONMENT_VARIABLES)
 const char *getenv(const char *);
 int setenv(const char *, const char *);
 int pr_setenv(const char *, const char *fmt, ...)  __attribute__ ((format(__printf__, 2, 3)));
-- 
2.39.5



