Delivery-date: Wed, 23 Jun 2021 06:35:45 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lvuc5-000415-4S
	for lore@lore.pengutronix.de; Wed, 23 Jun 2021 06:35:45 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lvuc4-0002uP-5y
	for lore@pengutronix.de; Wed, 23 Jun 2021 06:35:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5eWqVDaCNlS1XbdueglnpDNVQN1GM9zYhO7JK+1ofIM=; b=Q7s9eh/Xk9Mbkj
	R9RRVexXZibEZ2VERZtE3u/w0uUZXlxbPLoJCCJfZbZ9pN9PFeIYMEjfrhyoUL9mjPum9OxsVynye
	KvvYvKM8WL/PsRGUXprr3pGmlp3J8olq4gRU7iTz4ykkxrkaUAZrG6BWe7z/FGkG2gdi+my1UI+Mj
	a7MddhG/AcQXNgBYEKG3m3e2w75/1tbdOFUb0c6jmbv01s7eRXqIYrrOKEImDvqkuEC4pCcCMF31z
	BNz/xwh/zpZtbYCcf/SICL2Ju5/UEGaSfAWUS8Qjo1Fqx4HPV6BXjtpc7hwbfvqfX2yGyKclqD5h1
	cHdqS37+NkcbCZYOpl+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lvuae-009Gt7-6w; Wed, 23 Jun 2021 04:34:16 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lvuaY-009Grr-O2
 for barebox@lists.infradead.org; Wed, 23 Jun 2021 04:34:11 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lvuaP-0002Zk-Hp; Wed, 23 Jun 2021 06:34:01 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lvuaP-0002A6-9b; Wed, 23 Jun 2021 06:34:01 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 23 Jun 2021 06:33:58 +0200
Message-Id: <20210623043359.18391-3-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210623043359.18391-1-s.hauer@pengutronix.de>
References: <20210623043359.18391-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210622_213410_822176_0568ECE1 
X-CRM114-Status: GOOD (  13.18  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/3] libfile: Add copy_fd()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/libfile.h |  1 +
 lib/libfile.c     | 34 ++++++++++++++++++++++++++++++++++
 2 files changed, 35 insertions(+)

diff --git a/include/libfile.h b/include/libfile.h
index 350ddddf70..3c2fe1714d 100644
--- a/include/libfile.h
+++ b/include/libfile.h
@@ -5,6 +5,7 @@
 int pwrite_full(int fd, const void *buf, size_t size, loff_t offset);
 int write_full(int fd, const void *buf, size_t size);
 int read_full(int fd, void *buf, size_t size);
+int copy_fd(int in, int out);
 
 char *read_file_line(const char *fmt, ...);
 
diff --git a/lib/libfile.c b/lib/libfile.c
index 4ab8db11ad..e42126017d 100644
--- a/lib/libfile.c
+++ b/lib/libfile.c
@@ -100,6 +100,40 @@ int read_full(int fd, void *buf, size_t size)
 }
 EXPORT_SYMBOL(read_full);
 
+int copy_fd(int in, int out)
+{
+	int bs = 4096, ret;
+	void *buf = malloc(bs);
+
+	if (!buf)
+		return -ENOMEM;
+
+	while (1) {
+		int now, wr;
+
+		now = read(in, buf, bs);
+		if (now < 0) {
+			ret = now;
+			goto err;
+		}
+
+		if (!now)
+			break;
+
+		wr = write_full(out, buf, now);
+		if (wr < 0) {
+			ret = wr;
+			goto err;
+		}
+	}
+
+	ret = 0;
+err:
+        free(buf);
+
+	return ret;
+}
+
 /*
  * read_file_line - read a line from a file
  *
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

