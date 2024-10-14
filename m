Delivery-date: Mon, 14 Oct 2024 15:24:56 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0L4C-004Gq9-2Z
	for lore@lore.pengutronix.de;
	Mon, 14 Oct 2024 15:24:56 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0L4C-0001vT-7I
	for lore@pengutronix.de; Mon, 14 Oct 2024 15:24:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=tu4QEFKxXZCeLB0LH6LJ/6Q1iKOp5VJED3T2QA4OKU8=; b=FEhFfpF6zKhUoyGUYCAmG/Vze5
	zVbhTzQxJRtv5rCQWmyyzLolk0IZQtG1HJQdJEiOKm0X4zjjBDqRwVb2qBTwfAyiUxnQwwjQRcZjM
	Q1WpE5mTb22H+XrRJuQMVt+cz0REhQvEZragnWO5IG4MYWSU9z8FNoMZrNDYF3qXPXdFo7P5vD/nG
	v0XP2xTd9wp84JXYPZzxhzxlNaBecu7yajAW9USv5fVgYhC+i1QIlkSQGTwdOMwm0sjs9VLVNuhZM
	0uVOCWNjpdt//f+7trIv+5R8CpFFnB7bZi28a3ux2n40WaKrD0eLZpDBIz5lziPDorHBWjnZAfzgC
	Sk2mH4tg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0L3g-00000005Fzo-200E;
	Mon, 14 Oct 2024 13:24:24 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0JMV-00000004wjo-04mK
	for barebox@lists.infradead.org;
	Mon, 14 Oct 2024 11:35:44 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t0JMT-0000HA-Kk; Mon, 14 Oct 2024 13:35:41 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t0JMT-001mMN-7U; Mon, 14 Oct 2024 13:35:41 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t0JMT-00Bp5f-0S;
	Mon, 14 Oct 2024 13:35:41 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Abdelrahman Youssef <abdelrahmanyossef12@gmail.com>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 14 Oct 2024 13:35:40 +0200
Message-Id: <20241014113540.2817987-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241014_043543_075636_CF80A9F9 
X-CRM114-Status: GOOD (  10.25  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master] sandbox: lds: fix relocation in read-only section warning
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

To address an "ELF has a LOAD segment with RWX permissions" warning
during the sandbox build, the RO_DATA_SECTION was marked READONLY.

At least with Debian GCC 12.2.0-14, this just brought us a different
warning:

  /usr/bin/ld: common/memory.o: warning: relocation in read-only section `.initcall.9'
  /usr/bin/ld: warning: creating DT_TEXTREL in a PIE

This is understandable: If an initcall is emitted with a relocation,
marking its section as read-only is inconsistent.

Taking a step back, the actual problem is that we need to tell GCC that
our RO_DATA_SECTION is not executable. Therefore, let's insert it before
.data (which is rw^x) instead of .rodata, which is (rx).

Fixes: c11590f5643b ("sandbox: lds: fix "ELF has a LOAD segment with RWX permissions" warning")
Reported-by: Abdelrahman Youssef <abdelrahmanyossef12@gmail.com>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/sandbox/board/barebox.lds.S | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/sandbox/board/barebox.lds.S b/arch/sandbox/board/barebox.lds.S
index de8552dba0ac..0102b9333174 100644
--- a/arch/sandbox/board/barebox.lds.S
+++ b/arch/sandbox/board/barebox.lds.S
@@ -5,9 +5,9 @@
 SECTIONS
 {
 	. = ALIGN(64);
-	.barebox_rodata (READONLY) : {
+	.barebox_rodata () : {
 		RO_DATA_SECTION
 	}
 }
 
-INSERT BEFORE .rodata;
+INSERT BEFORE .data;
-- 
2.39.5



