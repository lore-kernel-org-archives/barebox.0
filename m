Delivery-date: Tue, 16 Jul 2024 13:59:08 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sTgpo-005Qt8-1L
	for lore@lore.pengutronix.de;
	Tue, 16 Jul 2024 13:59:08 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sTgpn-0001jM-RX
	for lore@pengutronix.de; Tue, 16 Jul 2024 13:59:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Bk8jRLPrcYpyUmmPawxzwMAKXISrzA6Fl6GHDJrtPXo=; b=JDN2HlsU9LPYzRQ6vd+1yZJNZs
	q8gEUyt5hqAh7nISDRRuhiDNu9FaWboLz/fpiQBwrSdWe3OmufOmTLddf98DkMQcC7yCJ3YkaSz/D
	XQVrmOeKZV3TuPh30H002GXbG7lPDn/srVlumx31C05HWtsdGQlB3k66e88AteTCyRIzZVcE/APyx
	4l4n+/GatV4eGevL7OGZ7f6S8o7tf7A420KkA+t9vpPuCMF8MXCGHCkEPnuMhrDDpMf0HOgD9E/5O
	/XR/26h+TgTrTXq2a0lpzCG/+jPq5h7w0qG+Y59V7B1q+H4y74y6UWDfV8N1DbnYakOq96W5MWDIC
	immneoMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTgpN-0000000AKf2-39kq;
	Tue, 16 Jul 2024 11:58:41 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTgpJ-0000000AKbz-1w1o
	for barebox@lists.infradead.org;
	Tue, 16 Jul 2024 11:58:39 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sTgpI-0001O8-56; Tue, 16 Jul 2024 13:58:36 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sTgpH-0007Z2-OM; Tue, 16 Jul 2024 13:58:35 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sTgpH-008FTm-2A;
	Tue, 16 Jul 2024 13:58:35 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 16 Jul 2024 13:58:29 +0200
Message-Id: <20240716115834.1958413-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240716115834.1958413-1-a.fatoum@pengutronix.de>
References: <20240716115834.1958413-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240716_045837_537114_67039B5C 
X-CRM114-Status: UNSURE (   7.47  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/8] stringlist: make header self-contained
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The header has static inline functions that reference free(), so include
<malloc.h> which defines its prototype.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/stringlist.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/include/stringlist.h b/include/stringlist.h
index 01491082ea02..60b96ecb8319 100644
--- a/include/stringlist.h
+++ b/include/stringlist.h
@@ -3,6 +3,7 @@
 #define __STRINGLIST_H
 
 #include <linux/list.h>
+#include <malloc.h>
 
 struct string_list {
 	struct list_head list;
-- 
2.39.2



