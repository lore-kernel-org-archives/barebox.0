Delivery-date: Thu, 27 Oct 2022 10:49:32 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1onyZw-003uAo-3V
	for lore@lore.pengutronix.de; Thu, 27 Oct 2022 10:49:32 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1onyZv-0002W4-4Z
	for lore@pengutronix.de; Thu, 27 Oct 2022 10:49:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NCTt6K92LHeQrpScDat3dIDL6HEboPqp0hZSUoBhaBA=; b=sjJp+iYK4j6OK3
	39bWzB/n/9ZNgLr/fpwb7uXBvwsJTZB+ELF4LrA6R3FVgpIFGhQj96bnGf4fJG1SnYjhdbU8ElAVW
	W+kdb9TzaHVVobYQyuKFnfN6ZJvCFXpOs3PfjB143N/4hRA/mOPc78aWyT7lItqCHXZlRq47q0P76
	5ohoXD4ajtxUQYbReQAeyOH4+xjOKc+D4+fYhZhAEUWWeuVZlOKkBK9O9HlphK0h9WLmJW5y02zGC
	D4yPaJH4x6M9WS8cBjpllDOGdlHkykPt0dRadMhkr1LZzxy9gKY+f3kfZXWzWZGFIBxUBbKgWgXUq
	wt34Cu/ttEwfUz0Tl13A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1onyYR-00CSc8-Mq; Thu, 27 Oct 2022 08:47:59 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1onyYL-00CSb1-HI
	for barebox@lists.infradead.org; Thu, 27 Oct 2022 08:47:54 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1onyYH-0002IQ-CM; Thu, 27 Oct 2022 10:47:49 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1onyYH-000fPZ-Km; Thu, 27 Oct 2022 10:47:48 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1onyYF-001etF-ST; Thu, 27 Oct 2022 10:47:47 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu, 27 Oct 2022 10:47:45 +0200
Message-Id: <20221027084745.395052-2-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20221027084745.395052-1-s.hauer@pengutronix.de>
References: <20221027084745.395052-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221027_014753_609949_8DC45209 
X-CRM114-Status: GOOD (  11.25  )
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
Cc: afa@pengutronix.de
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] readline: Complete strings containing whitespaces correctly
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Completion strings containing whitespaces have to end up as a single
argv[] argument, thus the whitespaces have to be escaped. Fix this.

Ideally the whitespaces should only be escaped when we are outside of
double or single quotes, but our completion currently doesn't trigger
at all when invokes inside quotes, so we can ignore this case for now.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 lib/readline.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/lib/readline.c b/lib/readline.c
index 37d5b0a343..92bec3d1d8 100644
--- a/lib/readline.c
+++ b/lib/readline.c
@@ -230,9 +230,14 @@ int readline(const char *prompt, char *buf, int len)
 			}
 
 			i = 0;
-			while (completestr[i])
+			while (completestr[i]) {
+				if (completestr[i] == ' ' && completestr[i + 1])
+					cread_add_char('\\', insert, &num,
+						&eol_num, buf, len);
+
 				cread_add_char(completestr[i++], insert, &num,
 						&eol_num, buf, len);
+			}
 #endif
 			break;
 
-- 
2.30.2



