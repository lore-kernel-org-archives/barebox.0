Delivery-date: Mon, 13 Apr 2026 12:11:58 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCEGs-00BgK7-0d
	for lore@lore.pengutronix.de;
	Mon, 13 Apr 2026 12:11:58 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCEGr-0001gU-Ii
	for lore@pengutronix.de; Mon, 13 Apr 2026 12:11:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=NqazV3HxaL3nwOzyrOoU9+5WzrlrY/Uk2yFqnxPouLo=; b=x/sNnbB5/IZNTGoGxCcBkq7+Vv
	WkFkUcpUmzdXQRErjUHWxM2p8w6+UOskWU4bFKlgOzilB22R/QMTK/7X+FrgZyt4KmgKv3MvPYjME
	prtwWdwzbqL8URF/G3dAJ5w8cLIyToeL4ClH03Lk5vRTxZJkpntmm+m4rniBzfeLx+JG8Zl7KRdvQ
	kZV94Co02vm3Tvmqidig6W8EPgmqcfJggjiEzr4a4Yf4+CTJXvbkR34QRLzgOZFgGW3C2DR6nkoKA
	UH40Sxu9P274D3UwQEeE+5y9LAhQ8M3Gc4NdMetCRbUkxG1XwGQs+EYjb0jmloLbxJoN/1ackFVvR
	ZCt38XEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCEGT-0000000FSFK-0YWl;
	Mon, 13 Apr 2026 10:11:33 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCEGL-0000000FS5g-2h8N
	for barebox@bombadil.infradead.org;
	Mon, 13 Apr 2026 10:11:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=NqazV3HxaL3nwOzyrOoU9+5WzrlrY/Uk2yFqnxPouLo=; b=VzcoTpW3zyMkYqBnKCVFUZC5Gz
	nJ7g1CygpzcyrKOIEkZ9HcrNSF6PyIWnFe/msdm/nswaEYsbLcsSl53WvagvjbK60u4jpqBnA7biw
	2e9F+NLM5Wp588FJfrh4pRETzhGz0/rWyZBWciYjQ87ewK6boXhrEn8LkwBIvS8qXuD+pk5+lAKIT
	rfQDYV4xlgFFSp27vQPngvzICd28BEkAXhtiDoikCUEuZF3VC7I6qumst6z8yGJywRLEzB0d9HE4b
	C9eQYkCWAtFWod+Jn7bpKsi4fiBBMPtin8KLnGzZn1vwT0elSO/hK7e5kmZkMU9A8yvuDw5MqbUN8
	wDC7SVWQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCEGI-0000000GZ7m-2TeZ
	for barebox@lists.infradead.org;
	Mon, 13 Apr 2026 10:11:24 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1wCEGI-0001Is-3B; Mon, 13 Apr 2026 12:11:22 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon, 13 Apr 2026 12:09:42 +0200
Message-ID: <20260413101118.1462119-7-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260413101118.1462119-1-a.fatoum@barebox.org>
References: <20260413101118.1462119-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260413_111122_903558_57E303CA 
X-CRM114-Status: GOOD (  11.13  )
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
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 7/7] commands: dmesg: give log_print a console_device parameter
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

log_print currently prints out unconditionally to stdout and thus has no
support for printing to a single specific console, e.g. the framebuffer
console.

Make use of the new console_printf() to address this.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 commands/dmesg.c        |  2 +-
 common/console_common.c | 17 +++++++++--------
 include/linux/printk.h  |  3 ++-
 3 files changed, 12 insertions(+), 10 deletions(-)

diff --git a/commands/dmesg.c b/commands/dmesg.c
index 0313c8cdea74..06796287aaec 100644
--- a/commands/dmesg.c
+++ b/commands/dmesg.c
@@ -158,7 +158,7 @@ static int do_dmesg(int argc, char *argv[])
 		return 0;
 	}
 
-	ret = log_print(flags, levels);
+	ret = log_print(CONSOLE_DEV_STDOUT, flags, levels);
 	if (ret)
 		return 1;
 
diff --git a/common/console_common.c b/common/console_common.c
index 310534affa58..de0a213f833c 100644
--- a/common/console_common.c
+++ b/common/console_common.c
@@ -215,13 +215,14 @@ int log_writefile(const char *filepath)
 /**
  * log_print - print the log buffer
  *
+ * @con:	Console device to print to
  * @flags:	Flags selecting output formatting
  * @levels:	bitmask of loglevels to print, 0 for all
  *
  * This function prints the messages of the selected levels; optionally with
  * additional information and formatting.
  */
-int log_print(unsigned flags, unsigned levels)
+int log_print(struct console_device *con, unsigned flags, unsigned levels)
 {
 	struct log_entry *log;
 	unsigned long last = 0;
@@ -237,30 +238,30 @@ int log_print(unsigned flags, unsigned levels)
 
 		if (!(flags & (BAREBOX_LOG_PRINT_RAW | BAREBOX_LOG_PRINT_TIME
 			       | BAREBOX_LOG_DIFF_TIME)))
-			print_colored_log_level(CONSOLE_DEV_STDOUT, log->level);
+			print_colored_log_level(con, log->level);
 
 		if (flags & BAREBOX_LOG_PRINT_RAW)
-			printf("<%i>", log->level);
+			console_printf(con, "<%i>", log->level);
 
 		/* convert ns to us */
 		do_div(time_ns, 1000);
 		time = time_ns;
 
 		if (flags & (BAREBOX_LOG_PRINT_TIME | BAREBOX_LOG_DIFF_TIME))
-			printf("[");
+			console_printf(con, "[");
 
 		if (flags & BAREBOX_LOG_PRINT_TIME)
-			printf("%10luus", time);
+			console_printf(con, "%10luus", time);
 
 		if (flags & BAREBOX_LOG_DIFF_TIME) {
-			printf(" < %10luus", time - last);
+			console_printf(con, " < %10luus", time - last);
 			last = time;
 		}
 
 		if (flags & (BAREBOX_LOG_PRINT_TIME | BAREBOX_LOG_DIFF_TIME))
-			printf("] ");
+			console_printf(con, "] ");
 
-		printf("%s", log->msg);
+		console_printf(con, "%s", log->msg);
 	}
 
 	return 0;
diff --git a/include/linux/printk.h b/include/linux/printk.h
index deaaa44b31a7..4d6df821e1f1 100644
--- a/include/linux/printk.h
+++ b/include/linux/printk.h
@@ -192,7 +192,8 @@ extern void log_clean(unsigned int limit);
 #define BAREBOX_LOG_PRINT_TIME		BIT(0)
 
 int log_writefile(const char *filepath);
-int log_print(unsigned flags, unsigned levels);
+struct console_device;
+int log_print(struct console_device *console, unsigned flags, unsigned levels);
 
 struct va_format {
 	const char *fmt;
-- 
2.47.3



