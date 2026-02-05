Delivery-date: Thu, 05 Feb 2026 18:12:16 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vo2ts-009Bq3-1b
	for lore@lore.pengutronix.de;
	Thu, 05 Feb 2026 18:12:16 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vo2tr-0001KO-Hh
	for lore@pengutronix.de; Thu, 05 Feb 2026 18:12:16 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=/3ZiTPMp4I/GRB4CvS2WKeF747dTm+szdmugmQK5BAU=; b=Kedb+JLvHhohqJJMNSZmAr+9G+
	8ymrdeCPTD6pl3X2U8xlBUtUS6rbwSCjKbdHTWRMrLE+Ee5pSoRIx3Ht3Sy6fjWWAPRvLL1Nz2C7i
	yqfO1g3MW7KB1G0iOUKl3Py7X9GGGQO15AT+oEU4xSuHUh0iZgnDKGikzIVGFknXbLZen9XUebRDX
	FtO/TGLwlxcQIQ/Fs+vAXV9nWUR+e6sul+w4YVHTt3V824QcpCcjWuZY6BwuKTPd7UvJ186GZM2Es
	ybJO5tDdblMbcMm9ySuJ65yHazTnA00aJYYuPqviwe9JpKj2VNBOhNh6vBA8X8HIfAw70SuEr+RpJ
	H3UJDxXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vo2tU-0000000AH5I-4A2k;
	Thu, 05 Feb 2026 17:11:53 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vo2tS-0000000AH3k-23Pt
	for barebox@lists.infradead.org;
	Thu, 05 Feb 2026 17:11:51 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vo2tQ-0001Cs-Nn; Thu, 05 Feb 2026 18:11:48 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vo2tQ-004H31-31;
	Thu, 05 Feb 2026 18:11:48 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vo2tQ-0000000CzXw-0hPb;
	Thu, 05 Feb 2026 18:11:48 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: 9l@9lo.re,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu,  5 Feb 2026 18:11:43 +0100
Message-ID: <20260205171147.3096490-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260205_091150_528664_86B51C73 
X-CRM114-Status: GOOD (  10.45  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] include: linux/printk.h: allow forcing log level per file
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We support defining DEBUG or VERBOSE_DEBUG to increase the log level per
file, but we lack a way to decrease the log level.

The latter could be useful when shotgun debugging with all debug logging
enabled, as otherwise some debug output may drown out everything else.

To support this, allow LOGLEVEL to be defined per file. We don't expect
that any files committed to tree would do this, but it may turn out to
be useful during debugging.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/linux/printk.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/linux/printk.h b/include/linux/printk.h
index 0d7180f0ebbc..b9b3ddeb4d39 100644
--- a/include/linux/printk.h
+++ b/include/linux/printk.h
@@ -22,7 +22,7 @@
 #define LOGLEVEL	MSG_VDEBUG
 #elif defined DEBUG
 #define LOGLEVEL	MSG_DEBUG
-#else
+#elif !defined(LOGLEVEL)
 #define LOGLEVEL	CONFIG_COMPILE_LOGLEVEL
 #endif
 
-- 
2.47.3



