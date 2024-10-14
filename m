Delivery-date: Mon, 14 Oct 2024 15:30:04 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0L9A-004H1L-1Z
	for lore@lore.pengutronix.de;
	Mon, 14 Oct 2024 15:30:04 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0L99-00039e-C6
	for lore@pengutronix.de; Mon, 14 Oct 2024 15:30:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=jwb1dWk7UuIuJdWn+Tjv9epB7k/X8Xifl7EbTBApJsA=; b=srA/c+RCS9uQDsGb6i3NxvcbG5
	GcPT/sCjUamq3ODHxo3kr9026YRi7LX5WVtWogMuxLLpQhLWFjllYaiBYOztVYbih5u5y65m84lJE
	5iRQYgWZ2UwjCGRcGL4iEivwtaYmObz/ujL/qXjBLU5rHXXa2Txt97lfGqmJiVKPXyZLwF3LHOtKI
	SIc0nWHNo0aTDuRJk3HM35+873b93YEcqFdh2gmV3RJKlCZ75wyCee4OytuWl4YYom6AR99F8OCDw
	bjb/8e7d4wYKbmsStjlGc39cd2ZujO9t9zmIwwBysqQXwQ1VUZPxx9gtUXPVfBq3dsg/8I+q/V3QG
	chfwaEhg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0L8a-00000005HUg-173f;
	Mon, 14 Oct 2024 13:29:28 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0Jb3-00000004zKD-3adH
	for barebox@bombadil.infradead.org;
	Mon, 14 Oct 2024 11:50:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=jwb1dWk7UuIuJdWn+Tjv9epB7k/X8Xifl7EbTBApJsA=; b=YIxuIfVAii3OBpb3yDlpkj21tH
	FgW13H4rfoB53mADfbY/elI6Dk6wOXB4nueyDdVww1hc7mgrUHgMC9RF8RNAmIdTuP4yuuUlEw17k
	fO+xdyXB3QH9t5GtDigeCT/PCN+akiem0oF5YVrXJWsPxq82536LSII8XjAfAP5/YecIEg4m9irnC
	c9UJyJ+3e0L8Od1P+c/Wc5UypKCDiWOQc2B7Hxdk3kvRrLSt4iqgep/04bOM3VzUfVQ55psGfkwjm
	5O+Gb/xzzFkxspYQ68mJuBh2yCHXxNngH4J54gt3tljgErert3ImdDtAQ/PvgFWcdgQWgX3MXUR4C
	5M4MXuCg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0Jb1-00000006Kl3-06pZ
	for barebox@lists.infradead.org;
	Mon, 14 Oct 2024 11:50:44 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t0Jb0-0001C2-GU; Mon, 14 Oct 2024 13:50:42 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t0Jb0-001mUS-3Z; Mon, 14 Oct 2024 13:50:42 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t0Jb0-00BvdQ-05;
	Mon, 14 Oct 2024 13:50:42 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 14 Oct 2024 13:50:30 +0200
Message-Id: <20241014115040.2843121-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20241014115040.2843121-1-a.fatoum@pengutronix.de>
References: <20241014115040.2843121-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241014_125043_238672_5DA2877E 
X-CRM114-Status: UNSURE (   9.76  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 02/12] include: common.h: move ctrlc() functions into stdio.h
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

A stub definition for ctrlc() is already in stdio.h and stdio.h is
already included by common.h, so let's move all other ctrlc related
definitions into stdio.h.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/common.h | 10 ----------
 include/stdio.h  | 11 +++++++++++
 2 files changed, 11 insertions(+), 10 deletions(-)

diff --git a/include/common.h b/include/common.h
index cc7f089aeef0..6baab254c80e 100644
--- a/include/common.h
+++ b/include/common.h
@@ -53,16 +53,6 @@ int	readline	(const char *prompt, char *buf, int len);
 /* common/memsize.c */
 long	get_ram_size  (volatile long *, long);
 
-/* common/console.c */
-int ctrlc(void);
-int arch_ctrlc(void);
-
-#ifdef CONFIG_CONSOLE_FULL
-void ctrlc_handled(void);
-#else
-static inline void ctrlc_handled(void) { }
-#endif
-
 int parse_area_spec(const char *str, loff_t *start, loff_t *size);
 
 /* Just like simple_strtoul(), but this one honors a K/M/G suffix */
diff --git a/include/stdio.h b/include/stdio.h
index 095e9b0a1d42..33ca73a80d18 100644
--- a/include/stdio.h
+++ b/include/stdio.h
@@ -24,6 +24,10 @@ int vasprintf(char **strp, const char *fmt, va_list ap);
 int vsnprintf(char *buf, size_t size, const char *fmt, va_list args);
 int vscnprintf(char *buf, size_t size, const char *fmt, va_list args);
 
+#ifdef CONFIG_ARCH_HAS_CTRLC
+int arch_ctrlc(void);
+#endif
+
 #ifndef CONFIG_CONSOLE_NONE
 /* stdin */
 int tstc(void);
@@ -35,6 +39,9 @@ int console_puts(unsigned int ch, const char *s);
 void console_flush(void);
 
 int vprintf(const char *fmt, va_list args);
+
+int ctrlc(void);
+void ctrlc_handled(void);
 #else
 static inline int tstc(void)
 {
@@ -66,6 +73,10 @@ static inline int ctrlc (void)
 	return 0;
 }
 
+static inline void ctrlc_handled(void)
+{
+}
+
 #endif
 
 #if (!defined(__PBL__) && !defined(CONFIG_CONSOLE_NONE)) || \
-- 
2.39.5



