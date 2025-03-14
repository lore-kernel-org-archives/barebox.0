Delivery-date: Fri, 14 Mar 2025 12:04:26 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tt2q3-00DyOd-0V
	for lore@lore.pengutronix.de;
	Fri, 14 Mar 2025 12:04:26 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tt2q1-00031N-PT
	for lore@pengutronix.de; Fri, 14 Mar 2025 12:04:26 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=JWBe7bc245kIZ2hbyW15nNIg3qoYEMeQggfnRM+Pk9M=; b=YjIA/fUu07Y2vRh97vRvC1VEeQ
	ZmJmqWdJXpwRf8hV8xnCbo1DPOJzEkzrUnfOpo06Bhi62/8o286gwc4lojiw/P7WG56wqmXd+rh8j
	8ODuiOKwObQB2PnTcFwODIQqwneAeK0ytN+Fqrjf0s+Qw6ZoaoDCV6SmL81TJB1I7lpxebz2YCeTb
	5zc4mpK6GrkJ+iw4+G4qapvR5+dvVopyBtHmnWwXVFtTVlFbsOeRFbu9ket+D1XQlso4vN6Aer0qO
	dWhTYtcsH+HHWEaOexxmj9upyT09TJfHm6zAmU56B0/PFVm12zCOgnpUCDZjwbzysZOfP9QBNk5H1
	JPNLJ0NA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tt2pc-0000000DwAB-1Ykw;
	Fri, 14 Mar 2025 11:04:00 +0000
Received: from zdiv.net ([2001:4b98:dc0:43:f816:3eff:fee4:1d8c])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tt2TJ-0000000DsoR-3R3V
	for barebox@lists.infradead.org;
	Fri, 14 Mar 2025 10:40:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=zdiv.net; s=24;
	t=1741948850;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=JWBe7bc245kIZ2hbyW15nNIg3qoYEMeQggfnRM+Pk9M=;
	b=JYHGdIFQKMZwV9fy2C+8EgHO/hwul08pl1BxlOnEMm/t3IzCfC7qdcITxpFoyp+BQXyarX
	lRD2NMmBNbmWJOGc6PAeRAhNZiv81eeQCDXtXJCmr2DW+iOt8c/ImepEvKL+B9XSVKWJBR
	+dwfgHXq4I3KBKZepGmmUP+gAaMjjjdwE5J+2XNhIUvb7BLtHo4tfcx+nZgbQCPOqqsRfL
	ckd/TRapx5yFzwKQs7oJPZOXv+ulDpw0s/M7PAHXcC35cOQWpx0XLVMhmSCand7HK4TUTA
	9I9tt89W6RMfociAlRk2oDVX29W+3UmhAViwnb0IU1d+kNu34KfQe6lT+mFmpA==
Received: from mini.my.domain (<unknown> [2a01:e0a:12:d860:4866:44ad:6a94:b4e])
	by zdiv.net (OpenSMTPD) with ESMTPSA id 93ab5d34 (TLSv1.3:TLS_AES_256_GCM_SHA384:256:NO);
	Fri, 14 Mar 2025 11:40:49 +0100 (CET)
From: Jules Maselbas <jmaselbas@zdiv.net>
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@zdiv.net>
Date: Fri, 14 Mar 2025 11:40:31 +0100
Message-ID: <20250314104034.13637-4-jmaselbas@zdiv.net>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250314104034.13637-1-jmaselbas@zdiv.net>
References: <20250314104034.13637-1-jmaselbas@zdiv.net>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250314_034058_166742_9D239915 
X-CRM114-Status: UNSURE (   6.94  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/6] mfd: tps65219: add missing include
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Signed-off-by: Jules Maselbas <jmaselbas@zdiv.net>
---
 drivers/mfd/tps65219.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/mfd/tps65219.c b/drivers/mfd/tps65219.c
index 854210537f..62280f2aa2 100644
--- a/drivers/mfd/tps65219.c
+++ b/drivers/mfd/tps65219.c
@@ -12,6 +12,7 @@
 #include <linux/regmap.h>
 #include <linux/mfd/tps65219.h>
 #include <linux/device.h>
+#include <linux/array_size.h>
 
 static const struct mfd_cell tps65219_cells[] = {
 	{ .name = "tps65219-regulator", },
-- 
2.48.1



