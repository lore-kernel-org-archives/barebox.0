Delivery-date: Sun, 08 Nov 2026 10:35:04 +0100
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xPzIl-008dSK-2N
	for lore@lore.pengutronix.de;
	Sun, 08 Nov 2026 10:35:04 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id E6ACB2006B6
	for <lore@pengutronix.de>; Sun, 08 Nov 2026 10:35:03 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=eodXzzYL;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794130503;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=Mr5+4j7LXQ21VE23EjdcfvTHJzk6nbzlNKE88Ru3fR4=;
	b=BtvZVq8mf7M55lYYDpLAmlxPHbmMkgD06MWPF1ZJ+6OVmEeM9IAsQOqq+7yJcjl4Ul3fT0
	ADioJtJR0P/Fcrw/43yP8VZ/GJrKqAAjcKWVvmQl0MYZ7uwgR2EVWY4hJWDF8L5JKsNmwt
	RZMYrF3BCThzTS1EubCIfdmwG3RZ639pJqj0wAzk9xzLKXPZqkMaXnJN1gzCFcTp/gjLJ1
	Dzvy52oMgjrWSe8aPm77zNqBxb2ULE2PHTQfvcocQ8TgXNmlnpCbsL5wA9sP9lVrd+jgQK
	bBYMau2fJbDCp1l4gyCqi2Z7kCpOCCYmYkDkN96rweIENsaDkRsEu3JGRcuGSg==
ARC-Authentication-Results: i=1;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=eodXzzYL;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1794130503; a=rsa-sha256;
	cv=none;
	b=Fwo4ILUiowuIPFuK9N9++LrRoEDLyobEyEIwGayT3LeUVmnj//WtIVH/y6TlRsGB7qFPjl
	iWHRXdRh3bWN9REgf412PSM1O3VIRBvePZlLr+1jQmcq2LDVmIg00U3MqYtGs8gT4fZqC9
	bnGN8lRQgTAfPsNp9vb1/Mx3mNvKI1GxjnOVWmF2gF3FtT4j3wVVEkF+m+YtGOvDsorni6
	DpDwGZLE2R10apsZ+f1ar7vfqDrm7CT8/bL19yNuEmZEmo1w+07JCB4o5J2dUym+Nle5Ms
	0X54xI8sQBmxvWD0Ri4K8ANXvf9/hJJGWIUPl0RwgLpOL3v+h5uyprlFFMO25g==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=Mr5+4j7LXQ21VE23EjdcfvTHJzk6nbzlNKE88Ru3fR4=; b=eodXzzYLgf6hWn
	VXqkB2xUUloEoATYv3nHlJPoYEzlyl+hmzv4OH4WUDhGLKy1SFYFddIHZ67bGk/d7MjkAZpgijWr3
	EuTkAGjnAR9wW2wdc9kTEPWngQBMiAiMsHc/Sw5d8IZ4dsk/AMIQaTteyqvvOwWfhb1fr6ZsSv4gx
	FUffkh7SkBO4Pg7j8QKmXvRTU4ijjTmDG4uaaFS+Dp0nPQb8cSGn0XXx3qIuPjD873UFQRStImft4
	UnYPDbQi+uAu97RxIDHvW9ZDE/g7K3EPc4mpDAc9O58CRCiQmR5dRCnZLe0gU2ZiplLQQ373YPOw8
	7V7HSWv8SRY3m5/7py/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPzHl-0000000FuSX-40ay;
	Sun, 08 Nov 2026 09:34:01 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPzHh-0000000FuPH-455O
	for barebox@lists.infradead.org;
	Sun, 08 Nov 2026 09:33:59 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1xPzHg-0008Mb-Ad; Sun, 08 Nov 2026 10:33:56 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Subject: [PATCH 4/5] console: give each console implementation its own console_ctrlc()
