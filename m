Delivery-date: Mon, 05 Sep 2022 12:58:07 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oV9np-007POS-Ay
	for lore@lore.pengutronix.de; Mon, 05 Sep 2022 12:58:07 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oV9nk-0000La-TO
	for lore@pengutronix.de; Mon, 05 Sep 2022 12:58:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=So9ONtAJO3rmN8xDTD3yov8OsrFDqqQxJ36MBjR2Buk=; b=2jandg8+kjCF/hDsRTNWkOksWN
	hAeFPPfSVttIzJUDq4uETQhyASM2Xk5Hvc02CX7RxYSBF2vDvIOaiK52Q1kHcHkfG3nWczrzvvPcr
	VwX4eWjFYEZyV9ppFg+5s+CGMB68gCIkkZ9rAbXzSPt9wyH5LwEewroYNlgHXr4k7hGvcDduIPCGe
	+2PYy8CdxcsTvtJmn9VTStqTAsgfhFblWKLvvCg3XogCcLlzh9LxP3Sin55pVJr3HE+ySuqVgllP6
	Q5kZi5Wp2vQFQXyGh60luqcaDNCf/Z9PzZFViPwVNeDyVoNcPSUcbnLT0/6XZDADde5MeQjHbXJJD
	EM7nLXpQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oV9gp-000fG0-4J; Mon, 05 Sep 2022 10:50:55 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oV8qA-00H4Km-Mg
	for barebox@bombadil.infradead.org; Mon, 05 Sep 2022 09:56:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=So9ONtAJO3rmN8xDTD3yov8OsrFDqqQxJ36MBjR2Buk=; b=hg+VdPNMvjMT9vQLA1YiLHlHAG
	b56VkBV2V3QUO5NGbFulCH/PJcMN8N2PBsELIBKko55mTu4SVLHryzdeML/W07HiepQrIdcowC4IU
	v76L4LV0ldNzVSuuWpNLr7945H3gT1ma3q+8FQOjswnY2m4qtBVTQHeKbDi20DHXjEJcd1hFb7087
	CGyp9AdD2ri6s4Lg48vJmBaRGm9WwwcBwduiwcC0DDqXeYKORKM/sbxV2AeFHmL9QTFOTOBWXed8b
	A9uNgfrG4KmPtzjhNYZY06ODddn8Sn5PietFy9W+RiXy1vl3133e1BEH/62Woa+V8SDtdhlLWGem9
	cA5LLsbg==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oV8pz-009UjB-Rc
	for barebox@lists.infradead.org; Mon, 05 Sep 2022 09:56:25 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oV8pq-0008FL-3a; Mon, 05 Sep 2022 11:56:06 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oV8pn-0042G4-9b; Mon, 05 Sep 2022 11:56:05 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oV8pm-002WeF-0d; Mon, 05 Sep 2022 11:56:02 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  5 Sep 2022 11:55:38 +0200
Message-Id: <20220905095557.596891-14-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220905095557.596891-1-a.fatoum@pengutronix.de>
References: <20220905095557.596891-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220905_105616_684434_6F27B199 
X-CRM114-Status: GOOD (  12.69  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 13/32] commands: tutorial: fix memory leak
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We don't need to duplicate argv[i], because it persists for the lieftime
of print_tutorial_step. We can thus drop the strdup and while at it,
just drop the redundant step variable altogether.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 commands/tutorial.c | 7 ++-----
 1 file changed, 2 insertions(+), 5 deletions(-)

diff --git a/commands/tutorial.c b/commands/tutorial.c
index 444177764311..afe5b66f0b0a 100644
--- a/commands/tutorial.c
+++ b/commands/tutorial.c
@@ -84,7 +84,6 @@ out:
 static int do_tutorial_next(int argc, char *argv[])
 {
 	int opt, i;
-	char *step = NULL;
 	char *oldcwd;
 	ssize_t ret = 0;
 	bool is_prev = *argv[0] == 'p';
@@ -121,14 +120,12 @@ static int do_tutorial_next(int argc, char *argv[])
 		next_step = next_step > 0 ? next_step - 1 : 0;
 
 	if (optind == argc) {
-		step = steps.gl_pathv[next_step];
-		ret = print_tutorial_step(step);
+		ret = print_tutorial_step(steps.gl_pathv[next_step]);
 		if (ret == 0 && !is_prev)
 			next_step = (next_step + 1) % steps.gl_pathc;
 	} else {
 		for (i = optind; i < argc; i++) {
-			step = strdup(argv[i]);
-			ret = print_tutorial_step(step);
+			ret = print_tutorial_step(argv[i]);
 			if (ret)
 				break;
 		}
-- 
2.30.2



