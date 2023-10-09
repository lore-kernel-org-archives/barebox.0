Delivery-date: Mon, 09 Oct 2023 13:53:57 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qpoph-001qYV-EA
	for lore@lore.pengutronix.de; Mon, 09 Oct 2023 13:53:57 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qpopg-0002HT-9A
	for lore@pengutronix.de; Mon, 09 Oct 2023 13:53:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=gA/xYeV5u+SE0uB0+QTt70gUleAOhePtiBwIXHhQgjs=; b=Dfg/icY1FL9mnfnM8Phl4aVzAN
	NGBhgU1/mpH9vEQPZqI7cel5iQ+oBIUsDzhQ9FOyGWM34ZXiy3ef6w6hlV38DOVdZQtXIXs9abytV
	aM2eshHKB+neTFd+RFq4e8NRi/votisVdfS2JNIXe9QgpZ/kEJ5KXnSjYzHi878/Vi4kxJpDcM3sV
	19YQ/YiuTQ+B0K4okSIjEHqdbfEO8BSlDB90uTp3qBPPviS574x9ZH6wB+MkL3XrAvlmOfjXC7tzN
	g5Flh1ZqTK3tjdox3NNgYTona7rW5DwgdmC7EkEV++9TcVoZ35GmqvhmPU3LRebP8w0R7s8bMB6um
	HMDEQ3Jg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qpooY-00AWBu-0q;
	Mon, 09 Oct 2023 11:52:46 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qpooT-00AW9v-26
	for barebox@lists.infradead.org;
	Mon, 09 Oct 2023 11:52:43 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qpooS-0001fo-Dy; Mon, 09 Oct 2023 13:52:40 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qpooR-000P3T-WA; Mon, 09 Oct 2023 13:52:40 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qpooR-009nkj-33;
	Mon, 09 Oct 2023 13:52:39 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  9 Oct 2023 13:52:35 +0200
Message-Id: <20231009115239.2291016-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231009_045241_695892_D587547D 
X-CRM114-Status: UNSURE (   7.97  )
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
Subject: [PATCH 1/5] lib: ubsan: disable sanitization for UBSAN implementation
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

As done in Linux, the implementation of ubsan itself should not be
instrumented by KASAN and stack protector.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 lib/Makefile | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/lib/Makefile b/lib/Makefile
index 2b577becc444..791080b2d158 100644
--- a/lib/Makefile
+++ b/lib/Makefile
@@ -89,6 +89,8 @@ obj-$(CONFIG_GENERIC_LIB_MULDI3)  += muldi3.o
 pbl-$(CONFIG_GENERIC_LIB_ASHLDI3) += ashldi3.o
 
 UBSAN_SANITIZE_ubsan.o := n
+KASAN_SANITIZE_ubsan.o := n
+CFLAGS_ubsan.o := -fno-stack-protector
 
 libfdt_files = fdt.o fdt_ro.o fdt_wip.o fdt_rw.o fdt_sw.o fdt_strerror.o \
 	                      fdt_empty_tree.o
-- 
2.39.2



