Delivery-date: Wed, 28 May 2025 07:58:30 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uK9o6-0015kY-0f
	for lore@lore.pengutronix.de;
	Wed, 28 May 2025 07:58:30 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uK9o5-0004ke-K1
	for lore@pengutronix.de; Wed, 28 May 2025 07:58:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=fGar/OnZVZ6SH9ap5AqomyWoezrPCmhVSDbD0qgf/fo=; b=wLc3yNtEIUHc9lgmFzUZElf9uS
	KcDfHpXMnRU+Ukbd10smh4aFY/2pvu+T7GQMy1hLQFT+NFrqvuWZQb6Id+LoPbSM14/o8UEZOaufc
	xZypV2fgJ09tkvHzEKj896rX0r+TEYoc0mA8aAh262tXx5nhFpg3LCGZ6xtaGHk+DvVGiYq2O9MZW
	ozT5AYOlCk+36epdgWwpWmSVwHHRUBtXDdRA+GL9xvbBBcLPxoOciuRFNz3elv6H23y52J+nWUjPO
	jgRMkg+TD/2YneztLNvMb4TD9QzA2q0Z3wbSbIaSE+3tec8zi5jfCM13Yec5lcrULXwpybLlwLx74
	dqxyCnRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uK9nZ-0000000CFXX-2dBC;
	Wed, 28 May 2025 05:57:57 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uK9nW-0000000CFWL-34V6
	for barebox@lists.infradead.org;
	Wed, 28 May 2025 05:57:55 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uK9nV-0004SV-5a; Wed, 28 May 2025 07:57:53 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uK9nU-000XLS-3B;
	Wed, 28 May 2025 07:57:52 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uK9nU-005k0w-2t;
	Wed, 28 May 2025 07:57:52 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 28 May 2025 07:57:51 +0200
Message-Id: <20250528055751.1368503-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250527_225754_770764_EBF1EDDD 
X-CRM114-Status: GOOD (  10.82  )
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
X-Spam-Status: No, score=-6.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master] commands: bthread: fix format specifier for ulong
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Adding __printf to the bthread_run definition in the follow up commit
will make it evident that we are using a wrong type for a %u format
specifier.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
To avoid intermittent breakage, please apply before:
https://lore.barebox.org/barebox/20250527201359.889550-1-a.fatoum@pengutronix.de/T/#t
---
 commands/bthread.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/commands/bthread.c b/commands/bthread.c
index 7a16c6713da5..f3b3e517ebf2 100644
--- a/commands/bthread.c
+++ b/commands/bthread.c
@@ -106,7 +106,7 @@ static void bthread_spawner(void *_spawner_arg)
 		arg = malloc(sizeof(*arg));
 		arg->in = i;
 		bthread[i] = bthread_run(bthread_printer, arg,
-					 "%s-bthread%u", bthread_name(current), i+1);
+					 "%s-bthread%lu", bthread_name(current), i+1);
 		if (!bthread[i]) {
 			ret = -ENOMEM;
 			goto cleanup;
-- 
2.39.5



