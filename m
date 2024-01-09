Delivery-date: Tue, 09 Jan 2024 17:17:03 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rNEml-00AUIm-0G
	for lore@lore.pengutronix.de;
	Tue, 09 Jan 2024 17:17:03 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rNEmi-0000OC-2m
	for lore@pengutronix.de; Tue, 09 Jan 2024 17:17:02 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=eTivodZKqsc5od0hfA7QMkrc4MiqC7/7PXLZm36eiwA=; b=0oRGxjUZY7IKa0Jjb61JBMUrvn
	Q+chA4Y+DkkFULFdlnUqmPYDUh3YEjhRynu+DPYBiVSpJijBGwAKBViy4vR71MIxzlXuBIUO9EaLK
	e37dODYCA8zAR/ULGLKh8t3EoP5oQquqMBVMmY9u518W3nU/0sfhRyoTXVKUpXczgqBqnqM6hviX8
	5xhUXvH4hK8qG4BZE5s1XjzMejVXYgW3fvPQ05hAc3PEdsM/p6q0CzXDNSDT6Jh74BVQcukl9gNOd
	abZj4KBHvWSX4fRFQk3kXa4TOlqtTyPPut9/x233iDrCHCYhd1vCmd6jJlI9IDo8xbYed3XKGBpIT
	3fgC+SeA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rNEla-008ntl-05;
	Tue, 09 Jan 2024 16:15:50 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rNElL-008niu-2F
	for barebox@lists.infradead.org;
	Tue, 09 Jan 2024 16:15:40 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rNElF-0007lo-HA; Tue, 09 Jan 2024 17:15:29 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rNElE-001WD4-Sh; Tue, 09 Jan 2024 17:15:28 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1rNElE-00E7S4-2T;
	Tue, 09 Jan 2024 17:15:28 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue,  9 Jan 2024 17:15:26 +0100
Message-Id: <20240109161527.3237581-21-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240109161527.3237581-1-s.hauer@pengutronix.de>
References: <20240109161527.3237581-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240109_081535_780868_283BF4B8 
X-CRM114-Status: UNSURE (   9.99  )
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
X-Spam-Status: No, score=-6.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 20/21] ARM: Layerscape: LS1028a: Add barebox update handler
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The LS1028a image can be written straight to SD/eMMC at offset 0x100.
Add a barebox update handler for it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/mach/layerscape/bbu.h | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/include/mach/layerscape/bbu.h b/include/mach/layerscape/bbu.h
index d018ec9a9d..186185699b 100644
--- a/include/mach/layerscape/bbu.h
+++ b/include/mach/layerscape/bbu.h
@@ -5,6 +5,14 @@
 
 #include <bbu.h>
 
+static inline int ls1028a_bbu_mmc_register_handler(const char *name,
+						   const char *devicefile,
+						   unsigned long flags)
+{
+	return bbu_register_std_file_update(name, flags, devicefile,
+					    filetype_layerscape_image);
+}
+
 static inline int ls1046a_bbu_mmc_register_handler(const char *name,
 						   const char *devicefile,
 						   unsigned long flags)
-- 
2.39.2



