Delivery-date: Mon, 05 Aug 2024 18:28:51 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sb0Zn-006Y2X-2q
	for lore@lore.pengutronix.de;
	Mon, 05 Aug 2024 18:28:51 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sb0Zn-0007qT-Ay
	for lore@pengutronix.de; Mon, 05 Aug 2024 18:28:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=bt/RQLVVlSvvdlMnhyns5eMoI1msdEm8HVVqeMHaJNs=; b=moSJscgBCk1ZKCNb79YV461Heq
	fnsG9wwt2kCG/mByWW2TDGm1sBUILLn7NKROjSP6tLLw/WdzqJFz0mqTwhZdDML46p48HT/XO1YZ0
	11FcIviPBfXtLLh/Um9lafvmVRWE8bP/j7QemFU8+omoL2R63fm6vZAdmIwSb65z71xjY9DbofmeG
	/EoVMzZDYrVT2b7sbLvCzrjHB17sgH1zGX9OtDyv3W9+tOJsV8HppX+RXuQiQ65DOcxBnacoyzoll
	oIr9Zdbh0H/mdNsx0KHpXSc1gHjh+BU1iF3ibUhNdL6z+RabTYozZq1BI0mTXPNCf2VOuqx8VvFiQ
	oPDIge5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sb0ZE-0000000GWIT-0Ki1;
	Mon, 05 Aug 2024 16:28:16 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sb0ZB-0000000GWGR-02vH
	for barebox@lists.infradead.org;
	Mon, 05 Aug 2024 16:28:14 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sb0Z8-0007m4-EP; Mon, 05 Aug 2024 18:28:10 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sb0Z8-004kmg-1f; Mon, 05 Aug 2024 18:28:10 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sb0Z7-00323m-36;
	Mon, 05 Aug 2024 18:28:10 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  5 Aug 2024 18:28:09 +0200
Message-Id: <20240805162809.722890-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240805_092813_070338_457CE920 
X-CRM114-Status: GOOD (  10.22  )
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
Subject: [PATCH] fixup! console: add new CONSOLE_ACTIVATE_ALL_FALLBACK option
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

console: fix CONSOLE_ACTIVATE_ALL_FALLBACK initcall enablement

This used to be enabled unconditionally and when the #ifdef was added,
it checked a never-defined symbol. Add the CONFIG_ prefix to fix this.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/console.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/common/console.c b/common/console.c
index 310959eeb8b4..136ed3b59803 100644
--- a/common/console.c
+++ b/common/console.c
@@ -480,7 +480,7 @@ static __maybe_unused int console_activate_all_fallback(void)
 
 	return 0;
 }
-#ifdef CONSOLE_ACTIVATE_ALL_FALLBACK
+#ifdef CONFIG_CONSOLE_ACTIVATE_ALL_FALLBACK
 postenvironment_initcall(console_activate_all_fallback);
 #endif
 
-- 
2.39.2



