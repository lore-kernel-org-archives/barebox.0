Delivery-date: Tue, 13 Apr 2021 00:37:18 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lW5BG-0006G2-CQ
	for lore@lore.pengutronix.de; Tue, 13 Apr 2021 00:37:18 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lW5BF-0007KC-CD
	for lore@pengutronix.de; Tue, 13 Apr 2021 00:37:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=+au2hMQGYECQrruZ/7OMRW1GISTUqYYQIF54Jji1DEM=; b=qXWH465qp3q233ku7AX0O5/ha
	v8aWB6C98S5+5pedMz8BxQdJHQo47b10ZnXvCW9BGJjPiZaTURR004mAY4SY/ii5nCKHcD82Be8Ng
	YmgKIJ+qvVKL+eqhJRPX1cDt29Y9AT8ZxXUVwWvL9qcCuMVbAz6b9arryhVZdLceXTgC1zTlKqY+u
	4wsiAmSx4wNA1JHQdjZUZD3HVLs7hEX7H+QjABp2Cz7l4jbaGkpLjEyFZnsmsuM88u/9dgwUq2PGu
	M0w2Y0LoomwxWyDsuOTYH8w6+8x164OK5t6anSjeRdc1ez1cjCZ8NrOSS76kmyaGpTaA1h4bCwljm
	YpW9tDZEg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lW5A5-007nL8-6K; Mon, 12 Apr 2021 22:36:05 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lW59I-007n7v-Uv
 for barebox@desiato.infradead.org; Mon, 12 Apr 2021 22:35:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=0QcEC3GEZnL52SkPB1/x318fBTLQHYhBBXZeBcB4RYk=; b=W8eAOEOomup/QXCSl4xosOdrx/
 /wVKgaGyF1Uc0HlkzuA5mMpLaBcs/FvK368g0ks3H85vS4k7+U2Il9el3fsg4fSwFz4oGcTd4J+L0
 h+G0oHHuD5IPoHvvOoq7ySvQ/eOsNsS1jOAE68/yjHMhxDLoux9p2wYTLNqTyIwNr65iUFSzRIUtl
 jhPt4l1RKOng24RlZhGzETnsR4JFBbq+m4b6gCyrGjFdkSARk96ekDcOND+aQ0rGphtRWXlFqyE9d
 yGFCOwD/QEDUJ79/YcVGNysfjUJD2vlkfwczWypOk+xDT33Wo6A9Z2cH5vSExQ/j1b/tXcXDzVL2d
 9tpFqAAQ==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lW59G-006arU-Fd
 for barebox@lists.infradead.org; Mon, 12 Apr 2021 22:35:15 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lW597-0006BI-4r; Tue, 13 Apr 2021 00:35:05 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lW596-0003sK-BZ; Tue, 13 Apr 2021 00:35:04 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 13 Apr 2021 00:34:50 +0200
Message-Id: <20210412223502.29691-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210412223502.29691-1-a.fatoum@pengutronix.de>
References: <20210412223502.29691-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210412_153514_541046_E4BCFF97 
X-CRM114-Status: GOOD (  14.66  )
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
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 02/14] common: console: add log_dprint to print to file
 descriptor
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

It can be useful to dump the log into the file, e.g. when doing an
update from a USB flash drive with no serial peer attached. Board code
could use log_dprint to dump the log onto the drive. Add a function
to facilitate this.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/console_common.c | 15 +++++++++++++++
 include/printk.h        |  1 +
 2 files changed, 16 insertions(+)

diff --git a/common/console_common.c b/common/console_common.c
index 3e0741572398..77ad4728fbfd 100644
--- a/common/console_common.c
+++ b/common/console_common.c
@@ -182,6 +182,21 @@ static int console_common_init(void)
 }
 device_initcall(console_common_init);
 
+int log_dprint(int fd)
+{
+	struct log_entry *log;
+	int nbytes = 0;
+
+	list_for_each_entry(log, &barebox_logbuf, list) {
+		int ret = dputs(fd, log->msg);
+		if (ret < 0)
+			return ret;
+		nbytes += ret;
+	}
+
+	return nbytes;
+}
+
 void log_print(unsigned flags, unsigned levels)
 {
 	struct log_entry *log;
diff --git a/include/printk.h b/include/printk.h
index 94a25ec9ebac..798acfdbf188 100644
--- a/include/printk.h
+++ b/include/printk.h
@@ -141,6 +141,7 @@ extern void log_clean(unsigned int limit);
 #define BAREBOX_LOG_PRINT_ALERT		BIT(1)
 #define BAREBOX_LOG_PRINT_EMERG		BIT(0)
 
+int log_dprint(int fd);
 void log_print(unsigned flags, unsigned levels);
 
 struct va_format {
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

