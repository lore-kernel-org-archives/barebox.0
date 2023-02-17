Delivery-date: Fri, 17 Feb 2023 21:43:22 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pT7Zi-00AOcH-RL
	for lore@lore.pengutronix.de; Fri, 17 Feb 2023 21:43:22 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pT7Zh-0000xc-Pa
	for lore@pengutronix.de; Fri, 17 Feb 2023 21:43:22 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=dK83FfUTah/j1MznbkjMYG5Va697+++rwUNVzYx67ts=; b=VRvF/3vw3cHSZsWtabGyyBrQtJ
	puB3rV7Q1UWxTx0yPqVD9mUL1DscqJTW0BRVAE+J7XAMX8GPzMrWirnDshqlu9+sGVOUuj9b8F89h
	SEAYbY3Fsd0ndf5aZNCNOLSmUM3j1QHBmnRJTvLZrQ+ZrXoDW688fCaD7GUcoVadFvoXfTrklnb+i
	n0FB396PyRLh2wFgyQrD9aApyCQkHwAe36rPgdXcgJOudDDyuUOCYzozwEFpE8xOC31J1LOoXD+AY
	oogrFL1L4IAEf9d3U/T41KfxhSU2g07PqLutytdfLQRTSGEs0ylU8V0qwl/UtFM0TwzS56I+7pRwy
	U/mLN8ww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pT7Yc-00Ff4m-7T; Fri, 17 Feb 2023 20:42:14 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pT7YY-00Ff4F-ET
	for barebox@lists.infradead.org; Fri, 17 Feb 2023 20:42:11 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pT7YX-0000sf-4g; Fri, 17 Feb 2023 21:42:09 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pT7YV-005fE2-8v; Fri, 17 Feb 2023 21:42:08 +0100
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pT7YV-00CInI-HQ; Fri, 17 Feb 2023 21:42:07 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 17 Feb 2023 21:42:04 +0100
Message-Id: <20230217204204.2931805-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230217_124210_497694_35447AA9 
X-CRM114-Status: UNSURE (   8.26  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH RESEND] test: include <linux/printk.h>
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We use pr_print logging in bselftest.h, so include the header that
defines these macros.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
Patch was part of reverted TLSF 8-byte alignment series, but is still
applicable, so resending it.
---
 include/bselftest.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/include/bselftest.h b/include/bselftest.h
index 2bae6cd1393d..c3f323864358 100644
--- a/include/bselftest.h
+++ b/include/bselftest.h
@@ -4,6 +4,7 @@
 
 #include <linux/compiler.h>
 #include <linux/list.h>
+#include <linux/printk.h>
 #include <init.h>
 
 enum bselftest_group {
-- 
2.30.2



