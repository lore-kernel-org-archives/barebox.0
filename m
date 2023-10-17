Delivery-date: Tue, 17 Oct 2023 23:37:31 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qsrkp-00CDIt-Uy
	for lore@lore.pengutronix.de; Tue, 17 Oct 2023 23:37:31 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qsrko-0008If-Re
	for lore@pengutronix.de; Tue, 17 Oct 2023 23:37:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=yGY2uTu+XoCKAfirN0W3cz9lr8yegzRtZ7iCWaiUyjA=; b=sajyFhw7cqdMGPaxkb+OEcZjv2
	Zquyvaw9/FYVIG5UDqNwRVxZDHy5ZRREePS+eqMmRBRyLZhHTc5+Vj8k9OTPQAWv8LhbVtBLp5u5J
	rH8VcDTVEuvPV3jnU5GY0/YbdrIC/RuMfpVX4ftDyVZGhkqJXPLy/TcfZ7CzScc93rjbiA0WHEKEV
	L04NwM2u8enXo4MvsYwLOjkeAsxH2UJG7uqPBHlGRSlHLon72Yb94lAXSepkN5JtnnKc1zcWi0JE0
	pWwYHl6SmpoxzFmxJBbuovbegAP17t5iUBM7Z24BCxTHKLXix9b7OZws3WsoS1ptGJ/evmCXHV2G9
	IelAhm/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qsrjd-00DJC2-3C;
	Tue, 17 Oct 2023 21:36:17 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qsrja-00DJA5-0W
	for barebox@lists.infradead.org;
	Tue, 17 Oct 2023 21:36:15 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1qsrjW-0007wO-T6
	for barebox@lists.infradead.org; Tue, 17 Oct 2023 23:36:10 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1qsrjW-002PIW-GM
	for barebox@lists.infradead.org; Tue, 17 Oct 2023 23:36:10 +0200
Received: from mfe by dude02.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1qsrjW-00Ef1i-1R
	for barebox@lists.infradead.org;
	Tue, 17 Oct 2023 23:36:10 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue, 17 Oct 2023 23:36:05 +0200
Message-Id: <20231017213608.3494255-2-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231017213608.3494255-1-m.felsch@pengutronix.de>
References: <20231017213608.3494255-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231017_143614_206034_4515E86D 
X-CRM114-Status: UNSURE (   9.47  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/4] scripts: common: fix read_file_2 for windows
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Marco Felsch <marco.felsch@gmail.com>

We need to specify the O_BINARY flag for Windows else the followed
read() may detected a EOF condition.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 scripts/common.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/scripts/common.c b/scripts/common.c
index 88173bc977..0599cd41ff 100644
--- a/scripts/common.c
+++ b/scripts/common.c
@@ -11,6 +11,7 @@
 #include <stdarg.h>
 
 #include "common.h"
+#include "compiler.h"
 
 int read_file_2(const char *filename, size_t *size, void **outbuf, size_t max_size)
 {
@@ -22,7 +23,7 @@ int read_file_2(const char *filename, size_t *size, void **outbuf, size_t max_si
 	*size = 0;
 	*outbuf = NULL;
 
-	fd = open(filename, O_RDONLY);
+	fd = open(filename, O_RDONLY | O_BINARY);
 	if (fd < 0) {
 		fprintf(stderr, "Cannot open %s: %s\n", filename, strerror(errno));
 		return -errno;
-- 
2.41.0



