Delivery-date: Mon, 11 Sep 2023 14:16:40 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qffqL-00BTWo-IE
	for lore@lore.pengutronix.de; Mon, 11 Sep 2023 14:16:40 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qffqJ-00020j-5c
	for lore@pengutronix.de; Mon, 11 Sep 2023 14:16:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=koDEoMUQaEHPSBatJRUJ18DWvwV0doWAXr1AVj5CRDA=; b=2+GizFJPg6Ndqk1I5qQTpH6dS2
	uhNf6/42ikblx5SzgcJSSFKJ7WlUu/l9En+DO9y83OFtv4moO6TTYzhadeHRWVoVgZ+uVF0mgjj6N
	n1K2I53kB6TN6ggn96ggOdV0QbRPAgCK2oSB0g/BNMu09bjc7Ko7AIB9thYLAAzzx0uGVpSYl23Dz
	7+07qidID0kx2zXfsfsFSX/AFYTcBjYM19I8bGmEI3Ji2jCvAqAokuMvqSs0UfIJObFsHnVdxzwXm
	VXbX+cVf/IRj9XQdL3Wq43STiAtJ27z1jlAWQitexftDSYzQBn9KMwJvXBamn35l4aeRAJunFTEvY
	hNXah+ew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qffpD-000SxP-0v;
	Mon, 11 Sep 2023 12:15:31 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qffp9-000Swx-3C
	for barebox@lists.infradead.org;
	Mon, 11 Sep 2023 12:15:29 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qffp7-0001oU-V7; Mon, 11 Sep 2023 14:15:25 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qffp7-005XsE-Iw; Mon, 11 Sep 2023 14:15:25 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qffp6-00B7m1-31;
	Mon, 11 Sep 2023 14:15:24 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 11 Sep 2023 14:15:24 +0200
Message-Id: <20230911121524.2650416-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230911_051528_027627_6535E935 
X-CRM114-Status: GOOD (  10.54  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] KAsan: support including header from PBL
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

It can be sometimes useful to add manual poisoning with KASAN to track
down errant accesses. This is complicated a bit, because some files are
build for both PBL and barebox proper. To make such debugging easier,
let's allow <linux/kasan.h> to be included from PBL code.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/linux/kasan.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/linux/kasan.h b/include/linux/kasan.h
index 7c184cd0e234..54fb993f38ba 100644
--- a/include/linux/kasan.h
+++ b/include/linux/kasan.h
@@ -42,7 +42,7 @@
 #define KASAN_ALLOCA_LEFT	0xCA
 #define KASAN_ALLOCA_RIGHT	0xCB
 
-#ifdef CONFIG_KASAN
+#if defined(CONFIG_KASAN) && !defined(__PBL__)
 
 extern unsigned long kasan_shadow_start;
 extern unsigned long kasan_shadow_base;
-- 
2.39.2



