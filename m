Delivery-date: Thu, 21 Sep 2023 11:45:12 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qjGFF-005jaa-QS
	for lore@lore.pengutronix.de; Thu, 21 Sep 2023 11:45:12 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qjGFD-0000i1-Qj
	for lore@pengutronix.de; Thu, 21 Sep 2023 11:45:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=nDFPSRzGKVB5C4ySiJ+DEvonmOFJGvV67vhSktzIEbI=; b=Ro2/78twTrfUxDSJi1QZNf9e/4
	4oxZHVwv0W1hRea39FlwGH0l2/k77vWoMpx/ur99HHIDG8qkIjwvi4EOY1O3h7xNA0V93r3jkWLUx
	sQRB0UGzJFaBa/MDYByZauTesqLh6azLiiwLJaxCOUMHNCm1HxKdKQa/rBkE0J49zHzv5RIEmb7hG
	V10t5ToFVFPKy09hfCHKFzzAOLjGw2QXRcAAXqMxxjqHa50paq7RLLX+oM6nNR/WPVIZA/A5wG5et
	0Xjfm6/25z04mlvcxSnOVXBqhcU1LdVL03AJiFGAQo1A0/RdKfhnvImNmR5RJyNnLGv0Bs0g8EsiY
	qGc7tBAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qjGEB-005ce9-30;
	Thu, 21 Sep 2023 09:44:07 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qjGE9-005ccs-1Z
	for barebox@lists.infradead.org;
	Thu, 21 Sep 2023 09:44:06 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qjGE0-0000Kp-9C; Thu, 21 Sep 2023 11:43:56 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qjGDz-007tVg-T9; Thu, 21 Sep 2023 11:43:55 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qjGDz-0017Eb-2k;
	Thu, 21 Sep 2023 11:43:55 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 21 Sep 2023 11:43:54 +0200
Message-Id: <20230921094354.265824-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230921094354.265824-1-a.fatoum@pengutronix.de>
References: <20230921094354.265824-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230921_024405_526880_2DC78A70 
X-CRM114-Status: UNSURE (   9.80  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] include: add linux/atomic.h header
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Linux code usually uses <linux/atomic.h>, so let's have the same in
barebox, which just includes asm-generic/atomic.h.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/linux/atomic.h | 7 +++++++
 1 file changed, 7 insertions(+)
 create mode 100644 include/linux/atomic.h

diff --git a/include/linux/atomic.h b/include/linux/atomic.h
new file mode 100644
index 000000000000..9304ab4a34ba
--- /dev/null
+++ b/include/linux/atomic.h
@@ -0,0 +1,7 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+#ifndef LINUX_ATOMIC_H_
+#define LINUX_ATOMIC_H_
+
+#include <asm-generic/atomic.h>
+
+#endif
-- 
2.39.2



