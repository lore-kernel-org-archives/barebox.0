Delivery-date: Mon, 16 Feb 2026 09:48:45 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vruHc-002GIC-0l
	for lore@lore.pengutronix.de;
	Mon, 16 Feb 2026 09:48:45 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vruHc-0002mA-Fi
	for lore@pengutronix.de; Mon, 16 Feb 2026 09:48:45 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=w+iUnqIxfMH6iApyYWlnjooPq0xapz2hXOlzxHHYD9E=; b=bxL/I/Nla8EvGjJzWJkJZY4toH
	5E9CdmvtgBLFp+OYSKN4lerarIqlyts5KI7QOm2pf2z+Ob/oSGiG9q3NQG1gcYpu+PE2Q/OQYtS9S
	vlh1FGyI6Lv4VDJKaYej9zXFtH9EnxMIqTeFsBtUJfTwqgS4r8HZJ1DAnRKwqmgZZm9+0lmj7NLrk
	0dBKCTPq/mktF2/PYxB13ekSs2opbKbQ2ec2HF4YQCrR97H2p5g7UwrlmBoXvCfwTxSk2NdoZcce7
	A6dZMeS7tjkyJRwFk0vDambnYDaxdt5laMZ+5vWzLI7r6gYadwGzkkB3jQelvmb0fmJBN847NAjrC
	vNxKJbZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vruHE-00000006BiW-1Ey4;
	Mon, 16 Feb 2026 08:48:20 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vruH1-00000006BZc-3eCq
	for barebox@lists.infradead.org;
	Mon, 16 Feb 2026 08:48:14 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vruH0-0002Il-5L; Mon, 16 Feb 2026 09:48:06 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vruGy-0012D9-1u;
	Mon, 16 Feb 2026 09:48:05 +0100
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vruGz-0000000Eudd-3YIe;
	Mon, 16 Feb 2026 09:48:05 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>,
	"Claude Opus 4.6" <noreply@anthropic.com>
Date: Mon, 16 Feb 2026 09:44:02 +0100
Message-ID: <20260216084758.3548990-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260216084758.3548990-1-a.fatoum@pengutronix.de>
References: <20260216084758.3548990-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260216_004810_811063_D823FB26 
X-CRM114-Status: UNSURE (   9.27  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH master 02/39] efi: trace: fix EFI_EXIT2 to not evaluate output value on error
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

EFI_EXIT2(ret, val) unconditionally evaluates 'val' for debug output,
even when ret indicates an error. This leads to NULL pointer
dereferences at 13 call sites in boot.c where the output pointer is
only valid on success (e.g., *memory after failed allocate_pages,
*event after failed create_event).

Fix by reusing EFI_EXIT() on the error path, which skips evaluation
of the second argument entirely. The extended output with the value
is only printed on the success path.

Reported-by: Claude Opus 4.6 <noreply@anthropic.com>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/efi/loader/trace.h | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/include/efi/loader/trace.h b/include/efi/loader/trace.h
index 93bba7bb88c7..4acf7c1634cc 100644
--- a/include/efi/loader/trace.h
+++ b/include/efi/loader/trace.h
@@ -44,9 +44,13 @@ const char *__efi_nesting_dec(void);
 #ifndef EFI_EXIT2
 #define EFI_EXIT2(ret, val) ({ \
 	typeof(ret) _r = ret; \
-	__EFI_PRINT("%sEFI: Exit: %s: %s (%u) = 0x%llx\n", __efi_nesting_dec(), \
-		__func__, efi_strerror((uintptr_t)_r), (u32)((uintptr_t) _r & ~EFI_ERROR_MASK), \
-		(u64)(uintptr_t)(val)); \
+	if (EFI_ERROR(_r)) \
+		EFI_EXIT(_r); \
+	else \
+		__EFI_PRINT("%sEFI: Exit: %s: %s (%u) = 0x%llx\n", __efi_nesting_dec(), \
+			__func__, efi_strerror((uintptr_t)_r), \
+			(u32)((uintptr_t) _r & ~EFI_ERROR_MASK), \
+			(u64)(uintptr_t)(val)); \
 	_r; \
 	})
 #endif
-- 
2.47.3



