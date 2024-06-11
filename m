Delivery-date: Tue, 11 Jun 2024 09:00:09 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sGvUH-00472U-2Q
	for lore@lore.pengutronix.de;
	Tue, 11 Jun 2024 09:00:09 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sGvUH-0006BY-5U
	for lore@pengutronix.de; Tue, 11 Jun 2024 09:00:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=IjtdrOOkttjN08Tj67IKiUCuXGUlqrv2v96mVvidZdo=; b=EizN7GRyuqjrPVsfMSRYo99/3E
	SKEbkSht8Ji7X/gYIWi9SCMIf5lLeTbUq7hj9vcC7qauz0TDKeLA3x4yeTEd62utKAtgVdvyEwLbz
	nquGvNtgJ9035kBAqhPhapVwZ1gooZq063EbN++wJyYPBBygdT72ftpvJu62/5TIgpRrPfocwNFOh
	jQWImKBjnCCbS1qO3TuVf1l3WnriBIGz0LRPx+53N74I4zkdjcVBtDDxxIKsFUktBlU8bSXRjDvId
	aJhTlf/9IFocZDf/jxoOFrND9v5rIYfj/SXybWUVaYig/CTgHxAa+a5eZdQVo/3ymPeQYLRdq4yjV
	EmA6tufQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sGvTj-00000007mzl-2Zd2;
	Tue, 11 Jun 2024 06:59:35 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sGvTa-00000007msv-11TU
	for barebox@lists.infradead.org;
	Tue, 11 Jun 2024 06:59:29 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sGvTY-0005qM-UT; Tue, 11 Jun 2024 08:59:24 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sGvTY-001UDH-GV; Tue, 11 Jun 2024 08:59:24 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sGvTY-00CATV-1N;
	Tue, 11 Jun 2024 08:59:24 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 11 Jun 2024 08:59:20 +0200
Message-Id: <20240611065923.2900168-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240611065923.2900168-1-a.fatoum@pengutronix.de>
References: <20240611065923.2900168-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240610_235926_440714_17B612F3 
X-CRM114-Status: GOOD (  10.39  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 3/6] firmware: semihosting: don't return error code from writec/write0
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

As described in the "ARM Compiler toolchain Developing Software
for ARM Processors Version 5.0" document[1], SYS_WRITE0 and SYS_WRITEC
corrupt the R0 register, unlike the other calls that return negative
error codes. Therefore change the return type to void.

[1]: https://developer.arm.com/documentation/dui0471/i/semihosting/sys-write0--0x04-?lang=en

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/firmware/semihosting.c    | 8 ++++----
 include/asm-generic/semihosting.h | 4 ++--
 2 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/firmware/semihosting.c b/drivers/firmware/semihosting.c
index a037a95a1077..1dfbdf219727 100644
--- a/drivers/firmware/semihosting.c
+++ b/drivers/firmware/semihosting.c
@@ -91,15 +91,15 @@ int semihosting_close(int fd)
 }
 EXPORT_SYMBOL(semihosting_close);
 
-int semihosting_writec(char c)
+void semihosting_writec(char c)
 {
-	return semihosting_trap(SEMIHOSTING_SYS_WRITEC, &c);
+	(void)semihosting_trap(SEMIHOSTING_SYS_WRITEC, &c);
 }
 EXPORT_SYMBOL(semihosting_writec);
 
-int semihosting_write0(const char *str)
+void semihosting_write0(const char *str)
 {
-	return semihosting_trap(SEMIHOSTING_SYS_WRITE0, (void *)str);
+	(void)semihosting_trap(SEMIHOSTING_SYS_WRITE0, (void *)str);
 }
 EXPORT_SYMBOL(semihosting_write0);
 
diff --git a/include/asm-generic/semihosting.h b/include/asm-generic/semihosting.h
index b745f8831977..67031c331b97 100644
--- a/include/asm-generic/semihosting.h
+++ b/include/asm-generic/semihosting.h
@@ -7,8 +7,8 @@
 
 int semihosting_open(const char *fname, int flags);
 int semihosting_close(int fd);
-int semihosting_writec(char c);
-int semihosting_write0(const char *str);
+void semihosting_writec(char c);
+void semihosting_write0(const char *str);
 ssize_t semihosting_write(int fd, const void *buf, size_t count);
 ssize_t semihosting_read(int fd, void *buf, size_t count);
 int semihosting_readc(void);
-- 
2.39.2



