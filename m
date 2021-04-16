Delivery-date: Fri, 16 Apr 2021 11:58:13 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lXLEr-00018s-Ng
	for lore@lore.pengutronix.de; Fri, 16 Apr 2021 11:58:13 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lXLEq-0006Qj-BM
	for lore@pengutronix.de; Fri, 16 Apr 2021 11:58:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=dkuGH6N8/RFEO4vzkljNX8m36Nco8MK7yRdKKxrr/Uw=; b=eQVAkPTT14PM/fs0rFaB/gp2N
	SQQ84yOJw6OM294BjgrZzan0Vk7GX67FaGjyN7pSvap2LQALxo1dBZYEX0phqjCmqA7z2JNuwutRN
	3wo+XSIt76VASJDHUOR/LjJJnhjYz8gvT4ccZ1nPtAQlFj7TFadyRj24rR/h3U1dLLg0r+U0dMtsG
	q150Smd+r9UgNXOyVXv+ugbzC1Sx0f78bsn42ypi+rI7eARDmF0HrHK+EkV8jRKE3e1vApKnfz7/L
	odHJZYrH86ijF2CnKe9mvTDB69mFOQVZptwQ5b9IlEa+jBMXtTOukPit7dkDWQGRJdYV43fJ762dC
	epfn9vaBA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lXLDT-001dxO-1f; Fri, 16 Apr 2021 09:56:47 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lXL7L-001cUr-TT
 for barebox@desiato.infradead.org; Fri, 16 Apr 2021 09:50:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=/7N07UHgujtY61PEoC5iRe7NqTedk1nupO3B/ZjxXbc=; b=SdPhIvOxp2e7mAWJ1Hd672v0rH
 6dxZ4TYwyxyAVjidrr1bSgJuYfDWYR0gFx0uwiVUfIFbhWAT86bFun36XO6EW5iOyvhC/3LDHWbvg
 idgO313XqmcQ/DjzbDTDWuy834DFCjW/ez/IOvQGRT8cckgqITFRx8EsaYxkgHyd6UAgHQCn0SyKW
 EnxO3kpu7Wa/1WC5ccKsh/3KBjqcgX1woAe0LoR6evvKpcmIDwC1mGFOTQxlGoqQ6lq3g2HsYnk0L
 oSSAeYLWq/9RtdlYoQAhhtCnkIgc/uCUFOwFZh4om6r47mmESrfkmiWVadtqaqKK9lumBmSAx7q5X
 uPmNrFng==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lXL7H-009FwL-Pf
 for barebox@lists.infradead.org; Fri, 16 Apr 2021 09:50:26 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lXL7E-00051J-Bq; Fri, 16 Apr 2021 11:50:20 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lXL7C-0001DU-QW; Fri, 16 Apr 2021 11:50:18 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri, 16 Apr 2021 11:49:30 +0200
Message-Id: <20210416094943.3648-5-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210416094943.3648-1-s.hauer@pengutronix.de>
References: <20210416094943.3648-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210416_025023_863458_84404B4B 
X-CRM114-Status: GOOD (  13.17  )
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
Cc: Marco Felsch <m.felsch@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 04/17] of: base: move memory init from DT to initcall
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

From: Lucas Stach <dev@lynxeye.de>

Instead of calling it from of_probe, convert it to a initcall at
the appropriate level. This allows to move of_probe to later in
the init sequence while keeping the memory init at the same place,
which is important as many other drivers need the valid memory area
to be set up properly.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
Link: https://lore.pengutronix.de/20201021115813.31645-5-m.felsch@pengutronix.de
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/of/base.c | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index 6fe02649ee..549a0a2c2c 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -2281,10 +2281,13 @@ const struct of_device_id of_default_bus_match_table[] = {
 	}
 };
 
-static void of_probe_memory(void)
+static int of_probe_memory(void)
 {
 	struct device_node *memory = root_node;
 
+	if (!IS_ENABLED(CONFIG_OFDEVICE))
+		return 0;
+
 	/* Parse all available node with "memory" device_type */
 	while (1) {
 		memory = of_find_node_by_type(memory, "memory");
@@ -2293,7 +2296,10 @@ static void of_probe_memory(void)
 
 		of_add_memory(memory, false);
 	}
+
+	return 0;
 }
+mem_initcall(of_probe_memory);
 
 static void of_platform_device_create_root(struct device_node *np)
 {
@@ -2323,8 +2329,6 @@ int of_probe(void)
 	if (of_model)
 		barebox_set_model(of_model);
 
-	of_probe_memory();
-
 	firmware = of_find_node_by_path("/firmware");
 	if (firmware)
 		of_platform_populate(firmware, NULL, NULL);
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

