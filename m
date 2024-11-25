Delivery-date: Mon, 25 Nov 2024 16:14:25 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tFanB-000Fbz-07
	for lore@lore.pengutronix.de;
	Mon, 25 Nov 2024 16:14:25 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tFanA-000079-T2
	for lore@pengutronix.de; Mon, 25 Nov 2024 16:14:25 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=GV0JoEbvWHI1kLHw88u5mN8mG+13B4H4zHZRTtWQ/eU=; b=dbdYB1p7E2qjBAZ21tlJcSN2jP
	D/EhHlIWARFqNYsFsaKCmPldKAPp2P5BrHxvgK14A8dsgYsRjX5KbP4R98I/Clz6CWL01fOyikYd0
	KVv18M9g+RzOrBLVbznGn9aF69VBx3GTtRSgGDQub0rtcG6G+9Ppk0TxWfaaoy3bCJ2klf5OO64D4
	R2pfX95aUiCFrHeeFC3MqqXxlN/ehYQaVWtZEdsYOkiXw7mQ/xOBhCSMLwWlQHIJWXojV+Hy+z6GM
	Amjz4yOaUa5bujiPBP0bwalYQWit9MPHdQVui7z6M/QyQDP4lIYRo7nGtB1UIKb37/2mP2yliJq58
	HSpq/ekQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tFaml-00000008QQJ-1GIF;
	Mon, 25 Nov 2024 15:13:59 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tFamh-00000008QOs-29sw
	for barebox@lists.infradead.org;
	Mon, 25 Nov 2024 15:13:56 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFamg-0008Jc-5O; Mon, 25 Nov 2024 16:13:54 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFamf-0006NJ-0e;
	Mon, 25 Nov 2024 16:13:53 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFamf-001ntE-0r;
	Mon, 25 Nov 2024 16:13:53 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 25 Nov 2024 16:13:52 +0100
Message-Id: <20241125151353.428428-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20241125151353.428428-1-a.fatoum@pengutronix.de>
References: <20241125151353.428428-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241125_071355_552124_E39F02F2 
X-CRM114-Status: GOOD (  11.45  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 3/4] include: align: reword STACK_ALIGN_ARRAY macro parameter for clarity
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Instead of using an ambiguous parameter name 'size' and having a comment
to clarify what's meant by it, just rename it nelems to make clear that
it's the number of elements that should be specified as argument.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - no change
---
 include/linux/align.h | 11 ++++-------
 1 file changed, 4 insertions(+), 7 deletions(-)

diff --git a/include/linux/align.h b/include/linux/align.h
index 3b0c60d6e9ae..ff3134db9ea1 100644
--- a/include/linux/align.h
+++ b/include/linux/align.h
@@ -15,12 +15,9 @@
 /*
  * The STACK_ALIGN_ARRAY macro is used to allocate a buffer on the stack that
  * meets a minimum alignment requirement.
- *
- * Note that the size parameter is the number of array elements to allocate,
- * not the number of bytes.
- */
-#define STACK_ALIGN_ARRAY(type, name, size, align)		\
-	char __##name[sizeof(type) * (size) + (align) - 1];	\
-	type *name = (type *)ALIGN((unsigned long)__##name, align)
+  */
+#define STACK_ALIGN_ARRAY(type, name, nelems, align)		\
+	char __##name[sizeof(type) * (nelems) + (align) - 1];	\
+	type *name = (type *)ALIGN((uintptr_t)__##name, align)
 
 #endif
-- 
2.39.5



