Delivery-date: Mon, 12 Jun 2023 15:03:38 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q8hCu-003qZk-8p
	for lore@lore.pengutronix.de; Mon, 12 Jun 2023 15:03:38 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q8hCr-0000bj-92
	for lore@pengutronix.de; Mon, 12 Jun 2023 15:03:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vbKkVZ41ldgzF7FTOAREIEHlpCSav+iVvMlPV/VACt4=; b=PofoX1N/yKdTjdwKrd4qjpvzTt
	fpj8RwmKDWu3gAu4E9FxW/stqzeY26KvynlbNjbr5OpOjxlQfTFOrBlPbEAZ1d0Ec3GB3DMjeKtiz
	XFKQAF/JUhrVeB4nFAczgY7MKWFrr4IPEBZOEMLHGO+XXuejhKZ7LVwdjqA0HZaKRQgCRcUmol86R
	VjROPb2IYtKwkF1p94Lcu05QYB5dzu+wzM2+Rl3rrbKTmM/VaUSrlojWmGk+ExBW6IVAC+PtaziCo
	s/r/FIyxn4zvGd0ciRBymth2keDfac+RgiWYdmhRTJUjRzCdTIsNFoJBwIDcitcgKjp0qx3VpWHXg
	2xE0qDKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q8hCB-0047H7-2N;
	Mon, 12 Jun 2023 13:02:55 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q8hC6-0047CI-22
	for barebox@lists.infradead.org;
	Mon, 12 Jun 2023 13:02:53 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1q8hC5-0008KT-99; Mon, 12 Jun 2023 15:02:49 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q8hC4-006tVJ-CE; Mon, 12 Jun 2023 15:02:48 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q8hC3-004aJZ-5y; Mon, 12 Jun 2023 15:02:47 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 12 Jun 2023 15:02:29 +0200
Message-Id: <20230612130239.1087599-9-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230612130239.1087599-1-a.fatoum@pengutronix.de>
References: <20230612130239.1087599-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230612_060250_690666_05E7830A 
X-CRM114-Status: GOOD (  10.31  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 08/19] test: self: printf: silence clang warnings
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We added -Wno-format-security a short while back, because we didn't want
GCC to warn us about possible format string issues in the self test that's
meant to exercise the printf facility. In a similar vein, clang also
sees potential problems in the code, so hide it, just for that file,
with -Wno-format.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 test/self/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/test/self/Makefile b/test/self/Makefile
index 080ef303cc35..78a337810d1f 100644
--- a/test/self/Makefile
+++ b/test/self/Makefile
@@ -3,7 +3,7 @@
 obj-$(CONFIG_SELFTEST) += core.o
 obj-$(CONFIG_SELFTEST_MALLOC) += malloc.o
 obj-$(CONFIG_SELFTEST_PRINTF) += printf.o
-CFLAGS_printf.o += -Wno-format-security
+CFLAGS_printf.o += -Wno-format-security -Wno-format
 obj-$(CONFIG_SELFTEST_PROGRESS_NOTIFIER) += progress-notifier.o
 obj-$(CONFIG_SELFTEST_OF_MANIPULATION) += of_manipulation.o of_manipulation.dtb.o
 obj-$(CONFIG_SELFTEST_ENVIRONMENT_VARIABLES) += envvar.o
-- 
2.39.2



