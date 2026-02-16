Delivery-date: Mon, 16 Feb 2026 10:17:42 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vrujd-002Gv0-1t
	for lore@lore.pengutronix.de;
	Mon, 16 Feb 2026 10:17:42 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vrujY-0007TH-2C
	for lore@pengutronix.de; Mon, 16 Feb 2026 10:17:42 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=sn7Ozftt+/RE/zQldnXzjPv1/0xWWJkMSAw17BTwuYw=; b=b5eAEa1UcyiSReYNtUWOPVh5yr
	V47APW44yiYQwVZuid8hljfexFW1ew6FbYsTLZ2EkWqIbBvefJCZ/A5oxTrAD8cd+vZzAzGao5C0O
	6siCxenwv1mkl5t9X3al57JBfB3Z8yX5FGky8PXAzemTqSTOWAgscdTeNotFo0gE8B+r+78zqpvUI
	hsxnzoiAuG9nYC4XJ45zu6lVczdTcpwceEmisrgu/4xnl+xoHUtLImiylnptXBElwcRYgvcNvNDrm
	KVYI78MIUI7nP/cNBW9iw4i7HAkS8gcNVTxbSEyT0szLdj5fCoBlnnYztgQMjQf/3nvOZV8ZQW06Z
	7KP0dKvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vruin-00000006EaS-2YVW;
	Mon, 16 Feb 2026 09:16:49 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vruig-00000006ERp-2T1e
	for barebox@lists.infradead.org;
	Mon, 16 Feb 2026 09:16:45 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vruie-0006UU-TR; Mon, 16 Feb 2026 10:16:40 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vruid-0012Wq-0x;
	Mon, 16 Feb 2026 10:16:40 +0100
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vruH1-0000000Eudd-1sze;
	Mon, 16 Feb 2026 09:48:07 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 16 Feb 2026 09:44:38 +0100
Message-ID: <20260216084758.3548990-39-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260216084758.3548990-1-a.fatoum@pengutronix.de>
References: <20260216084758.3548990-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260216_011642_647164_DB8C9E57 
X-CRM114-Status: GOOD (  10.96  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH master 38/39] console: introduce helper for printing binary buffers as-is
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Both console_putc(), console_puts() and console->puts always do
LF to CRLF conversion. For cases where this is not desired, code must
manually call console_putc in a loop.

Add a helper to simplify this.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/console.c  | 31 +++++++++++++++++++++++++++++++
 include/console.h |  1 +
 2 files changed, 32 insertions(+)

diff --git a/common/console.c b/common/console.c
index 8a55fd1a1dc6..62ca57e43b05 100644
--- a/common/console.c
+++ b/common/console.c
@@ -637,6 +637,37 @@ int console_puts(unsigned int ch, const char *str)
 }
 EXPORT_SYMBOL(console_puts);
 
+void console_putbin(unsigned int ch, const u8 *str, size_t len)
+{
+	struct console_device *cdev;
+
+	switch (initialized) {
+	case CONSOLE_UNINITIALIZED:
+		console_init_early();
+		fallthrough;
+	case CONSOLE_INITIALIZED_BUFFER:
+		kfifo_put(console_output_fifo, str, len);
+		for (size_t i = 0; i < len; i++)
+			putc_ll(str[i]);
+		return;
+	case CONSOLE_INIT_FULL:
+		for_each_console(cdev) {
+			if (!(cdev->f_active & ch))
+				continue;
+
+			for (size_t i = 0; i < len; i++)
+				cdev->putc(cdev, str[i]);
+		}
+		return;
+	default:
+		/* If we have problems inititalizing our data
+		 * get them early
+		 */
+		hang();
+	}
+}
+EXPORT_SYMBOL(console_putbin);
+
 void console_flush(void)
 {
 	struct console_device *cdev;
diff --git a/include/console.h b/include/console.h
index 149378fc2839..b163c6684ee1 100644
--- a/include/console.h
+++ b/include/console.h
@@ -230,6 +230,7 @@ int arch_ctrlc(void);
 /* stdout */
 void console_putc(unsigned int ch, const char c);
 int console_puts(unsigned int ch, const char *s);
+void console_putbin(unsigned int ch, const u8 *str, size_t len);
 void console_flush(void);
 
 int ctrlc(void);
-- 
2.47.3



