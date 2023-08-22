Delivery-date: Tue, 22 Aug 2023 09:49:11 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qYM8W-004Trc-Lp
	for lore@lore.pengutronix.de; Tue, 22 Aug 2023 09:49:11 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qYM8U-0002Aw-M4
	for lore@pengutronix.de; Tue, 22 Aug 2023 09:49:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=g9O3unazMjnZ7RACzMGJ+biyA+lnkX6UvVIlAZpJY+k=; b=UmGnyQC3w6JM7/89pGMzHWjed/
	d7XspRApUBY8PgVMIBfkSGrqgwX/sQiTDeUKYvqr5++XBWyaWiX232KiltzZISm3kOx5vZxo4pUJ3
	6Llh9jH1+hPVr7rGd3i4OoT2a6BjzU2J9HDrpuYxyNEo4LM/H+2vRXzkxgq/48TWDiXeBSrhOvjud
	wMp9wpu4mhpMetxUYfYDovrv+d6zz0zhmYgfLxGNNLXO2h3RMD77qnnSzEx8xuhofadcwJdKObdYJ
	1gBKaQEr/lzylFwMz7+BKxNcFct/QmuLm8Kbeygmv0n/b5nuJrkl5pf1m6Nstk98ji7/UG0KjLp6a
	/TlscKZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qYM7C-00FO7e-0P;
	Tue, 22 Aug 2023 07:47:50 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qYM78-00FO5z-0c
	for barebox@lists.infradead.org;
	Tue, 22 Aug 2023 07:47:48 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qYM73-0001ya-1N; Tue, 22 Aug 2023 09:47:41 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qYM72-000lPP-CO; Tue, 22 Aug 2023 09:47:40 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qYM72-00GNwn-0H;
	Tue, 22 Aug 2023 09:47:40 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 22 Aug 2023 09:47:37 +0200
Message-Id: <20230822074738.3905283-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230822074738.3905283-1-a.fatoum@pengutronix.de>
References: <20230822074738.3905283-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230822_004746_230034_A802BCF7 
X-CRM114-Status: UNSURE (   9.40  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master 2/3] restart: fix restart_handler_get_by_name documentation
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

restart_handler_get_by_name() does what its name suggests, so reflect
that in the documentation comment.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/restart.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/common/restart.c b/common/restart.c
index 0294b36eccca..35cfb542519d 100644
--- a/common/restart.c
+++ b/common/restart.c
@@ -74,7 +74,7 @@ int restart_handler_register_fn(const char *name,
 }
 
 /**
- * restart_handler_get_by_name() - reset the whole system
+ * restart_handler_get_by_name() - get highest priority `name'
  */
 struct restart_handler *restart_handler_get_by_name(const char *name, int flags)
 {
-- 
2.39.2



