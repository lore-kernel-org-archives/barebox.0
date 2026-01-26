Delivery-date: Mon, 26 Jan 2026 18:25:40 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vkQLN-005cKt-0r
	for lore@lore.pengutronix.de;
	Mon, 26 Jan 2026 18:25:40 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vkQLM-0001C1-8n
	for lore@pengutronix.de; Mon, 26 Jan 2026 18:25:40 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=zLuLg/ovcauTuLlQcid97z2mQqGqjPt3KPR0VX/0oY8=; b=trZUgI0rVN57aDzCboygJaUO8G
	O9cDkkYBBy+WUxJV36jho+PtZLkXVo3vuaNIzDG2AIjJy3/YK/VIeI+tJdROgdEFUnuu035B7dczt
	0C+VObtwOLHxN5PwHleH67wUxSSntT248sQV6lxByLQp6JHITKMnR2cwGR8e7hTqAwnBsaJojVDWl
	2wqVH9DxfkeZBIurRnC49ZJ2omw/CQaWi0GAx+MjAtcEmw+60dkqVbBxLTGJ/Mthho9V2foyXCuK/
	VfjH6j8nlJ4hllXWQhZ0gh7CVrd/XR7IrO30RjYEy5yoPAzty3j4MfQx4OfB8urjTd5Kl43HutHPI
	iVElR3vg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkQKn-0000000Cxyg-1LZt;
	Mon, 26 Jan 2026 17:25:05 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkQKk-0000000Cxy4-1L1c
	for barebox@lists.infradead.org;
	Mon, 26 Jan 2026 17:25:03 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vkQKh-00014B-VH; Mon, 26 Jan 2026 18:24:59 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vkQKi-002cOk-1S;
	Mon, 26 Jan 2026 18:24:59 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vkQKi-00000007OJz-0qUj;
	Mon, 26 Jan 2026 18:24:59 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: bst@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 26 Jan 2026 18:24:14 +0100
Message-ID: <20260126172458.1761664-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260126_092502_379994_457E2C53 
X-CRM114-Status: GOOD (  13.57  )
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
Subject: [PATCH] serial: efi-stdio: fix repeated carriage return with putc callback
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

A console driver can populate the console_device::puts callback instead
of having the console core substitute __console_puts, if it can implement
the operation in a more performant manner than the repeated calls to
console_device::putc that occur otherwise.
Whether provided by driver or by console core, console_device::puts
is responsible for converting LF characters to CRLF.

console_device::putc on the other hand does not do any such conversion
and instead its callers are supposed to inject carriage return as needed.

By implementing console_device::putc in terms of console_device::puts for
efi-stdio, putchar('\n') ends up emitting the carriage return twice:
once in the console code and once more in the efi-stdio driver.

Fix this by directly directly calling efi_console_add_char() in the
console_device::getc callback without any line feed handling.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
The cat and readlink tests that are in-flight require this patch, so
the test works correctly for barebox running as EFI payload.
---
 drivers/serial/efi-stdio.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/serial/efi-stdio.c b/drivers/serial/efi-stdio.c
index cbeda6f3bb8b..b474fe635d15 100644
--- a/drivers/serial/efi-stdio.c
+++ b/drivers/serial/efi-stdio.c
@@ -349,7 +349,9 @@ static int efi_console_puts(struct console_device *cdev, const char *s,
 
 static void efi_console_putc(struct console_device *cdev, char c)
 {
-	efi_console_puts(cdev, &c, 1);
+	struct efi_console_priv *priv = to_efi(cdev);
+	efi_console_add_char(priv, c);
+	efi_console_flush(priv);
 }
 
 static int efi_console_tstc(struct console_device *cdev)
-- 
2.47.3



