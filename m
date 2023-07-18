Delivery-date: Wed, 19 Jul 2023 10:32:06 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qM2bP-002lP6-DQ
	for lore@lore.pengutronix.de; Wed, 19 Jul 2023 10:32:06 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qM2bM-0006Di-Tf
	for lore@pengutronix.de; Wed, 19 Jul 2023 10:32:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=PhY6HhRB1cZmT5FEL1RnL2bI6fckSPmeo8GkiGFfSfY=; b=jRGYk1Ra8HiCKw
	IodX3BhTL6SYw/kVU2g1wlLjXPLuI7cQB27PVn1OACihpJtpwaCZVduVakF8eUMjvhg2N62I+z+1F
	9isaiSafS8t90y5CrIrj8xkD5gwRRt6EIXOGq3/JHzRtrUxfjK/paIHFV1DUwUGGzT1irBnTb8oL0
	ZUpUHRHt+82Kz/aVkEaI4rOJjUv18Chz4gWGXD7Nhw4DPgPqFpEMjMTvOPmr8fZUjhcuoN/zG33tq
	P9IbBIifiPvzRhz/AbmY0yRMXgzHPcPfPoGRKzaiat0epEk6jGJLAdO88GwXcEK/IHe76jaV13Muk
	9AeQb4YTJ2DTUHm8FSlg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qM2Zz-006Mi0-2H;
	Wed, 19 Jul 2023 08:30:39 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qM2Zx-006Mgr-1P
	for barebox@bombadil.infradead.org;
	Wed, 19 Jul 2023 08:30:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=PhY6HhRB1cZmT5FEL1RnL2bI6fckSPmeo8GkiGFfSfY=; b=JSe1qINUKkfwaXZ+wK13oh+Xn4
	JYzuU1kDb9VvoxQdnbB76AFtVRubHD0oMxIF0yVPjlMywKlpBVYaYO/s/5QeGa1j7XB0yfRmRhnmP
	xFsLQjEUwSigiBEJmvkwWW2BxvonNRUX/tdkD37Z6VM7Eb1pZHlr7uQhryVX6u8AVdLiSY5c1lUAt
	XlNA51w48wNGq/Di+HFAHzejlMF+1ssALqAA++wGVxC94BO6SrykdVB/EjocitDUxoboVoWu5nTd2
	kB+tsil3EjLZT4OZUscX4ngrZZpVmGLbwJaSL/bWwkadaqcikEK4dF8Gnh8eII1ZswmwrgkcFMCJ+
	y/TRlndw==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qLhaN-00BOiM-35
	for barebox@lists.infradead.org;
	Tue, 18 Jul 2023 10:05:42 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qLhXh-0006yO-Gj; Tue, 18 Jul 2023 12:02:53 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qLhXe-000LBK-7s; Tue, 18 Jul 2023 12:02:50 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qLhXe-003g6I-0K;
	Tue, 18 Jul 2023 12:02:50 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue, 18 Jul 2023 12:02:48 +0200
Message-Id: <20230718100248.875155-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230718_110540_258746_0A99D48F 
X-CRM114-Status: GOOD (  11.26  )
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
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>, Ahmad Fatoum <a.fatoum@pengutronix.de>, Michael Tretter <m.tretter@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] common: bootm: support locating kernel in FIT image in zero page
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Since commit 7e2f6a1ffd64 ("uimage: disable zero page when loading to
SDRAM at address 0x0"), we allow locating images loaded from files at
address zero if that's within the SDRAM. This only applied to images
loaded with file_to_sdram() and images that were already in RAM were
still not allowed to overlap the zero page.

Fix this by doing in bootm_load_os() as was done in file_to_sdram(),
namely, disabling zero page trapping for the duration of the memcpy.
We need no further zero page handling afterwards, because kernel is
booted after paging is disabled.

Cc: Michael Tretter <m.tretter@pengutronix.de>
Reported-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/bootm.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/common/bootm.c b/common/bootm.c
index 791d6b8fbbf1..4845c40958ae 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -13,6 +13,7 @@
 #include <linux/stat.h>
 #include <magicvar.h>
 #include <uncompress.h>
+#include <zero_page.h>
 
 static LIST_HEAD(handler_list);
 
@@ -119,7 +120,7 @@ int bootm_load_os(struct image_data *data, unsigned long load_address)
 				(unsigned long long)load_address + kernel_size - 1);
 			return -ENOMEM;
 		}
-		memcpy((void *)load_address, kernel, kernel_size);
+		zero_page_memcpy((void *)load_address, kernel, kernel_size);
 		return 0;
 	}
 
-- 
2.39.2



