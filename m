Delivery-date: Wed, 06 Jul 2022 15:28:25 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o954o-007kpJ-I4
	for lore@lore.pengutronix.de; Wed, 06 Jul 2022 15:28:25 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o954q-0007c9-Nc
	for lore@pengutronix.de; Wed, 06 Jul 2022 15:28:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=ZbqM2OuhTEmNF3d8VIjLHGw7L28F61G297hU+koS/GQ=; b=f66hTNj6I8H7yaFEQqaQnSqt0l
	idyFHr3mWlTt4ffmDuf8zb5LnXx9lQml5yeIhvhlSKRaCANRnO3vMdQx4whpLwaqYZGPLxEkK0U2N
	xorb7u5Nhflod/+dDo9fnzoewlxA2mMIlNCOR+oZtPkPaPmMeMGLXztD8gGs5fRQ21szHDw36FnZ2
	XhEtOP/uQsKCanrBntQiNbiSmIKHZSQQz9j/jC+mKwJJ4IOmYLoyjqbQFAs9scv6eqlsSzziczccY
	cXMr5rWHaPFzugzLT50+iEtC9y8khPzVZmh4/hnfGObAgGFCYY1PjanQ8xPD6Cnkdxdkiwyz9m/dK
	ScMg7SRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o953K-00AGD3-3d; Wed, 06 Jul 2022 13:26:50 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o953F-00AGC8-HF
	for barebox@lists.infradead.org; Wed, 06 Jul 2022 13:26:47 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1o953A-0007GC-RO
	for barebox@lists.infradead.org; Wed, 06 Jul 2022 15:26:40 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1o9536-004lkf-KO
	for barebox@lists.infradead.org; Wed, 06 Jul 2022 15:26:40 +0200
Received: from mfe by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1o9539-0096kk-FQ
	for barebox@lists.infradead.org; Wed, 06 Jul 2022 15:26:39 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Wed,  6 Jul 2022 15:26:37 +0200
Message-Id: <20220706132637.2170562-1-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220706_062645_606283_0CB275D3 
X-CRM114-Status: GOOD (  11.71  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] console: add new CONSOLE_FULL_BUFFERSIZE option
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Make the early printk buffer size adjustable since I noticed truncated
log buffers if I enable DEBUG_INITCALLS and DEBUG_PROBES.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 common/Kconfig   | 15 +++++++++++++++
 common/console.c |  2 +-
 2 files changed, 16 insertions(+), 1 deletion(-)

diff --git a/common/Kconfig b/common/Kconfig
index f7a6a96e87..365fef872f 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -761,6 +761,21 @@ config CONSOLE_NONE
 
 endchoice
 
+if CONSOLE_FULL
+
+config CONSOLE_FULL_BUFFERSIZE
+	int
+	prompt "Console buffer size in Bytes"
+	default 1024
+	help
+	  Size Bytes of the early console buffer. This buffer is used
+	  before malloc is intialized. In rare cases the buffer is to
+	  small to hold all early messages e.g. if DEBUG_INITCALLS and
+	  DEBUG_PROBES are enabled. In such cases you can adapt the size
+	  by the option, if unsure don't change it.
+
+endif
+
 choice
 	prompt "Console activation strategy"
 	depends on CONSOLE_FULL
diff --git a/common/console.c b/common/console.c
index 8727b187cf..6c3c1f2b3c 100644
--- a/common/console.c
+++ b/common/console.c
@@ -36,7 +36,7 @@ EXPORT_SYMBOL(console_list);
 
 static int initialized = 0;
 
-#define CONSOLE_BUFFER_SIZE	1024
+#define CONSOLE_BUFFER_SIZE	CONFIG_CONSOLE_FULL_BUFFERSIZE
 
 static char console_input_buffer[CONSOLE_BUFFER_SIZE];
 static char console_output_buffer[CONSOLE_BUFFER_SIZE];
-- 
2.30.2



