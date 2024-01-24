Delivery-date: Wed, 24 Jan 2024 16:49:00 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rSfUp-00GVGX-0t
	for lore@lore.pengutronix.de;
	Wed, 24 Jan 2024 16:49:00 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rSfUp-0006t4-Ut
	for lore@pengutronix.de; Wed, 24 Jan 2024 16:49:00 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=cqvzvXA1VJTYt56qZX0g1TPbGYAYZ7wRlBW3BCsS8V4=; b=3PjQIpV9HzkjMCWR+Yr3ms5yap
	eb782hB4YbZZA3CKhg316Nql2Wu8bvVJJpbsM4nlYIKpAHS1XKh2FOWLBlfRkJTggC37cX9QUKISN
	LjdekS9V7T6L4Aa/VL2M6+R35cu89FQ1Nba4ccT5wMXXCfL2KtB4f/5MTs+YNK1pOJAK5pUi8SRXI
	LRJ53FhkLfdDkPUplXcqfeUa+QBjYE4zlOKmr8Ca92E0DJwgvDoEER3in4xJCbHaUYdR/bKo4J28P
	N/2uPI5alZy9kcOgAaXYKmGs9Bf3faD1Jg68FU5S1DodRMWUrN/fhb7JquktQ8KGJ1zjDNvYxvXUS
	ivRjTTnw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rSfTh-0042DL-30;
	Wed, 24 Jan 2024 15:47:49 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rSfTc-00428o-12
	for barebox@lists.infradead.org;
	Wed, 24 Jan 2024 15:47:47 +0000
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <bst@pengutronix.de>)
	id 1rSfTV-0006lz-QQ; Wed, 24 Jan 2024 16:47:37 +0100
From: Bastian Krause <bst@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Marco Felsch <m.felsch@pengutronix.de>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>,
	Bastian Krause <bst@pengutronix.de>
Date: Wed, 24 Jan 2024 16:47:28 +0100
Message-Id: <20240124154728.901305-2-bst@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240124154728.901305-1-bst@pengutronix.de>
References: <20240124154728.901305-1-bst@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240124_074744_354705_0A9D70A7 
X-CRM114-Status: UNSURE (   7.48  )
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
X-Spam-Status: No, score=-6.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 2/2] usbgadget: add bbu fastboot partition naming scheme
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Signed-off-by: Bastian Krause <bst@pengutronix.de>
---
New patch, no v1 available.
---
 commands/usbgadget.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/commands/usbgadget.c b/commands/usbgadget.c
index d0dcde69cec..e69660fde54 100644
--- a/commands/usbgadget.c
+++ b/commands/usbgadget.c
@@ -61,7 +61,8 @@ BAREBOX_CMD_HELP_TEXT("Options:")
 BAREBOX_CMD_HELP_OPT ("-a\t", "Create CDC ACM function")
 BAREBOX_CMD_HELP_OPT ("-A <desc>", "Create Android Fastboot function. If 'desc' is not provided, "
 				   "try to use 'global.fastboot.partitions' variable.")
-BAREBOX_CMD_HELP_OPT ("-b\t", "include registered barebox update handlers (fastboot specific)")
+BAREBOX_CMD_HELP_OPT ("-b\t", "include registered barebox update handlers (fastboot specific,"
+			      "exported as 'bbu-<update_handler_name>' partitions)")
 BAREBOX_CMD_HELP_OPT ("-D <desc>", "Create DFU function. If 'desc' is not provided, "
 				   "try to use 'global.usbgadget.dfu_function' variable.")
 BAREBOX_CMD_HELP_OPT ("-S <desc>", "Create USB Mass Storage function. If 'desc' is not provided,"
-- 
2.39.2



