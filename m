Delivery-date: Wed, 16 Aug 2023 11:40:41 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qWD18-0066Yn-IU
	for lore@lore.pengutronix.de; Wed, 16 Aug 2023 11:40:41 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qWD16-0000wk-L5
	for lore@pengutronix.de; Wed, 16 Aug 2023 11:40:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=IaesQLkhIth/4z73HU8p4E9e2CjvaeuDvTdJ/4nxyio=; b=d/+sjcqSZpLaUWZi9JBl5dFhQw
	QUumnnavgGZ6l1XTTW//lK0JYNvv+J9lIHT07FKiNxanH9zYai+fnCvYEZ7Fc3qbKR23j5+mXrWrI
	/Ua4L8PgcKqn28g3oZHKHMDn4B6AdkeybTakufJIGrOpVtIjRex6g9LeZe3EnlW2JtNcZys5jJVkx
	vewfl1fhmje7ETHYcCx1+XrRa+vbflKVolNLWOCOG6fQcpXiB296+I01HneuoT+2kZmbZLdKUCz/e
	vsB8OrsVhoWIaTofFQgxT2sF4oap/PQoRdz+mPV5zb/aPi+KOIQ9gJHdGzoYlIAlef77e1WxJ25x4
	ALgdkukw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qWCzj-003cZI-3A;
	Wed, 16 Aug 2023 09:39:15 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qWCzg-003cY1-2E
	for barebox@lists.infradead.org;
	Wed, 16 Aug 2023 09:39:14 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qWCzZ-0000Su-KZ; Wed, 16 Aug 2023 11:39:05 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qWCzY-0010Vy-Vv; Wed, 16 Aug 2023 11:39:05 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qWCzX-00AeFE-UM; Wed, 16 Aug 2023 11:39:03 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 16 Aug 2023 11:39:01 +0200
Message-Id: <20230816093902.2537934-2-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230816093902.2537934-1-s.hauer@pengutronix.de>
References: <20230816093902.2537934-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230816_023912_749143_AF9BB9F4 
X-CRM114-Status: GOOD (  13.27  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/3] lib: open_and_lseek(): return error code on error
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Some callers of open_and_lseek() expect an error code instead of -1
as return value, so consistently return an error code.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 lib/libfile.c | 18 +++++++++++-------
 1 file changed, 11 insertions(+), 7 deletions(-)

diff --git a/lib/libfile.c b/lib/libfile.c
index ebd1de3d8e..c7ea4e497f 100644
--- a/lib/libfile.c
+++ b/lib/libfile.c
@@ -589,7 +589,7 @@ int compare_file(const char *f1, const char *f2)
  * @pos:	The position to lseek to
  *
  * Return: If successful this function returns a positive
- *         filedescriptor number, otherwise -1 is returned
+ *         filedescriptor number, otherwise a negative error code is returned
  */
 int open_and_lseek(const char *filename, int mode, loff_t pos)
 {
@@ -607,26 +607,30 @@ int open_and_lseek(const char *filename, int mode, loff_t pos)
 	if (mode & (O_WRONLY | O_RDWR)) {
 		struct stat s;
 
-		if (fstat(fd, &s)) {
+		ret = fstat(fd, &s);
+		if (ret < 0) {
 			perror("fstat");
 			goto out;
 		}
 
-		if (s.st_size < pos && ftruncate(fd, pos)) {
-			perror("ftruncate");
-			goto out;
-		}
+		if (s.st_size < pos) {
+			ret = ftruncate(fd, pos));
+			if (ret) {
+				perror("ftruncate");
+				goto out;
+			}
 	}
 
 	if (lseek(fd, pos, SEEK_SET) != pos) {
 		perror("lseek");
+		ret = -errno;
 		goto out;
 	}
 
 	return fd;
 out:
 	close(fd);
-	return -1;
+	return ret;
 }
 
 /**
-- 
2.39.2



