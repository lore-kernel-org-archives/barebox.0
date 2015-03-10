Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 4.mo69.mail-out.ovh.net ([46.105.42.102])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YVL9M-0001Oi-NU
 for barebox@lists.infradead.org; Tue, 10 Mar 2015 14:28:50 +0000
Received: from mail409.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo69.mail-out.ovh.net (Postfix) with SMTP id C88A31000FA0
 for <barebox@lists.infradead.org>; Tue, 10 Mar 2015 15:28:25 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Tue, 10 Mar 2015 15:28:11 +0100
Message-Id: <1425997697-27467-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20150310141659.GH30554@ns203013.ovh.net>
References: <20150310141659.GH30554@ns203013.ovh.net>
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
Subject: [PATCH 1/7] digest: introduce digest_{init/update/final/length}
To: barebox@lists.infradead.org

This will allow to move from a one at a time digest to a multi-instance
with too much impact on the code using it

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 commands/digest.c |  4 ++--
 common/digest.c   |  6 +++---
 common/password.c | 26 +++++++++++++-------------
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
diff --git a/common/digest.c b/common/digest.c
index ae414ba..789c0b2 100644
--- a/common/digest.c
+++ b/common/digest.c
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
 
diff --git a/include/digest.h b/include/digest.h
index 8563c10..b9f1bff 100644
--- a/include/digest.h
+++ b/include/digest.h
@@ -50,4 +50,25 @@ int digest_file(struct digest *d, char *filename,
 int digest_file_by_name(char *algo, char *filename,
 		       unsigned char *hash);
 
+static inline void digest_init(struct digest *d)
+{
+	d->init(d);
+}
+
+static inline void digest_update(struct digest *d, const void *data,
+				      unsigned long len)
+{
+	d->update(d, data, len);
+}
+
+static inline void digest_final(struct digest *d, unsigned char *md)
+{
+	d->final(d, md);
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
