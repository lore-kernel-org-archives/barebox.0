Delivery-date: Mon, 03 Mar 2025 14:50:08 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tp6BM-009MDE-1f
	for lore@lore.pengutronix.de;
	Mon, 03 Mar 2025 14:50:07 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tp6BL-0007hu-Bs
	for lore@pengutronix.de; Mon, 03 Mar 2025 14:50:07 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=8y/QhsBtwybkK1ep6umv83GKaaj/Z5dxskNN6+iw9os=; b=0Z7K+4bJpIdPuoby+qpdqC9WlG
	qH3U5MV092Bv82/I0qdEOBZor/YRaY+9EzPiO7nj1ML2hrHkhQYI94p1U+UTBquzATUdimqUCulu3
	p2rZJfH6h02+Ums2mX67tWbKwwqbRcoilMcjAcH6RdB9w7bwRWso4EGvTRhEa/N0GJmgwoyzuosUA
	YUEutO7FlPsGOc53Fr1pr4MAVSJhtC1B1tA7ALETn4BnPdKoAonaqH7cH4QKxpLfYOz/8pYPyeTkz
	uXN4BTNyKmtcbhqIK2M2Lpb6ZthHm45N+rwQUaxrY/jThzZ9MKtiMZav1pcFsJ7KjcsU8YI4+qv9D
	3lHHYZJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tp6Ag-00000000ypW-2BuD;
	Mon, 03 Mar 2025 13:49:26 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tp5pz-00000000uuO-1SXS
	for barebox@lists.infradead.org;
	Mon, 03 Mar 2025 13:28:04 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tp5px-0004eX-RI; Mon, 03 Mar 2025 14:28:01 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tp5px-003o2y-28;
	Mon, 03 Mar 2025 14:28:01 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tp5px-00DHMM-1q;
	Mon, 03 Mar 2025 14:28:01 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  3 Mar 2025 14:28:00 +0100
Message-Id: <20250303132800.3164782-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250303_052803_387746_5FA3A7B1 
X-CRM114-Status: UNSURE (   9.95  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master] sandbox: libc_malloc: multiply, not add, args in calloc overflow check
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

libc_malloc is built without access to barebox headers, so instead of
size_mul it's using GCC builtins directly.

The check against BAREBOX_MALLOC_MAX_SIZE should've been done using the
product as indicated by the variable name, but erroneously
__builtin_add_overflow was used instead of __builtin_mul_overflow.

Fixes: 8839004152f7 ("sandbox: libc_malloc: fail allocations exceeding MALLOC_MAX_SIZE")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/sandbox/os/libc_malloc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/sandbox/os/libc_malloc.c b/arch/sandbox/os/libc_malloc.c
index ac97fc37eee5..dd0f8670ff71 100644
--- a/arch/sandbox/os/libc_malloc.c
+++ b/arch/sandbox/os/libc_malloc.c
@@ -67,7 +67,7 @@ void *barebox_calloc(size_t n, size_t elem_size)
 	size_t product;
 	void *mem = NULL;
 
-	if (!__builtin_add_overflow(n, elem_size, &product) &&
+	if (!__builtin_mul_overflow(n, elem_size, &product) &&
 	    product <= BAREBOX_MALLOC_MAX_SIZE)
 		mem = calloc(n, elem_size);
 	if (!mem)
-- 
2.39.5



