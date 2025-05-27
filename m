Delivery-date: Tue, 27 May 2025 22:14:32 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uK0gx-000xJp-3B
	for lore@lore.pengutronix.de;
	Tue, 27 May 2025 22:14:31 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uK0gx-0002sg-E4
	for lore@pengutronix.de; Tue, 27 May 2025 22:14:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=iu9z+ps8aRKG4nQWsoPVRAs8sb/yjtFdojm2aRqdkUA=; b=GNHEeApG94M+fCIUppDim6wdzI
	AKQe/AFqa1elmTJgc0Gt5xGto4JNPsEYXEeAy8jgwMWTb9TVliW1s1EUtvWno6Q3berH/LUHv3Cts
	+x5mHwqjRec21r+jSoKlGLjNMGR7jjPnfuJFQSGStvzwGiPMJX/YJGsz5FK+MIi0mDERBD3yYExKg
	AdUKQ2IQu+Lo6vAxi956Zn3gbP9EOmizjlHV5+ErvwI4B828XsIAk3bQ722RD08+BQQ4wPv+Vqp0C
	WfNnkx7bVmP9rzzXJdZ+m4aAHhmkCEU40bzbmguTtvU4ezgnJVLiRoFzmo14yK33AP/xryUHzNfVH
	VFHoFKlA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uK0gW-0000000BUPS-1sBh;
	Tue, 27 May 2025 20:14:04 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uK0gT-0000000BUMj-3DTZ
	for barebox@lists.infradead.org;
	Tue, 27 May 2025 20:14:02 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uK0gS-0002Hk-FN; Tue, 27 May 2025 22:14:00 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uK0gS-000TVH-0r;
	Tue, 27 May 2025 22:14:00 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uK0gS-003jQO-0Z;
	Tue, 27 May 2025 22:14:00 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 27 May 2025 22:13:51 +0200
Message-Id: <20250527201359.889550-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250527_131401_808645_6819AE8F 
X-CRM114-Status: UNSURE (   9.70  )
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
X-Spam-Status: No, score=-6.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/9] lib: stackprot: fix type for %pS
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Adding __printf to the panic definition in the follow up commit will
make it evident that we are using a long value for a %pS format
specifier, which is not correct, albeit they have the same size.

Fix this by adding the missing cast.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 lib/stackprot.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/lib/stackprot.c b/lib/stackprot.c
index 7a8d0a4c1064..1bf4f7e7a5b4 100644
--- a/lib/stackprot.c
+++ b/lib/stackprot.c
@@ -24,7 +24,8 @@ volatile ulong __stack_chk_guard = (ulong)(0xfeedf00ddeadbeef & ~0UL);
  */
 noinstr void __stack_chk_fail(void)
 {
-	panic("stack-protector: " STAGE " stack is corrupted in: %pS\n", _RET_IP_);
+	panic("stack-protector: " STAGE " stack is corrupted in: %pS\n",
+	      (void *)_RET_IP_);
 }
 EXPORT_SYMBOL(__stack_chk_fail);
 
-- 
2.39.5



