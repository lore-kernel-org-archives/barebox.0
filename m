Delivery-date: Wed, 18 Oct 2023 10:03:41 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qt1Wn-00Clgc-MP
	for lore@lore.pengutronix.de; Wed, 18 Oct 2023 10:03:41 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qt1Wm-0000Qo-Fl
	for lore@pengutronix.de; Wed, 18 Oct 2023 10:03:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5fG0eUpBtqMzEqBkTJLqB5uxfc7puqvZrgIA3QDebss=; b=fR8iiBq7I4mNPL
	kVcyTAXJh0Zyu7nl7r0y+3tmJra+IniAinc0zp4vSPMO3/L6YGsxpv/H/sv4iG44mZMGMPgId2JsD
	AkEBK2H022BN9iAoFXR9NO7qSazod0zcguf/2BhL41uXOTEeU4nXEyP3He4/WHYJ+UGcyzJIFR1EQ
	Ju1w7OTS8eZ++kjgNXOuy+5pshU2V05X3neLyF7EUo8lqS5TtdGz3N+1N/iOjWZq66M/FNkDu/5/m
	ypUT2Y2/QS7mNqDvj3z2Jzo2+Oc2yNQD9JgEAlLBuR4zwjj77aIwyfevL42Cm7RUkEAc93PjDx32B
	FBqzX6RGvA8HEyG4fU7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qt1VP-00E5fG-35;
	Wed, 18 Oct 2023 08:02:15 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qt1VM-00E5ef-2l
	for barebox@lists.infradead.org;
	Wed, 18 Oct 2023 08:02:13 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qt1VL-0008Cj-FZ; Wed, 18 Oct 2023 10:02:11 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qt1VL-002VKw-37; Wed, 18 Oct 2023 10:02:11 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1qt1VL-001DYz-06;
	Wed, 18 Oct 2023 10:02:11 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 18 Oct 2023 10:02:10 +0200
Message-Id: <20231018080210.290456-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231018_010212_889205_1C85EF2B 
X-CRM114-Status: UNSURE (   9.79  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] test: self: Fix testing test on 32bit architectures
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

__LONG_MAX__ has eight hex digits on 32bit architectures, not nine.

Fixes: 1c4a409c9f ("test: self: add some test cases for test command")
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 test/self/test_command.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/test/self/test_command.c b/test/self/test_command.c
index 7a26f724f3..358855d0f6 100644
--- a/test/self/test_command.c
+++ b/test/self/test_command.c
@@ -7,7 +7,7 @@
 
 BSELFTEST_GLOBALS();
 
-#if __LONG_MAX__ == 0x7ffffffff
+#if __LONG_MAX__ == 0x7fffffff
 #define LONG_MIN_STR		"-2147483648"
 #define LONG_MIN_PLUS_1_STR	"-2147483647"
 #define LONG_MAX_STR		 "2147483647"
-- 
2.39.2



