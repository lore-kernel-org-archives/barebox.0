Delivery-date: Tue, 22 Jun 2021 10:27:49 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lvbl7-00086S-0o
	for lore@lore.pengutronix.de; Tue, 22 Jun 2021 10:27:49 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lvbl6-00035O-6k
	for lore@pengutronix.de; Tue, 22 Jun 2021 10:27:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Sb0qtmsgWuw0YkiQUBjTP25mezz5atdRqwngeIHH5oQ=; b=xhhM4kQG/HsJCU
	L9nRyUvO3QGeIhD0LZlMeADHlgiQv+unC91hy57Afr4kaWvywzxt2vrcrc7+PxQLYLDLqjutIl6LA
	1ShQf5puXuI9hdmRXwGm4DyUjnxKx2tbDynL+yi2mbXoXyFjhLlwYWCwxqmWzanICoEqtseHFCnYV
	X3ZChtB1tofKYHiZt00Ma1wlR4DoAmy5vUGhNBHGrbpnt8rNAFBIBVWtwojstZsG7imYEcbwXutl3
	GN9WXufvcUlFoQnkSwCSkRGOyofJp23obgELSEUA7rKBiwhLqJymkNTzpLKl3oURleBS1KkMcNPvb
	JknOr9763KhEGKOfhTgQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lvbjn-006E2y-Ju; Tue, 22 Jun 2021 08:26:27 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lvbji-006E14-Ll
 for barebox@lists.infradead.org; Tue, 22 Jun 2021 08:26:23 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lvbjh-0002id-Ch; Tue, 22 Jun 2021 10:26:21 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lvbjh-0005hl-0H; Tue, 22 Jun 2021 10:26:21 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 22 Jun 2021 10:26:11 +0200
Message-Id: <20210622082617.18011-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210622082617.18011-1-a.fatoum@pengutronix.de>
References: <20210622082617.18011-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210622_012622_740371_D8F5AEF4 
X-CRM114-Status: GOOD (  10.49  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v4 2/8] bthread: add debug print for scheduler context switches
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

When debugging around bthreads, it's often useful to log context
switches. Make this easier by adding a ready-to-use pr_debug at the
correct location.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/bthread.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/common/bthread.c b/common/bthread.c
index c811797130eb..80651344da64 100644
--- a/common/bthread.c
+++ b/common/bthread.c
@@ -163,7 +163,10 @@ void bthread_info(void)
 
 void bthread_reschedule(void)
 {
-	bthread_schedule(list_next_entry(current, list));
+	struct bthread *next = list_next_entry(current, list);
+	if (current != next)
+		pr_debug("switch %s -> %s\n", current->name, next->name);
+	bthread_schedule(next);
 }
 
 void bthread_schedule(struct bthread *to)
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

