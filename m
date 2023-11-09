Delivery-date: Thu, 09 Nov 2023 12:39:19 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r13NW-0048Ck-28
	for lore@lore.pengutronix.de;
	Thu, 09 Nov 2023 12:39:19 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r13NW-0008Kb-L3
	for lore@pengutronix.de; Thu, 09 Nov 2023 12:39:19 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=uJFl8okon1UxSc5sdSi2f5KhfknOjvXi6lxmmdPKaFk=; b=sZAiAmd/euw/eM1OOdVuLoxh8H
	hJF0uXFOFvp/Mz5LcYc3pqM01cWhOrzPHMsLYUhS18Uusarf4S2fEeA+SBulr5/GoRehEQtbkqNCp
	9v8HfyXz3w7ZXRQN5Ko5QJW/vCEp8j0c3RZFruNzzRydEnwPR6Ph9cllwgdhzNXL702HAM98tPCSS
	RMrmuHiO7hxdKfhwOhmRxdp4oek7WHIxFyNx45Iw+H7heF0dcDUVSbU6Q5PX304p48DbTj8waogwR
	4ZkyIJJy4bdA6HsTrNZVNQ6qolHk7YTLm7Q5faN57HLoayAsSnnL+mk549M7ZD3yeHDRb2nZc2EJw
	CTopggOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r13MU-0065kB-0c;
	Thu, 09 Nov 2023 11:38:14 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r13MQ-0065jH-2U
	for barebox@lists.infradead.org;
	Thu, 09 Nov 2023 11:38:12 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r13MP-0007xx-CC; Thu, 09 Nov 2023 12:38:09 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r13MO-007lW9-Vq; Thu, 09 Nov 2023 12:38:08 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r13MO-0050zG-2t;
	Thu, 09 Nov 2023 12:38:08 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu,  9 Nov 2023 12:38:06 +0100
Message-Id: <20231109113807.1193935-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231109_033810_806002_BAF5A81D 
X-CRM114-Status: UNSURE (   8.85  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 1/2] KASan: test_kasan: hide buggy accesses from compiler
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Once we add __alloc_size attributes to allocations, GCC will complain
about violation of memory safety in test_kasan.c.

That memory violation is intended though as test_kasan is meant to
trigger kasan at runtime to verify correct operation.

Silence the warnings by hiding the origin of ptr, so the compiler loses
context about the size of the allocation.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 lib/kasan/test_kasan.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/lib/kasan/test_kasan.c b/lib/kasan/test_kasan.c
index 14511cdb80bd..a74251a6d9ad 100644
--- a/lib/kasan/test_kasan.c
+++ b/lib/kasan/test_kasan.c
@@ -38,6 +38,8 @@ static noinline void malloc_oob_right(void)
 		return;
 	}
 
+	OPTIMIZER_HIDE_VAR(ptr);
+
 	ptr[size] = 'x';
 
 	free(ptr);
@@ -55,6 +57,8 @@ static noinline void malloc_oob_left(void)
 		return;
 	}
 
+	OPTIMIZER_HIDE_VAR(ptr);
+
 	*ptr = *(ptr - 1);
 	free(ptr);
 }
@@ -75,6 +79,8 @@ static noinline void malloc_oob_realloc_more(void)
 		return;
 	}
 
+	OPTIMIZER_HIDE_VAR(ptr2);
+
 	ptr2[size2] = 'x';
 
 	free(ptr2);
@@ -95,6 +101,8 @@ static noinline void malloc_oob_realloc_less(void)
 		return;
 	}
 
+	OPTIMIZER_HIDE_VAR(ptr2);
+
 	ptr2[size2] = 'x';
 
 	free(ptr2);
@@ -115,6 +123,9 @@ static noinline void malloc_oob_16(void)
 		free(ptr2);
 		return;
 	}
+
+	OPTIMIZER_HIDE_VAR(ptr1);
+
 	*ptr1 = *ptr2;
 	free(ptr1);
 	free(ptr2);
-- 
2.39.2



