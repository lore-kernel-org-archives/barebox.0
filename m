Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 20.mo6.mail-out.ovh.net ([178.32.124.17])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YVjt1-0004nt-G7
 for barebox@lists.infradead.org; Wed, 11 Mar 2015 16:53:36 +0000
Received: from mail617.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo6.mail-out.ovh.net (Postfix) with SMTP id 0F6D8FF9A86
 for <barebox@lists.infradead.org>; Wed, 11 Mar 2015 17:53:13 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed, 11 Mar 2015 17:53:03 +0100
Message-Id: <1426092789-7708-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1426092789-7708-1-git-send-email-plagnioj@jcrosoft.com>
References: <20150311165009.GP30554@ns203013.ovh.net>
 <1426092789-7708-1-git-send-email-plagnioj@jcrosoft.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 2/8] digest: introduce digest_{init/update/final/length}
To: barebox@lists.infradead.org

This will allow to move from a one at a time digest to a multi-instance
with too much impact on the code using it

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 commands/digest.c |  4 ++--
 common/password.c | 26 +++++++++++++-------------
 crypto/digest.c   |  6 +++---
 include/digest.h  | 21 +++++++++++++++++++++
 4 files changed, 39 insertions(+), 18 deletions(-)

diff --git a/commands/digest.c b/commands/digest.c
index 092fda2..bad7d3f 100644
--- a/commands/digest.c
+++ b/commands/digest.c
@@ -39,7 +39,7 @@ static int do_digest(char *algorithm, int argc, char *argv[])
 	if (argc < 2)
 		return COMMAND_ERROR_USAGE;
 
-	hash = calloc(d->length, sizeof(unsigned char));
+	hash = calloc(digest_length(d), sizeof(unsigned char));
 	if (!hash) {
 		perror("calloc");
 		return COMMAND_ERROR_USAGE;
@@ -60,7 +60,7 @@ static int do_digest(char *algorithm, int argc, char *argv[])
 		if (digest_file_window(d, filename, hash, start, size) < 0) {
 			ret = 1;
 		} else {
-			for (i = 0; i < d->length; i++)
+			for (i = 0; i < digest_length(d); i++)
 				printf("%02x", hash[i]);
 
 			printf("  %s\t0x%08llx ... 0x%08llx\n",
diff --git a/common/password.c b/common/password.c
index 111c139..1606109 100644
--- a/common/password.c
+++ b/common/password.c
@@ -282,33 +282,33 @@ static int __check_passwd(unsigned char* passwd, size_t length, int std)
 
 	d = digest_get_by_name(PASSWD_SUM);
 
-	passwd1_sum = calloc(d->length, sizeof(unsigned char));
+	passwd1_sum = calloc(digest_length(d), sizeof(unsigned char));
 
 	if (!passwd1_sum)
 		return -ENOMEM;
 
-	passwd2_sum = calloc(d->length, sizeof(unsigned char));
+	passwd2_sum = calloc(digest_length(d), sizeof(unsigned char));
 
 	if (!passwd2_sum) {
 		ret = -ENOMEM;
 		goto err1;
 	}
 
-	d->init(d);
+	digest_init(d);
 
-	d->update(d, passwd, length);
+	digest_update(d, passwd, length);
 
-	d->final(d, passwd1_sum);
+	digest_final(d, passwd1_sum);
 
 	if (std)
-		ret = read_env_passwd(passwd2_sum, d->length);
+		ret = read_env_passwd(passwd2_sum, digest_length(d));
 	else
-		ret = read_default_passwd(passwd2_sum, d->length);
+		ret = read_default_passwd(passwd2_sum, digest_length(d));
 
 	if (ret < 0)
 		goto err2;
 
-	if (strncmp(passwd1_sum, passwd2_sum, d->length) == 0)
+	if (strncmp(passwd1_sum, passwd2_sum, digest_length(d)) == 0)
 		ret = 1;
 
 err2:
@@ -349,18 +349,18 @@ int set_env_passwd(unsigned char* passwd, size_t length)
 
 	d = digest_get_by_name(PASSWD_SUM);
 
-	passwd_sum = calloc(d->length, sizeof(unsigned char));
+	passwd_sum = calloc(digest_length(d), sizeof(unsigned char));
 
 	if (!passwd_sum)
 		return -ENOMEM;
 
-	d->init(d);
+	digest_init(d);
 
-	d->update(d, passwd, length);
+	digest_update(d, passwd, length);
 
-	d->final(d, passwd_sum);
+	digest_final(d, passwd_sum);
 
-	ret = write_env_passwd(passwd_sum, d->length);
+	ret = write_env_passwd(passwd_sum, digest_length(d));
 
 	free(passwd_sum);
 
diff --git a/crypto/digest.c b/crypto/digest.c
index ae414ba..789c0b2 100644
--- a/crypto/digest.c
+++ b/crypto/digest.c
@@ -84,7 +84,7 @@ int digest_file_window(struct digest *d, char *filename,
 	unsigned char *buf;
 	int flags = 0;
 
-	d->init(d);
+	digest_init(d);
 
 	fd = open(filename, O_RDONLY);
 	if (fd < 0) {
@@ -128,12 +128,12 @@ int digest_file_window(struct digest *d, char *filename,
 			goto out_free;
 		}
 
-		d->update(d, buf, now);
+		digest_update(d, buf, now);
 		size -= now;
 		len += now;
 	}
 
-	d->final(d, hash);
+	digest_final(d, hash);
 
 out_free:
 	if (flags)
diff --git a/include/digest.h b/include/digest.h
index 8563c10..208a463 100644
--- a/include/digest.h
+++ b/include/digest.h
@@ -50,4 +50,25 @@ int digest_file(struct digest *d, char *filename,
 int digest_file_by_name(char *algo, char *filename,
 		       unsigned char *hash);
 
+static inline int digest_init(struct digest *d)
+{
+	return d->init(d);
+}
+
+static inline int digest_update(struct digest *d, const void *data,
+				      unsigned long len)
+{
+	return d->update(d, data, len);
+}
+
+static inline int digest_final(struct digest *d, unsigned char *md)
+{
+	return d->final(d, md);
+}
+
+static inline int digest_length(struct digest *d)
+{
+	return d->length;
+}
+
 #endif /* __SH_ST_DEVICES_H__ */
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
