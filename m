Delivery-date: Mon, 13 Apr 2026 12:11:55 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCEGp-00BgIo-0E
	for lore@lore.pengutronix.de;
	Mon, 13 Apr 2026 12:11:55 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCEGo-0001dY-5v
	for lore@pengutronix.de; Mon, 13 Apr 2026 12:11:55 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Tlt1Ia72ruoxsqk+gRTSML/mQbenoYDrCN0ZXNKeNMc=; b=LW+UxG0Pk3n8WGLXO8igLeOJU7
	styBsO0ne20UGoIJkHRHEXQLkWiBHBCRB5gLFVrisMsi6bOH5sefVk995WBsGk27tuBtgPHm6jBV0
	Meni9m7aZXPTFLQS2BPrCX+OYTyzZ3OCgGf0vWKNCACNN8n9mcCyA5b2DDln1H2wy9vQErNwLKHZa
	KA6+1OyMauU/jhmEvx3cp0Dq6ctPmpR2RtkM8ww5cHlBBY4sjEy9mmhDlvVk6P8ZtBBuGAy/Gehy6
	U2oiQh2tk+s7hTymUx9cjmeD6aV3uQPOl6xBwkr1Z13Uj1ih8Wq6aFQM3BplKHVU4LeSWeCBUYqhj
	jnEeH/nA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCEGU-0000000FSGf-0BcR;
	Mon, 13 Apr 2026 10:11:34 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCEGL-0000000FS5f-2jXO
	for barebox@bombadil.infradead.org;
	Mon, 13 Apr 2026 10:11:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=Tlt1Ia72ruoxsqk+gRTSML/mQbenoYDrCN0ZXNKeNMc=; b=lsPTnNqEEqrkTpVOXaElRaDb3Z
	vG7QgAkirp6VvEl6vh8yvl84SVT3jQizw0459FDZmgiUInLrBtfujAQPEq3Jdl3Io38d3jQzTQyCc
	KElLgzWD4e49nOi6SM+UQ+mOSnCaJ7cUz1aITK7cXA0eDoX8ikahxc60S/z9DHmxfp8CXE3qAr/GC
	bVfTBJUXdF7bGIjOvK5aNRByTdnS0hDgSivfVZ+O8RGpNyMi1aRBKX+d1x/uNEM7qThFTCdwaMoqc
	I367UcUrj7+/rmt4J1PHJu/hta9Mb6eMxVSakP860+a48aIQJlYVICpXHmgvrGTKMipIND1Vd+hnr
	RbutZM1A==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCEGI-0000000GZ7H-0ePu
	for barebox@lists.infradead.org;
	Mon, 13 Apr 2026 10:11:24 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1wCEGH-0001Is-Ld; Mon, 13 Apr 2026 12:11:21 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon, 13 Apr 2026 12:09:41 +0200
Message-ID: <20260413101118.1462119-6-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260413101118.1462119-1-a.fatoum@barebox.org>
References: <20260413101118.1462119-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260413_111122_516422_9820E628 
X-CRM114-Status: UNSURE (   8.70  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=ham autolearn_force=no version=3.4.2
Subject: [PATCH 6/7] console: implement console_printf
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

printf formats to a buffer and then prints it out with puts().

Allow printing to arbitrary consoles while reusing this logic by adding
a new console_printf().

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 common/console_common.c | 29 ++++++++++++++++++++++++-----
 include/console.h       |  3 +++
 2 files changed, 27 insertions(+), 5 deletions(-)

diff --git a/common/console_common.c b/common/console_common.c
index 86d9f523b1c5..310534affa58 100644
--- a/common/console_common.c
+++ b/common/console_common.c
@@ -266,7 +266,7 @@ int log_print(unsigned flags, unsigned levels)
 	return 0;
 }
 
-int printf(const char *fmt, ...)
+int console_printf(struct console_device *con, const char *fmt, ...)
 {
 	va_list args;
 	int i;
@@ -282,13 +282,13 @@ int printf(const char *fmt, ...)
 	va_end(args);
 
 	/* Print the string */
-	puts(printbuffer);
+	console_puts(con, printbuffer);
 
 	return i;
 }
-EXPORT_SYMBOL(printf);
+EXPORT_SYMBOL(console_printf);
 
-int vprintf(const char *fmt, va_list args)
+int console_vprintf(struct console_device *con, const char *fmt, va_list args)
 {
 	int i;
 	char printbuffer[CFG_PBSIZE];
@@ -300,10 +300,29 @@ int vprintf(const char *fmt, va_list args)
 	i = vsnprintf(printbuffer, sizeof(printbuffer), fmt, args);
 
 	/* Print the string */
-	puts(printbuffer);
+	console_puts(con, printbuffer);
 
 	return i;
 }
+EXPORT_SYMBOL(console_vprintf);
+
+int printf(const char *fmt, ...)
+{
+	va_list args;
+	int i;
+
+	va_start(args, fmt);
+	i = console_vprintf(CONSOLE_DEV_STDOUT, fmt, args);
+	va_end(args);
+
+	return i;
+}
+EXPORT_SYMBOL(printf);
+
+int vprintf(const char *fmt, va_list args)
+{
+	return console_vprintf(CONSOLE_DEV_STDOUT, fmt, args);
+}
 EXPORT_SYMBOL(vprintf);
 
 struct console_device *console_get_by_dev(struct device *dev)
diff --git a/include/console.h b/include/console.h
index 5a4dbcdf1327..ed5b501b65a4 100644
--- a/include/console.h
+++ b/include/console.h
@@ -248,6 +248,9 @@ int console_puts(struct console_device *con, const char *s);
 void console_putbin(struct console_device *con, const u8 *str, size_t len);
 void console_flush(void);
 
+int console_printf(struct console_device *con, const char *fmt, ...) __printf(2, 3);
+int console_vprintf(struct console_device *con, const char *fmt, va_list args);
+
 int ctrlc(void);
 int ctrlc_non_interruptible(void);
 void ctrlc_handled(void);
-- 
2.47.3