Date: Sun,  8 Nov 2026 10:32:06 +0100
Message-ID: <20261108093354.1247607-5-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261108093354.1247607-1-a.fatoum@barebox.org>
References: <20261108093354.1247607-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: a.fatoum@barebox.org
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261108_013358_008944_8EEE5B69 
X-CRM114-Status: GOOD (  12.08  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  ctrlc_non_interruptible() reads the console input itself,
   inside an ifdef for the architectures that bring their own check. Have the
    full and the simple console each provide a console_ctrlc() for it i [...]
    
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
                             trust
                             [2a0a:edc0:2:b01:1d:0:0:104 listed in]
                             [list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 DMARC_MISSING          Missing DMARC policy
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
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: E6ACB2006B6
X-Spamd-Result: default: False [-6.11 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2a0a:edc0:0:900:1d::77:received];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	DMARC_NA(0.00)[barebox.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_IN_DNSWL_NONE(0.00)[2a0a:edc0:2:b01:1d::104:received];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_TWO(0.00)[2];
	RCVD_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=1];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@barebox.org,barebox-bounces@lists.infradead.org];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Stat-Signature: 3afm4x6p9wrpswwopr56s6u3mbjowdhs

ctrlc_non_interruptible() reads the console input itself, inside an
ifdef for the architectures that bring their own check. Have the full
and the simple console each provide a console_ctrlc() for it instead,
so that they can check differently, and test CONFIG_ARCH_HAS_CTRLC with
IS_ENABLED().

No functional change.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 common/console.c        | 10 ++++++++++
 common/console_ctrlc.c  | 10 ++++------
 common/console_simple.c | 10 ++++++++++
 include/console.h       |  4 ++--
 4 files changed, 26 insertions(+), 8 deletions(-)

diff --git a/common/console.c b/common/console.c
index 0722af0a40fc..c57bb87b0114 100644
--- a/common/console.c
+++ b/common/console.c
@@ -605,6 +605,16 @@ int pollchar(ktime_t duration)
 }
 EXPORT_SYMBOL(pollchar);
 
+/**
+ * console_ctrlc - check the console input for a Ctrl-C
+ *
+ * Return: true if Ctrl-C was pressed
+ */
+bool console_ctrlc(void)
+{
+	return tstc() && getchar() == 3;
+}
+
 int console_putc(struct console_device *con, char c)
 {
 	bool crlf = c == '\n';
diff --git a/common/console_ctrlc.c b/common/console_ctrlc.c
index 6fbe07252eff..5c912841c694 100644
--- a/common/console_ctrlc.c
+++ b/common/console_ctrlc.c
@@ -28,12 +28,10 @@ int ctrlc_non_interruptible(void)
 	if (ctrlc_abort)
 		return 1;
 
-#ifdef CONFIG_ARCH_HAS_CTRLC
-	ret = arch_ctrlc();
-#else
-	if (tstc() && getchar() == 3)
-		ret = 1;
-#endif
+	if (IS_ENABLED(CONFIG_ARCH_HAS_CTRLC))
+		ret = arch_ctrlc();
+	else
+		ret = console_ctrlc();
 
 	if (ret)
 		ctrlc_abort = 1;
diff --git a/common/console_simple.c b/common/console_simple.c
index 6771d457455e..97beec2d8d2e 100644
--- a/common/console_simple.c
+++ b/common/console_simple.c
@@ -80,6 +80,16 @@ int pollchar(ktime_t duration)
 }
 EXPORT_SYMBOL(pollchar);
 
+/**
+ * console_ctrlc - check the console input for a Ctrl-C
+ *
+ * Return: true if Ctrl-C was pressed
+ */
+bool console_ctrlc(void)
+{
+	return tstc() && getchar() == 3;
+}
+
 void console_flush(void)
 {
 	if (console && console->flush)
diff --git a/include/console.h b/include/console.h
index 4b2893d5c4df..6469802531d5 100644
--- a/include/console.h
+++ b/include/console.h
@@ -239,9 +239,7 @@ static inline int barebox_set_loglevel(int loglevel)
 }
 #endif
 
-#ifdef CONFIG_ARCH_HAS_CTRLC
 int arch_ctrlc(void);
-#endif
 
 #ifndef CONFIG_CONSOLE_NONE
 /* stdout */
@@ -255,6 +253,7 @@ int console_vprintf(struct console_device *con, const char *fmt, va_list args);
 
 int ctrlc(void);
 int ctrlc_non_interruptible(void);
+bool console_ctrlc(void);
 void ctrlc_handled(void);
 void console_ctrlc_allow(void);
 void console_ctrlc_forbid(void);
@@ -266,6 +265,7 @@ static inline void console_flush(void) {}
 /* test if ctrl-c was pressed */
 static inline int ctrlc (void) { return 0; }
 static inline int ctrlc_non_interruptible(void) { return 0; }
+static inline bool console_ctrlc(void) { return false; }
 static inline void ctrlc_handled(void) { }
 static inline void console_ctrlc_allow(void) { }
 static inline void console_ctrlc_forbid(void) { }
-- 
2.47.3



