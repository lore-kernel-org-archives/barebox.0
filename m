Delivery-date: Fri, 21 May 2021 18:36:15 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lk88F-0004nv-MJ
	for lore@lore.pengutronix.de; Fri, 21 May 2021 18:36:15 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lk88E-0000l9-T0
	for lore@pengutronix.de; Fri, 21 May 2021 18:36:15 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4+2k/IHItJjBS9xrl74Yche1OP+K9Sl59BbvzhH7ZVk=; b=SLXy+GBgKEwoM6XyUdKJR8zBaO
	Bo8nS1l2Hg5k2bCFLYTMXHjeHrv4uTeh2sjIW5+C5HRDKAAIVrb5WNJdSN6WR3DuUgATmqz5ffRj5
	H9tliatuWldmUc8oZ5bwVbK6Ns0BpH2V1J77FcyzH49WsiA3Tli4Oi8+B5yyksFTrrCSXPsPV1jps
	e2ArgDezf8yP282H/U2Maac2JgEdCpXy0xq1zVCPke7/MjNi5Za+vb1aOqfwE5jwbJDD4vL1FYYB0
	a9lLrMbItT7GR+bVKaafPH/jf14IKTEN3VMjcgiCh08xCGTmNVGdmn+mHdBTOzlHg2i2X7Ttb1fgr
	EW5DvzHw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lk87C-000GyC-3J; Fri, 21 May 2021 16:35:10 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lk86q-000Gui-AR
 for barebox@desiato.infradead.org; Fri, 21 May 2021 16:34:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Sender:
 Reply-To:Cc:Content-Type:Content-ID:Content-Description;
 bh=95WS5Hh1IbXpYdMF28VTWhYKvyB9YIX0TcCtpyE02qw=; b=MiJfvrTSMXhY/EvWyWokvGFrt8
 5Qu3BVQjH9XZR2psui4QUK3QJT14RxFAmsid4NLviOdDpBOmcNNGw1Fa4HFNsYoOGL/LirNWBJvYo
 +vxDhoQxDMkIjYRUDqLqmW1tfih/ov8mJ6HAxeKyqpPAIzRnfwkrw4SJRapyFABksjrfDaeqIJGda
 F/UJDnlLTE1Z72+vK/DA/8N/5EZ6hXibUwaJi7SlIZDoqM980ki/+MIEBv5XwPOpIkt5YD/9I3iGQ
 OaZQaHuR3hwwn6fmwo3IZoHXo6acwyN1bhNmR7o+/KXoJo9JKTllaoJEVpnigZFtw3YIkCerPB2lk
 d+TwnNNQ==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lk86m-00HHUT-HV
 for barebox@lists.infradead.org; Fri, 21 May 2021 16:34:47 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>) id 1lk86g-0000MB-IC
 for barebox@lists.infradead.org; Fri, 21 May 2021 18:34:38 +0200
Received: from mfe by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>) id 1lk86g-0004XO-5e
 for barebox@lists.infradead.org; Fri, 21 May 2021 18:34:38 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Fri, 21 May 2021 18:34:33 +0200
Message-Id: <20210521163435.17365-3-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210521163435.17365-1-m.felsch@pengutronix.de>
References: <20210521163435.17365-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210521_093444_607250_CC7B2F71 
X-CRM114-Status: GOOD (  10.65  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 2/4] common: boot: replace printf by pr_info/warn variants
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This allows us to control the output behaviour e.g. booting silently
to improve boot time. Furthermore it adds a 'WARNING:' prefixed output
in case of pr_warn which is colored as well (depending on your
terminal). This helps us to identify unwanted behaviour.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 common/boot.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/common/boot.c b/common/boot.c
index 07b67734d8..8220b8d3fb 100644
--- a/common/boot.c
+++ b/common/boot.c
@@ -138,7 +138,7 @@ int boot_entry(struct bootentry *be, int verbose, int dryrun)
 {
 	int ret;
 
-	printf("Booting entry '%s'\n", be->title);
+	pr_info("Booting entry '%s'\n", be->title);
 
 	if (IS_ENABLED(CONFIG_WATCHDOG) && boot_watchdog_timeout) {
 		boot_enabled_watchdog = watchdog_get_default();
@@ -319,7 +319,7 @@ void bootsources_menu(struct bootentries *bootentries, int timeout)
 	struct menu_entry *back_entry;
 
 	if (!IS_ENABLED(CONFIG_MENU)) {
-		printf("no menu support available\n");
+		pr_warn("no menu support available\n");
 		return;
 	}
 
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

