Delivery-date: Mon, 05 Sep 2022 17:40:36 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oVEDC-007eyc-PY
	for lore@lore.pengutronix.de; Mon, 05 Sep 2022 17:40:36 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oVEDD-0003DG-D8
	for lore@pengutronix.de; Mon, 05 Sep 2022 17:40:36 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=59++CvzwhHAXhNTIxSUxYA2ZUh11b/It6BNLV2cO/7c=; b=XXig41iKoEKPC5CbYOxZY6Hma0
	YJPmk9ptxJBQ3TI4JfHas1LkICo7FpSF9oL14RPr/iUIcPWzkszyR4tNEpVJk4wEvT26zvWYrQo9L
	837tqIMOjfoWNhLYgdmx0wn+AepDVqaLJwE8sewa3PbypdIfT0TyccWHAvjaLhImXkGrFAyoyEHCW
	LraMouuPsI3MVoDAMiUflrYAnp54nMDb7/OC6ELFhEcg9yUqzUA3vF9jpzUJddE8ofMZZ00MsIW0n
	PcuUuvSh8d/MKHlMCbILVTRZSIiFTg/P8vHkJSId+hZcyQTMtw/XO+WLawgXiQm30S14neyKBK+cG
	8kSUJy2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVEBK-0065gX-2g; Mon, 05 Sep 2022 15:38:39 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oV8q9-00H4KJ-O5
	for barebox@bombadil.infradead.org; Mon, 05 Sep 2022 09:56:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=59++CvzwhHAXhNTIxSUxYA2ZUh11b/It6BNLV2cO/7c=; b=IxRQTWyG3FsMLnOl1PFXRNThff
	gp90gLw4vt2gMZIGivr/iPO39Pq4G4JWRxCGxvci+BBvqrc6rnWMhsXEe2H3yLjuUC2nMY23Tn8i6
	MwY2OrkWakyDCUOBxiG6yhcq+mswNwdb7+6u6B7uvOdfhK6EutccFUsz8dHt5zVbqARqNeGzRH9a2
	0Nj3PbowyOf2iR1owG4QM8KgA/zFZTOlQ1yeHuvNdlmrsjOvDO7jeZ/xU8YOxJgN7CrdW5izyOmwt
	XGCViigJnL3+QUzIxkqleeka4m711uiL6UpoSm5qh2xvfc8VD4e9WSJQk0z52iOwInQ4HF/KH/7aD
	524AvwjA==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oV8q0-009UjM-KK
	for barebox@lists.infradead.org; Mon, 05 Sep 2022 09:56:24 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oV8pr-0008Hd-SH; Mon, 05 Sep 2022 11:56:07 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oV8pp-0042Gp-4f; Mon, 05 Sep 2022 11:56:07 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oV8pm-002WeC-0O; Mon, 05 Sep 2022 11:56:02 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  5 Sep 2022 11:55:37 +0200
Message-Id: <20220905095557.596891-13-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220905095557.596891-1-a.fatoum@pengutronix.de>
References: <20220905095557.596891-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220905_105617_229795_17D02EB2 
X-CRM114-Status: GOOD (  10.00  )
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
X-Spam-Status: No, score=-3.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 12/32] commands: trigger: drop unused variable
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Static analyzer correctly identifies led as being set, but always
overwritten later on. As the later assignments all have their own
argument count check, so we can just drop the first assignment.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 commands/trigger.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/commands/trigger.c b/commands/trigger.c
index c1402b66f049..d2802080b96f 100644
--- a/commands/trigger.c
+++ b/commands/trigger.c
@@ -16,7 +16,7 @@
 
 static int do_trigger(int argc, char *argv[])
 {
-	struct led *led = NULL;
+	struct led *led;
 	int opt, ret = 0;
 	int cmd = LED_COMMAND_SHOW_INFO;
 	enum led_trigger trigger;
@@ -35,9 +35,6 @@ static int do_trigger(int argc, char *argv[])
 		}
 	}
 
-	if (optind < argc)
-		led = led_by_name_or_number(argv[optind]);
-
 	switch (cmd) {
 	case LED_COMMAND_SHOW_INFO:
 		led_triggers_show_info();
-- 
2.30.2



