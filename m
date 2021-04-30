Delivery-date: Fri, 30 Apr 2021 15:31:19 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lcTEl-0004xI-8j
	for lore@lore.pengutronix.de; Fri, 30 Apr 2021 15:31:19 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lcTEj-0006mm-BS
	for lore@pengutronix.de; Fri, 30 Apr 2021 15:31:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=cEPm0NvKhWnxjfkOqPgAuLuIc0z14xOUKjXVd4LqQCA=; b=QfO76JA9x0KmRQAfgx3oZptCG
	kmdCIUaNpdu6cFHzvtGE6Zd2+D53a8hhZPYXPwchE5EEGaiC8Cu5wSokFt1jCaIi58egv6dpBl0M9
	nAQ0nYdp1ltjFOGvDk58lw/7kyxlhj4uxLceOHegGxJyDjuHy8UNdo4lT5laBZ7+wm8qN3b14+Ze1
	0IraEmYaikAIFdapEvjT2+zRacuUJ8LblndLSo4MHrKQ1Xcl5tkBvjB/+FFCLU6yB57QkRHFOKv8j
	KSrF22C0vaJ4o7B115xyIhJLHTrVxuoUlMXYbbhX9tE+HwstqlWM8rlE8AdwH+Nz6xb4etpPUAHcN
	L81yaMK+w==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lcTDk-007uZu-KS; Fri, 30 Apr 2021 13:30:16 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lcTDW-007uYE-18
 for barebox@desiato.infradead.org; Fri, 30 Apr 2021 13:30:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=M9DxRKAmRitAk3o1QM7MRGTdbFjbRjdc1gDE2I34SH8=; b=mgSIc9ZsuPdfMI0thJfdhJb02w
 iTG4GWcN6wDEZ/BYVWzKgpZvRphv/YWtTPyQE1c+CsAyg1npWEY3h98d/ND5CwG/N4iJr9J9GFsJC
 2jtmSfbJmYxc0jdTKjgVQzSxcFXYT90sxXTTH0Cmta67mwyk+NLOPy37QvJD6fXXqSq9pieAIJ1xY
 EeR82RgGCVvlSsKbE1RKvjSVvjJ2mV/ekC4Jyoy73jG0Rlgk/58XmXx4fiOe8MUGP3+uLiStnYX3n
 8gdX5ittEnVGEJL/4YZMvpOfkho24qcGvBWWglrXY+f0kxQIpiWY2Dvq+7qkNs8rPhGpFt3mYNXIG
 HuT9VKVw==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lcTDS-001PHP-AN
 for barebox@lists.infradead.org; Fri, 30 Apr 2021 13:30:00 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lcTDN-00069n-Rf; Fri, 30 Apr 2021 15:29:53 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lcTDN-0003qY-0m; Fri, 30 Apr 2021 15:29:53 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 30 Apr 2021 15:29:36 +0200
Message-Id: <20210430132949.14617-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210430132949.14617-1-a.fatoum@pengutronix.de>
References: <20210430132949.14617-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210430_062958_393645_CA2E10BB 
X-CRM114-Status: GOOD (  14.83  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 02/15] common: console: add log_writefile to write log into
 new file
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

It can be useful to dump the log into the file, e.g. when doing an
update from a USB flash drive with no serial peer attached.
Add a function to facilitate this.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/console_common.c | 20 ++++++++++++++++++++
 include/printk.h        |  1 +
 2 files changed, 21 insertions(+)

diff --git a/common/console_common.c b/common/console_common.c
index 4c1230464c0b..aa9e943ef0e1 100644
--- a/common/console_common.c
+++ b/common/console_common.c
@@ -182,6 +182,26 @@ static int console_common_init(void)
 }
 device_initcall(console_common_init);
 
+int log_writefile(const char *filepath)
+{
+	int ret = 0, nbytes = 0, fd = -1;
+	struct log_entry *log;
+
+	fd = open(filepath, O_WRONLY | O_CREAT | O_TRUNC);
+	if (fd < 0)
+		return -errno;
+
+	list_for_each_entry(log, &barebox_logbuf, list) {
+		ret = dputs(fd, log->msg);
+		if (ret < 0)
+			break;
+		nbytes += ret;
+	}
+
+	close(fd);
+	return ret < 0 ? ret : nbytes;
+}
+
 void log_print(unsigned flags, unsigned levels)
 {
 	struct log_entry *log;
diff --git a/include/printk.h b/include/printk.h
index 94a25ec9ebac..f83ad3bf07f0 100644
--- a/include/printk.h
+++ b/include/printk.h
@@ -141,6 +141,7 @@ extern void log_clean(unsigned int limit);
 #define BAREBOX_LOG_PRINT_ALERT		BIT(1)
 #define BAREBOX_LOG_PRINT_EMERG		BIT(0)
 
+int log_writefile(const char *filepath);
 void log_print(unsigned flags, unsigned levels);
 
 struct va_format {
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

