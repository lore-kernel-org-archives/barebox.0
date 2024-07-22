Delivery-date: Mon, 22 Jul 2024 18:27:22 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sVvsg-001rf0-0s
	for lore@lore.pengutronix.de;
	Mon, 22 Jul 2024 18:27:22 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sVvsf-0000oC-N4
	for lore@pengutronix.de; Mon, 22 Jul 2024 18:27:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=GW5geREJr6xW+d8FdhSbmkymwPHIP+ImDk9uUumh8EA=; b=Vb4V7zNty3L7WExegTPnEVDMqs
	NSZFAf4+peJTi5nNYN7HoS0yYzU5eC3umf6HV5crKYMRfkTc2bvCeT+paP+9sSOae4MkK4hASe/0u
	XOzrN8k261e7fs3QVXbEc+6C0eQaXd+Sl4DYzRDHs0aEUchRMPsbDzVM32s/o5Q+/ZMXaNyYhU7/X
	rzrNRZs+qXJRRWO4wBeUbHibdhb/FvdVB/I+0ayxk2QwUQuUMgnulOGAbm4FkMfp6m2Fb/RM2Zg6H
	606EQUhyjZrH6PumPgOO8JfHdXiEL9wWqcThEouhSp9x6ojNx1o2zFLhS7AXAMn+3zUz/HHd4owCb
	iKt+bKdw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sVvs1-0000000A4Um-3r4S;
	Mon, 22 Jul 2024 16:26:41 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sVvry-0000000A4U8-1Ryx
	for barebox@lists.infradead.org;
	Mon, 22 Jul 2024 16:26:39 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sVvrx-0000h2-0p; Mon, 22 Jul 2024 18:26:37 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sVvrw-001QFS-K9; Mon, 22 Jul 2024 18:26:36 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sVvrw-00G3sy-1i;
	Mon, 22 Jul 2024 18:26:36 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 22 Jul 2024 18:26:35 +0200
Message-Id: <20240722162635.3828172-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240722_092638_402929_910C212D 
X-CRM114-Status: UNSURE (   9.50  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] lib: kasan: kasan_test: hide buggy access after xzalloc from compiler
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Commit 187b85361236 ("KASan: test_kasan: hide buggy accesses from
compiler") used OPTIMIZER_HIDE_VAR() to hide the origin of pointers.

This became necessary when __alloc attributes were added to malloc().
We now add the same attributes to xzalloc as well bring back warnings
for the single xzalloc call in the file.

That memory violation, like the ones before it, is intended as
test_kasan is meant to trigger kasan at runtime to verify correct
operation.

Therefore use OPTIMIZER_HIDE_VAR here too to silence the warning.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 lib/kasan/test_kasan.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/lib/kasan/test_kasan.c b/lib/kasan/test_kasan.c
index bacc02b56e98..ba8b84bfd24f 100644
--- a/lib/kasan/test_kasan.c
+++ b/lib/kasan/test_kasan.c
@@ -394,6 +394,8 @@ static noinline void kasan_bitops(void)
 	if (!bits)
 		return;
 
+	OPTIMIZER_HIDE_VAR(bits);
+
 	/*
 	 * Below calls try to access bit within allocated memory; however, the
 	 * below accesses are still out-of-bounds, since bitops are defined to
-- 
2.39.2



