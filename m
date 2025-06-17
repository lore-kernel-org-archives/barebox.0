Delivery-date: Tue, 17 Jun 2025 15:20:30 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uRWEo-008Haf-2u
	for lore@lore.pengutronix.de;
	Tue, 17 Jun 2025 15:20:30 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uRWEo-0001E9-Cv
	for lore@pengutronix.de; Tue, 17 Jun 2025 15:20:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=/NMAjqxE2IK/3fZhyQ8THxlC0woOWuNcBhBQJgYWXXE=; b=KN2CTCT8liq0c1xqyu1wK8gV8m
	T2FA+CdNvTCn3lJJp2NQ+LTqXChvB7leCONXwdUmTXemm2SdpE+i55G2EESL/vt0DG+HN1r2t+aU0
	+yUbqqKmmnmPBSx6m0HHN4+R6HsBX6pxhuLw645ST3/qFsqyarCOjJ9suFLN2B1YNmHc2TiDX5bqU
	Xoyw8kguA8fi44R9aW0XllB54QVBlv3ZvGDcGRrZYlfpW4bfCIadNwfiiDNE7bNhJYe4+KGWd45zX
	QSTuuwOvQxPKzDybtfbVj9wDd/NfOW+82CCZslsvXFAZc2nJimhhWmuPE2PPBLH76GRA6B7+VtMHa
	PE/SlSgg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRWE5-00000007K8e-05js;
	Tue, 17 Jun 2025 13:19:45 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRVeF-00000007DW8-2TFI
	for barebox@lists.infradead.org;
	Tue, 17 Jun 2025 12:42:45 +0000
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <bst@pengutronix.de>)
	id 1uRVeC-0006W5-C6; Tue, 17 Jun 2025 14:42:40 +0200
From: Bastian Krause <bst@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>,
	Bastian Krause <bst@pengutronix.de>
Date: Tue, 17 Jun 2025 14:42:38 +0200
Message-Id: <20250617124238.2024714-1-bst@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250617_054243_634536_46BB0CBE 
X-CRM114-Status: UNSURE (   9.61  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] console: handle input consoles in of_console_by_stdout_path() gracefully
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

With CONFIG_INPUT=y, inputs are registered as consoles without setting
the dev member. This leads to a NULL pointer dereference when passed to
dev_of_node().

So add a check prior to calling dev_of_node() with a NULL pointer to
prevent this.

Signed-off-by: Bastian Krause <bst@pengutronix.de>
---
 common/console.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/common/console.c b/common/console.c
index f94dbe3243c..424290b6cd1 100644
--- a/common/console.c
+++ b/common/console.c
@@ -264,7 +264,7 @@ struct console_device *of_console_by_stdout_path(void)
 		return NULL;
 
 	for_each_console(console) {
-		if (dev_of_node(console->dev) == stdout_np)
+		if (console->dev && dev_of_node(console->dev) == stdout_np)
 			return console;
 	}
 
-- 
2.39.5



