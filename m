Delivery-date: Tue, 23 May 2023 11:43:33 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q1OYI-00Acsz-UT
	for lore@lore.pengutronix.de; Tue, 23 May 2023 11:43:33 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q1OYG-0007m1-FI
	for lore@pengutronix.de; Tue, 23 May 2023 11:43:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=hr9pC840MecLXQl8RRUneg3bJt6ZDx0IyZ2AT77jAKI=; b=M0PoaOYIE5FD1rl1PAmuf7ZGbu
	W7YMLDXB5bCzLjNY+YyrB9cJw+7z1ZAHDQ/pPkATUAcizXS1doQYvblUT/IYpGJgw2JNrpQeo+RUO
	Dn0GoGiJgtm7pXWhVfi+ZJ2ZZ9JtS0vJ5M4PUwyT2FZrgJV53MVFqjAJ6gfSDa8Z7w15T8O+326X4
	4a9AuYAh7sp9gIblWu6q2fA5d4hSQo7O7o/Xgh/12llLXJHiqoOSS46tgtuVnHtBWT3oyRdsvtwKh
	nVDuOfut6gkMWuAc0ex+nel3RjKO1BeP2CsRRerpua/1/eNhdfYAFY0U2WtQ3bSYietkHnn7wUf84
	qY8qOQ/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q1OX3-009eVQ-04;
	Tue, 23 May 2023 09:42:17 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q1OWz-009eTn-0r
	for barebox@lists.infradead.org;
	Tue, 23 May 2023 09:42:14 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1q1OWx-0007TL-1Z; Tue, 23 May 2023 11:42:11 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q1OWw-002DLt-C7; Tue, 23 May 2023 11:42:10 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q1OWv-00EUXY-MR; Tue, 23 May 2023 11:42:09 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 23 May 2023 11:42:07 +0200
Message-Id: <20230523094208.3453910-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230523_024213_303130_B077D119 
X-CRM114-Status: UNSURE (   9.33  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH master 1/2] test: self: mmu: remap buffer with default attributes on exit
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

For inspection with mmuinfo, I had inserted a return before remapping
with default attributes. Drop it, so we can test that default attributes
work and to free the memory allocated.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 test/self/mmu.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/test/self/mmu.c b/test/self/mmu.c
index ee6c1cd45e7e..48515b30aeb8 100644
--- a/test/self/mmu.c
+++ b/test/self/mmu.c
@@ -142,7 +142,6 @@ static void test_remap(void)
 	}
 
 	expect_success(ret, "asserting mirroring after remap (virt += 4K)");
-	return;
 
 	ret = remap_range(buffer, SZ_8M, MAP_DEFAULT);
 	expect_success(ret, "remapping buffer with default attrs");
-- 
2.39.2



