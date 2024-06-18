Delivery-date: Tue, 18 Jun 2024 11:43:43 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sJVNP-0084Md-1O
	for lore@lore.pengutronix.de;
	Tue, 18 Jun 2024 11:43:43 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sJVNO-0001hn-Tb
	for lore@pengutronix.de; Tue, 18 Jun 2024 11:43:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=cfD+kbbY8V0HaZwxic6zDXwpnp27mmtHD+o2gzs/J04=; b=doQidddyShqM9K/f0BBtlMPsQ0
	CKosOOeIGcWwN7NCL35XT6YhXeq5EWebQTiC901BLzmjh06l10+0p1wIiPV3vRD4/M8LJgZUX04PW
	GcUAkjk7R/bwHS8RdjmkEZ5KtOf7QZOUhjPDBmX3RTNFOsiiDQOZHSY51xpeIop6wTOB65qTKQaVz
	OssjBfGN9yfd+Beb2WiDKsMCsHTqQeBKvPysl36iOL9hjN8U6xC6oNQ5O4skQ88svT+ocnDOI5SLx
	SOK7zhgFJ9VbyBMSkTAAlpBSwmJlXfYN5xB+I0KX3QrXrMTKEbvaz6hVjQgHmzGwhSqDYllUeY8Ox
	DVrwf1MA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJVMm-0000000ED5J-1HlB;
	Tue, 18 Jun 2024 09:43:04 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJVMi-0000000ED4m-2uC3
	for barebox@lists.infradead.org;
	Tue, 18 Jun 2024 09:43:02 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=pengutronix.de)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.trumtrar@pengutronix.de>)
	id 1sJVMg-0001bY-OZ
	for barebox@lists.infradead.org; Tue, 18 Jun 2024 11:42:58 +0200
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue, 18 Jun 2024 11:42:21 +0200
Message-ID: <20240618094251.2091891-1-s.trumtrar@pengutronix.de>
X-Mailer: git-send-email 2.43.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240618_024300_753523_997550CB 
X-CRM114-Status: UNSURE (   8.75  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] ARM: arria10: generic.h: fix unused-function Werror
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

arria10_watchdog_disable/kick_l4wd0 is not used on non-Arria10
platforms. To not throw unused-function errors during compile stage,
the prototype must be "static inline void ..." and not just "static ..."

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 include/mach/socfpga/generic.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/include/mach/socfpga/generic.h b/include/mach/socfpga/generic.h
index 23fcdabc3e..2fabbf8e10 100644
--- a/include/mach/socfpga/generic.h
+++ b/include/mach/socfpga/generic.h
@@ -95,8 +95,8 @@ static inline int arria10_device_init(struct arria10_mainpll_cfg *mainpll,
 {
 	return 0;
 }
-static void arria10_kick_l4wd0(void) {}
-static void arria10_watchdog_disable(void) {}
+static inline void arria10_kick_l4wd0(void) {}
+static inline void arria10_watchdog_disable(void) {}
 #endif
 
 static inline void __udelay(unsigned us)
-- 
2.43.2



