Delivery-date: Tue, 21 Oct 2025 16:54:53 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vBDlF-00AHjg-2U
	for lore@lore.pengutronix.de;
	Tue, 21 Oct 2025 16:54:53 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vBDlF-0002KW-8X
	for lore@pengutronix.de; Tue, 21 Oct 2025 16:54:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=5x4hbbArLVc9a0z+6GRGYgHoNlOK5vyk6PVb/y19lrQ=; b=BThiYDBAgBdPUgWJOSZLwypku5
	Iypy5Xnpbsj97tW4NIO6eXAbSu4wtHP3MwUQzN772jjyC58hC6emwUTTv3h0TGQHW7TOsZbd63TLt
	Ue6QRC2SOoI6QPOek5I2kRc0yEhK7VP65pSCs2c8Ty1huh9Klp80AT51pbcWgUcLelcMeCWzn0VZb
	AU2ZnNb88LbC13xKgdrpKLePXrT+09KzJpZ2+NVd0GNGs+vLwbnMrsmo8mL+sW6nDCSeqXL0hfT+T
	gSLqNcmV5bqBP/58SNXy0EK4Ml4IYS4lKEhv8Rh/5ziyV4+4eVYEkgo3rriyP+AxLelg5pi/0Zxrr
	T/uniVyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBDkn-0000000HOhz-3W2W;
	Tue, 21 Oct 2025 14:54:25 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBDkl-0000000HOgl-1A1w
	for barebox@lists.infradead.org;
	Tue, 21 Oct 2025 14:54:24 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vBDkj-00028N-FX; Tue, 21 Oct 2025 16:54:21 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vBDkj-004k0c-0v;
	Tue, 21 Oct 2025 16:54:21 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vBDkj-00000005LeR-0oaF;
	Tue, 21 Oct 2025 16:54:21 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 21 Oct 2025 16:54:13 +0200
Message-ID: <20251021145420.1274668-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251021_075423_314212_25E786F5 
X-CRM114-Status: UNSURE (   9.40  )
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
X-Spam-Status: No, score=-1.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,SUBJECT_IN_BLACKLIST,
	SUBJECT_IN_BLOCKLIST autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 1/2] test: self: malloc: fix double free after expect_alloc_fail
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

If the realloc call unexpectedly succeeds, the p pointer is invalidated,
but it's free'd unconditionally later on, which triggers a
user-after-free.

Account for this by zeroing p when it becomes stale.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 test/self/malloc.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/test/self/malloc.c b/test/self/malloc.c
index 52f9fc344c1a..a60e95b2233f 100644
--- a/test/self/malloc.c
+++ b/test/self/malloc.c
@@ -109,9 +109,15 @@ static void test_malloc(void)
 
 	if (mem_malloc_size) {
 		tmp = expect_alloc_fail(realloc(p, mem_malloc_size));
+		if (tmp)
+			p = NULL;
+
 		free(tmp);
 
 		tmp = expect_alloc_fail(realloc(p, RELOC_HIDE(MALLOC_MAX_SIZE, -1)));
+		if (tmp)
+			p = NULL;
+
 		free(tmp);
 	} else {
 		skipped_tests += 2;
-- 
2.47.3



