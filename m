Delivery-date: Wed, 02 Nov 2022 09:51:54 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oq9TW-00C4ED-DX
	for lore@lore.pengutronix.de; Wed, 02 Nov 2022 09:51:54 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oq9TU-0007W8-Ub
	for lore@pengutronix.de; Wed, 02 Nov 2022 09:51:53 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=GSzo9rXaelsBDa6IywQ0g6H3XUvMIVIFKEhbgrfVq0g=; b=m+VuBT9Pts0ylCS1UnG9Kq+OJc
	rwCpDEW0SluI5iR9uM6l9J22d51+ygseiVB/9fLSvBNVCfDZW173mCP4t+4g1WskSzRnrrrJ0Cm2+
	9yaOIl5BB/A475tar3fmOA/NCe8FscMYPEUgmRA7c2KMtFHODhr+Yh0M47B2jz4oEfO6lVgJRYIr7
	MtCe6WFhApXCRevnj8gzzswj3aRawDBBHF7fTe26Gg7srT69nUZKRc1RAV7Q0BAYbXx1FJ8OC8Xrz
	a3MVoM2v8xsmIHp6mB7c1LD2lFoVsI8ppKvanOeb0nz+ro3WFJ6LqvIt4FuALoWGKm/1rXPhiAMGK
	kxBEnFlg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oq9S8-009D2T-80; Wed, 02 Nov 2022 08:50:28 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oq9S4-009CzX-9H
	for barebox@lists.infradead.org; Wed, 02 Nov 2022 08:50:25 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oq9S0-00070r-Mc; Wed, 02 Nov 2022 09:50:20 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oq9S0-001puL-VO; Wed, 02 Nov 2022 09:50:20 +0100
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oq9Rz-00896f-Ga; Wed, 02 Nov 2022 09:50:19 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  2 Nov 2022 09:50:17 +0100
Message-Id: <20221102085017.1941580-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221102_015024_363205_E0167329 
X-CRM114-Status: GOOD (  10.04  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] commands: uptime: add note about caveats
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Normally timer overrun is not that much of a problem, because there
where it matters, we usually have an is_timeout() in the loop that reads
the timer often enough. This doesn't necessarily hold for the new uptime
command and basically anything can happen between subsequent calls and
if get_time_ns() is not called often enough during that time, we end up
with an inaccurate uptime. Mention this in the extended help text.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
Can be squashed into original commit.
---
 commands/uptime.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/commands/uptime.c b/commands/uptime.c
index a9a8c650b698..d67538631c8f 100644
--- a/commands/uptime.c
+++ b/commands/uptime.c
@@ -66,6 +66,9 @@ static int do_uptime(int argc, char *argv[])
 BAREBOX_CMD_HELP_START(uptime)
 BAREBOX_CMD_HELP_TEXT("This command formats the number of elapsed nanoseconds")
 BAREBOX_CMD_HELP_TEXT("as measured with the current clocksource")
+BAREBOX_CMD_HELP_TEXT("Note: Timekeeping is co-operative. If long running code does")
+BAREBOX_CMD_HELP_TEXT("not use delay/is_timeout/get_time_ns/getchar functions")
+BAREBOX_CMD_HELP_TEXT("timer may overrun resulting in incorrect results")
 BAREBOX_CMD_HELP_TEXT("Options:")
 BAREBOX_CMD_HELP_OPT ("-n",     "output elapsed time in nanoseconds")
 BAREBOX_CMD_HELP_END
-- 
2.30.2



