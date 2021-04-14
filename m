Delivery-date: Wed, 14 Apr 2021 15:48:00 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lWfs8-0002U8-PV
	for lore@lore.pengutronix.de; Wed, 14 Apr 2021 15:48:00 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lWfs7-0000Bw-VW
	for lore@pengutronix.de; Wed, 14 Apr 2021 15:48:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=J6jfmB3e3uq3UokyRPGTh2e/kpLTfEYj+cfkuExgBXc=; b=iHJsdzbP8DuO1f
	MxgBkv/7YX9LBj6upsrP2/thz3dgyp0X+XHJqAMmtS4JNAhQfwRULZVe1CyJd12aTIaADHfT9E61l
	z6QVorTZRdyvjLptWb6eeuVdm90qjrLu/Zxg8Xwwf5/dqDP+gBkQnUzt357iwMfMPZKXyZLHWJAQv
	KrL/eru0O3SPH2KeKVg8iFxT32m9WpDv0QGkZCVfMgNTVAn2AW6INW6lLYCGcMa58dyjv4RSU8LjM
	pc5fFg6YXqfzLdlLfAR141pRVC4LzfXugzy3P+ik+71Vi0id9S/g/oFDHh1Y+jiS8T1fC2nHB1HFz
	v0c4psrpvjqvgUrUEwGA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lWfqx-00Cnmj-In; Wed, 14 Apr 2021 13:46:47 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWfqb-00Cnf5-T1
 for barebox@desiato.infradead.org; Wed, 14 Apr 2021 13:46:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=0I9+KLhmW5BsUAm5+oXyVclm9lbj4xW2F/+urxadq9k=; b=3vmV0WqDrCyW01Zb/Bvcaff1mF
 rHXW9qFh2eZsycfgVA6MkZ0GHv7zWCyeF4h6RXQhmPqYscXyp/Y5qqcdtnSwFDrO4beIYYAkXl5So
 anXhGnleY8xqVBg+6sPrAWHWiWJ9hysF6ruGBb+SzFfpHpknLZ2Y7PjrWcSVBNksghRym9tPEABcN
 Me9bX4ME19opJTGx+18giVO9/9PuYzEUUGonQqQww6pqt2UZRc5mfuasS9MvJF2zZZK55zoMCCQds
 rZE5y0wWGv46vUgLW1F6C85acSh6aOTBOI0ameZNfr1Q0SvbT7M4bkdGlQbAKs9Wjltg3zgG8T8Db
 LtoFCvpg==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWfqZ-007oGu-1n
 for barebox@lists.infradead.org; Wed, 14 Apr 2021 13:46:24 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lWfqW-0008Tw-PK; Wed, 14 Apr 2021 15:46:20 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lWfqW-0002Xx-Gn; Wed, 14 Apr 2021 15:46:20 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 14 Apr 2021 15:46:19 +0200
Message-Id: <20210414134619.8022-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210414_064623_107492_BA381CB5 
X-CRM114-Status: GOOD (  18.11  )
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
X-Spam-Status: No, score=-3.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] bareboximd: Use mmap when possibly
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

It's hard to believe but there are systems out there that are so sparse
with memory that they can't afford 1MiB of RAM to read a file into.
Use mmap when possible and fall back to reading into an allocated buffer
otherwise.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/imd.c         |  6 ++++-
 scripts/bareboximd.c | 53 ++++++++++++++++++++++++++++----------------
 2 files changed, 39 insertions(+), 20 deletions(-)

diff --git a/common/imd.c b/common/imd.c
index aff3b00b6b..e1d5733c6b 100644
--- a/common/imd.c
+++ b/common/imd.c
@@ -17,6 +17,10 @@ int imd_command_setenv(const char *variable_name, const char *value)
 	return -ENOSYS;
 }
 #endif
+static inline void read_file_2_free(void *buf)
+{
+	free(buf);
+}
 #endif
 
 /*
@@ -542,6 +546,6 @@ int imd_command(int argc, char *argv[])
 
 	ret = 0;
 out:
-	free(buf);
+	read_file_2_free(buf);
 	return ret;
 }
diff --git a/scripts/bareboximd.c b/scripts/bareboximd.c
index 9558c77d1a..c3dcb4dcf0 100644
--- a/scripts/bareboximd.c
+++ b/scripts/bareboximd.c
@@ -15,6 +15,7 @@
 #include <stdarg.h>
 #include <linux/err.h>
 #include <linux/kernel.h>
+#include <sys/mman.h>
 
 #include "../include/image-metadata.h"
 
@@ -96,29 +97,35 @@ static int read_file_2(const char *filename, size_t *size, void **outbuf, size_t
 		goto close;
 	}
 
-	buf = malloc(max_size);
-	if (!buf) {
-		fprintf(stderr, "Cannot allocate memory\n");
-		ret = -ENOMEM;
-		goto close;
-	}
+	buf = mmap(NULL, max_size, PROT_READ, MAP_SHARED, fd, 0);
+	if (buf == MAP_FAILED ) {
+		buf = malloc(max_size);
+		if (!buf) {
+			fprintf(stderr, "Cannot allocate memory\n");
+			ret = -ENOMEM;
+			goto close;
+		}
 
-	*outbuf = buf;
-	while (*size < max_size) {
-		rsize = read(fd, buf, max_size-*size);
-		if (rsize == 0) {
-			ret = -EIO;
-			goto free;
-		} else if (rsize < 0) {
-			if (errno == EAGAIN)
-				continue;
-			else {
+		*outbuf = buf;
+
+		while (*size < max_size) {
+			rsize = read(fd, buf, max_size - *size);
+			if (rsize == 0) {
+				ret = -EIO;
+				goto free;
+			}
+
+			if (rsize < 0) {
 				ret = -errno;
 				goto free;
 			}
-		} /* ret > 0 */
-		buf += rsize;
-		*size += rsize;
+
+			buf += rsize;
+			*size += rsize;
+		}
+	} else {
+		*outbuf = buf;
+		*size = max_size;
 	}
 
 	ret = 0;
@@ -131,6 +138,14 @@ close:
 	return ret;
 }
 
+static inline void read_file_2_free(void *buf)
+{
+	/*
+	 * Can't free() here because buffer might be mmapped. No need
+	 * to do anything as we are exitting in a moment anyway.
+	 */
+}
+
 static unsigned long simple_strtoul(const char *cp, char **endp, unsigned int base)
 {
 	return strtoul(cp, endp, base);
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

