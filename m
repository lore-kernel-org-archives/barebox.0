Delivery-date: Fri, 19 Jan 2024 15:25:49 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rQpoa-0079Zz-0M
	for lore@lore.pengutronix.de;
	Fri, 19 Jan 2024 15:25:49 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rQpoa-0003lJ-Qb
	for lore@pengutronix.de; Fri, 19 Jan 2024 15:25:49 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4+rZyLr4Ki6IkM9xp+4hux47OKVE5Clj9+NtdphqhIs=; b=Jjc7n0sXt2z/wqEysGC3ZWB+eN
	4q8nPgTvqUBMd9MTn3FeAFAlchkO1tLftBMq1kTuiS6hKFEt3fSq6htWOqllyORj3P4zGZ4ngEWX2
	3pv/vdn4FksYnHNSSPDuOUdbk7ltRZ61EvjKeLhgRdhne56BMIo819cmMvNGf2V1l5Nf7l9d7Etwf
	8fQnJSrCw85xg0AkHJchVf/uDumBDOz2ireMsZD3TiuFygH/RMV9lGGKh8TNu7FsZo4iApbcfofcL
	Nh6pGSLNfn8mAKQnP1qZGmMP/Qxulmy759XiLFU1vG2HNdim6dLMdat+A1xBlqYPWYgjFuAst7naE
	5gu/bPtg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rQpnL-005prd-0x;
	Fri, 19 Jan 2024 14:24:31 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rQpnE-005pnS-2W
	for barebox@lists.infradead.org;
	Fri, 19 Jan 2024 14:24:28 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rQpn5-0003OU-Es; Fri, 19 Jan 2024 15:24:15 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rQpn5-000wI6-2X; Fri, 19 Jan 2024 15:24:15 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rQpn4-00DczL-39;
	Fri, 19 Jan 2024 15:24:15 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri, 19 Jan 2024 15:24:08 +0100
Message-Id: <20240119142413.3206832-3-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240119142413.3206832-1-s.hauer@pengutronix.de>
References: <20240119142413.3206832-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240119_062424_883196_021A6B46 
X-CRM114-Status: UNSURE (   9.29  )
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
X-Spam-Status: No, score=-6.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 2/7] firmware: add missing include
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

include/firmware.h uses _text and as such needs asm/sections.h. Add the
missing include.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/firmware.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/include/firmware.h b/include/firmware.h
index 93c800e11b..361ff2f8ae 100644
--- a/include/firmware.h
+++ b/include/firmware.h
@@ -12,6 +12,7 @@
 #include <driver.h>
 #include <debug_ll.h>
 #include <linux/kernel.h>
+#include <asm/sections.h>
 
 struct firmware {
 	size_t size;
-- 
2.39.2



