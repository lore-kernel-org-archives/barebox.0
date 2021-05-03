Delivery-date: Mon, 03 May 2021 13:51:41 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ldX6z-00032C-3z
	for lore@lore.pengutronix.de; Mon, 03 May 2021 13:51:41 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ldX6y-0000Xu-9O
	for lore@pengutronix.de; Mon, 03 May 2021 13:51:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=M4y9MXep0uDimgLFen2KeMX2tsmhkeDLFlcFld9+Xk8=; b=gjRuTe2UNloQyXsL8EYZgJc0j
	F/6YtNjXm4JcNsQVWOIMufG2cU8cinxawlhrap2MkGw/4Pvk/Vlm3X5GytmFt1qNrRLIIrIfzVdKK
	5V/mbg8q3Wyy+Eno/sUUPXwzBw9sq6jOeRAU7vT2WxO4TbdhMHO3BTSKtr1bfruE6NWit6fEpwQgQ
	wXJJi4xa8Tk9BIALxCFc1A6U4YyuQhDnuD040JsMdRu+IrkcSp7lU2nYavlOADmk45+DAfUiA6vKQ
	Bq7v7m2Hk4YR8L/16CeEc6jPBQJMM4mjl0og7oxRuspmNs+vZX6gb4Msg0jNCYkf8gJ2X51pvx+zw
	xi5BFDf6A==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1ldX5r-00Dmue-8n; Mon, 03 May 2021 11:50:31 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ldX4p-00Dmgm-5e
 for barebox@desiato.infradead.org; Mon, 03 May 2021 11:49:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=EnpvSuvubl1lJTk6rq5zeWed0iCp97gwuRIA9oLWs4A=; b=KF8WRuyBDk3bWSONxZJhykfEkp
 Kg9Z9+PU0s0couDD+OjifXkBZlE3AMXk34KeyiGFrWgWQXi17ZGPrqBE0Vc15rIuheSGW9hlfN7P6
 Z+XE694Ekv3M0bKyfOw3y6mFMWz+tgG2hlzm6uNz/6tBYX8G9g7bCg8piiz46jV/t9/mK8FzJCZZf
 T2OB1iCsNnwj7DAEinKwGyTHa04iDlORBK7VQLtqHrb4UFkIKja/rfep+h3SE77j389SM64V0Mv/D
 PlrEdOUUrMQmZ0uR1klQhWLY8l0S73L/2g4i005k8TghTYr3OkTYckZfMf+IMhJkxRc1Yu6KEXj3L
 ub5UMEWA==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ldX4m-0031cL-Mw
 for barebox@lists.infradead.org; Mon, 03 May 2021 11:49:25 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1ldX4d-0007pe-9m; Mon, 03 May 2021 13:49:15 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1ldX4c-0003bF-D0; Mon, 03 May 2021 13:49:14 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  3 May 2021 13:48:47 +0200
Message-Id: <20210503114901.13095-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210503114901.13095-1-a.fatoum@pengutronix.de>
References: <20210503114901.13095-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210503_044924_763897_E9CD52EA 
X-CRM114-Status: GOOD (  14.63  )
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
X-Spam-Status: No, score=-3.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 02/16] common: console: add log_writefile to write log into
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
index 3e0741572398..b611f4bf9781 100644
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

