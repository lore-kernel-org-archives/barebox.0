Delivery-date: Mon, 02 Jun 2025 08:03:30 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uLyGg-002rVC-2T
	for lore@lore.pengutronix.de;
	Mon, 02 Jun 2025 08:03:30 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uLyGg-0006jS-5n
	for lore@pengutronix.de; Mon, 02 Jun 2025 08:03:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=I1qh6tP4+DTk+/hYbk3kkL2V3XMGiYK2LT2CZqEXBpk=; b=ItIe3FJ+kohpp2W4wQpHAjyRDx
	m9JrIbjPAXVOS1G3YcSkb0/iWOT6oGDtvikgym/Dq/P0rraVHrin+gDMtgzEJrCIFTfQXq6QBO5TD
	pAm6zfDtTlXlFs4bi8s3vl7QJGyRf1OSgCoVFUQ3SLSMfRj6AcrN4/Vt4NNBs0spYxTy9yIOX9fJD
	Nmrh2ggb+NZqMyQwBRluGJVSMQD9OpvIN0m7SV3CBZRiL9flKshi0XT9oHfESbfo3xFHwC9apbjg4
	FafPW2CiTV1kP/68bWKeY22P4FILDOY4QHznKCN1s+9WEhV6nDNIFQx47QIUPEl0aJBRnzOTWFjHq
	yDutys1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uLyG2-00000006nXG-1HNS;
	Mon, 02 Jun 2025 06:02:50 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uLyG0-00000006nWp-00dJ
	for barebox@lists.infradead.org;
	Mon, 02 Jun 2025 06:02:49 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1uLyFy-0006Qo-JB; Mon, 02 Jun 2025 08:02:46 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon,  2 Jun 2025 08:02:45 +0200
Message-Id: <20250602060245.746307-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250601_230248_042100_862CB5AE 
X-CRM114-Status: GOOD (  11.70  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] logo: spell out CONFIG_ options for fixdep
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

To avoid rebuilding nearly the whole project when a header changes,
fixdep collects referenced CONFIG_ symbols in every file and prunes the
dependency list accordingly. This only works when we don't hide CONFIG_
symbols with preprocessor text substitution shenanigans.

logo.c does just that triggering a compile failure, when logos are
removed in config without touching the file. Spell out the config
symbols to fix this.

This is the only instance currently of /CONFIG_.*##/, so I believe we
don't have this bug elsewhere.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 lib/logo/logo.c | 18 ++++++++++--------
 1 file changed, 10 insertions(+), 8 deletions(-)

diff --git a/lib/logo/logo.c b/lib/logo/logo.c
index a64f489939eb..b8f7ae028e83 100644
--- a/lib/logo/logo.c
+++ b/lib/logo/logo.c
@@ -20,10 +20,8 @@
 	extern char __bblogo_barebox_logo_w##width##_start[];			\
 	extern char __bblogo_barebox_logo_w##width##_end[];			\
 										\
-	static void load_logo_##width(void)					\
+	static __maybe_unused void load_logo_##width(void)			\
 	{									\
-		if (!IS_ENABLED(CONFIG_BAREBOX_LOGO_##width))			\
-			return;							\
 		load_logo(width, __bblogo_barebox_logo_w##width##_start,	\
 				__bblogo_barebox_logo_w##width##_end);		\
 	}
@@ -60,11 +58,15 @@ static int logo_init(void)
 	if (ret)
 		return ret;
 
-	load_logo_64();
-	load_logo_240();
-	load_logo_320();
-	load_logo_400();
-	load_logo_640();
+	/*
+	 * fixdep depends on CONFIG_ symbols being listed in the file
+	 * as-is with no preprocessor magic involved
+	 */
+	IF_ENABLED(CONFIG_BAREBOX_LOGO_64,  load_logo_64());
+	IF_ENABLED(CONFIG_BAREBOX_LOGO_240, load_logo_240());
+	IF_ENABLED(CONFIG_BAREBOX_LOGO_320, load_logo_320());
+	IF_ENABLED(CONFIG_BAREBOX_LOGO_400, load_logo_400());
+	IF_ENABLED(CONFIG_BAREBOX_LOGO_640, load_logo_640());
 
 	return 0;
 }
-- 
2.39.5



