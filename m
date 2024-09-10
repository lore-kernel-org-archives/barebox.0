Delivery-date: Tue, 10 Sep 2024 11:02:14 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1snwlK-0036V0-1x
	for lore@lore.pengutronix.de;
	Tue, 10 Sep 2024 11:02:14 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1snwlJ-0004Jj-Fc
	for lore@pengutronix.de; Tue, 10 Sep 2024 11:02:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Co54P2E8ScNUDcgF01E59QtcxqvppUYS2fWwm729cLs=; b=1lqHXakTHMEUBQIxdBqeYmpLXv
	9Nm/ikdNN/Jkqwxh3MOh/8cu/f6g11Er2Ir/YZCLGz3a1uxHrK35FnoN7QePc04xwRqsRl/yV5xQZ
	r7nWRBuZQdDjZ52C3vIKKgL2fG8itVNnMYbsjLE09E43uJdb7PnjOTIbsMsXliW4B2YyOy84BrTFU
	gfmT5FRMkfBUTmXJwdOkAYkwQ0OCrJ0Wa+qlqXtm2SOUjTWalUK8cO6tQHpgec1YmOI8+q+GSdABY
	fIrdi5iMPs8nMxbyzT+h+2kokUSY3SdsCZzLdUx4+/w9QnuMWsOePq4C6nUh8h8wDBN3txiAyHfsq
	+1K0SNjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1snwkp-00000004uhi-3luT;
	Tue, 10 Sep 2024 09:01:43 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1snwk9-00000004uVj-3qWC
	for barebox@lists.infradead.org;
	Tue, 10 Sep 2024 09:01:10 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1snwk8-0003gi-DP; Tue, 10 Sep 2024 11:01:00 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1snwk8-006r8E-0b; Tue, 10 Sep 2024 11:01:00 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1snwk7-000Dxl-1W;
	Tue, 10 Sep 2024 11:00:59 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 10 Sep 2024 11:00:50 +0200
Message-Id: <20240910090050.53550-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240910_020106_283157_91119A45 
X-CRM114-Status: GOOD (  11.03  )
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
Subject: [PATCH v2] sandbox: lds: fix "ELF has a LOAD segment with RWX permissions" warning
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

With binutils 2.39+, the barebox build started emitting this warning.
On platforms other than sandbox, we disable this warning by passing --no-warn-rwx
to ld as we don't care for ELF attributes as they aren't used anyway.

On sandbox, however, the ELF attributes matter, so disabling the warning
completely felt wrong. Looking more into it now, we can mark the
.barebox_rodata section in the linker file snippet we have in sandbox as
READONLY and the warning disappears, so let's do that instead.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - add fallback for earlier binutils that don't know about READONLY.
---
 arch/sandbox/board/barebox.lds.S  | 2 +-
 include/asm-generic/barebox.lds.h | 5 +++++
 2 files changed, 6 insertions(+), 1 deletion(-)

diff --git a/arch/sandbox/board/barebox.lds.S b/arch/sandbox/board/barebox.lds.S
index ab2801f3d207..de8552dba0ac 100644
--- a/arch/sandbox/board/barebox.lds.S
+++ b/arch/sandbox/board/barebox.lds.S
@@ -5,7 +5,7 @@
 SECTIONS
 {
 	. = ALIGN(64);
-	.barebox_rodata : {
+	.barebox_rodata (READONLY) : {
 		RO_DATA_SECTION
 	}
 }
diff --git a/include/asm-generic/barebox.lds.h b/include/asm-generic/barebox.lds.h
index d3736ebaed59..9af874b2262b 100644
--- a/include/asm-generic/barebox.lds.h
+++ b/include/asm-generic/barebox.lds.h
@@ -171,3 +171,8 @@ CONFIG_ARCH_BAREBOX_MAX_PBL_SIZE < CONFIG_BAREBOX_MAX_PBL_SIZE
 	ASSERT(_barebox_pbl_size < MAX_PBL_SIZE, "Barebox pbl size > ") \
 	ASSERT(_barebox_pbl_size < MAX_PBL_SIZE, __stringify(MAX_PBL_SIZE)) \
 
+#if defined(__GNUC__) && __GNUC__ >= 11
+#define READONLY READONLY
+#else
+#define READONLY
+#endif
-- 
2.39.2



