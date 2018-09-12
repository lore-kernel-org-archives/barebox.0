Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wr1-x42d.google.com ([2a00:1450:4864:20::42d])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g05TT-0004gQ-DT
 for barebox@lists.infradead.org; Wed, 12 Sep 2018 13:46:33 +0000
Received: by mail-wr1-x42d.google.com with SMTP id v17-v6so2112966wrr.9
 for <barebox@lists.infradead.org>; Wed, 12 Sep 2018 06:46:21 -0700 (PDT)
From: Aleksander Morgado <aleksander@aleksander.es>
Date: Wed, 12 Sep 2018 15:45:50 +0200
Message-Id: <20180912134550.3970-8-aleksander@aleksander.es>
In-Reply-To: <20180912134550.3970-1-aleksander@aleksander.es>
References: <20180912134550.3970-1-aleksander@aleksander.es>
MIME-Version: 1.0
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
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH v2 7/7] ratp: fix incorrect whitespaces in method calls
To: barebox@lists.infradead.org
Cc: andrew.smirnov@gmail.com, Aleksander Morgado <aleksander@aleksander.es>

This is a simple coding style fix to avoid the whitespace before the
open-parenthesis in method calls.

Signed-off-by: Aleksander Morgado <aleksander@aleksander.es>
---
 common/ratp/getenv.c | 12 ++++++------
 common/ratp/md.c     |  8 ++++----
 common/ratp/mw.c     |  6 +++---
 common/ratp/reset.c  |  4 ++--
 4 files changed, 15 insertions(+), 15 deletions(-)

diff --git a/common/ratp/getenv.c b/common/ratp/getenv.c
index b40963488..fdb4b0b28 100644
--- a/common/ratp/getenv.c
+++ b/common/ratp/getenv.c
@@ -27,20 +27,20 @@
 static int ratp_cmd_getenv(const struct ratp_bb *req, int req_len,
 			   struct ratp_bb **rsp, int *rsp_len)
 {
-	int dlen = req_len - sizeof (struct ratp_bb);
+	int dlen = req_len - sizeof(struct ratp_bb);
 	char *varname;
 	const char *value;
 
-	varname = xstrndup ((const char *)req->data, dlen);
-	value = getenv (varname);
-	free (varname);
+	varname = xstrndup((const char *)req->data, dlen);
+	value = getenv(varname);
+	free(varname);
 
-	dlen = strlen (value);
+	dlen = strlen(value);
 
 	*rsp_len = sizeof(struct ratp_bb) + dlen;
 	*rsp = xzalloc(*rsp_len);
 	(*rsp)->type = cpu_to_be16(BB_RATP_TYPE_GETENV_RETURN);
-	memcpy ((*rsp)->data, value, dlen);
+	memcpy((*rsp)->data, value, dlen);
 	return 0;
 }
 
diff --git a/common/ratp/md.c b/common/ratp/md.c
index 2e5a956cb..9ce7e99df 100644
--- a/common/ratp/md.c
+++ b/common/ratp/md.c
@@ -124,7 +124,7 @@ static int ratp_cmd_md(const struct ratp_bb *req, int req_len,
 	/* At least message header should be valid */
 	if (req_len < sizeof(*md_req)) {
 		pr_err("ignored: size mismatch (%d < %zu)\n",
-		       req_len, sizeof (*md_req));
+		       req_len, sizeof(*md_req));
 		ret = -EINVAL;
 		goto out;
 	}
@@ -162,8 +162,8 @@ static int ratp_cmd_md(const struct ratp_bb *req, int req_len,
 		goto out;
 	}
 
-	addr = be16_to_cpu (md_req->addr);
-	size = be16_to_cpu (md_req->size);
+	addr = be16_to_cpu(md_req->addr);
+	size = be16_to_cpu(md_req->size);
 	path = xstrndup((const char *)&buffer[path_offset], path_size);
 
 out:
@@ -193,7 +193,7 @@ out:
 	*rsp = (struct ratp_bb *)md_rsp;
 	*rsp_len = md_rsp_len;
 
-	free (path);
+	free(path);
 	return ret;
 }
 
diff --git a/common/ratp/mw.c b/common/ratp/mw.c
index 0579da3c1..55e79bbaf 100644
--- a/common/ratp/mw.c
+++ b/common/ratp/mw.c
@@ -80,7 +80,7 @@ static int ratp_cmd_mw(const struct ratp_bb *req, int req_len,
 	/* At least message header should be valid */
 	if (req_len < sizeof(*mw_req)) {
 		pr_err("ignored: size mismatch (%d < %zu)\n",
-		       req_len, sizeof (*mw_req));
+		       req_len, sizeof(*mw_req));
 		ret = -EINVAL;
 		goto out;
 	}
@@ -131,7 +131,7 @@ static int ratp_cmd_mw(const struct ratp_bb *req, int req_len,
 		goto out;
 	}
 
-	addr = be16_to_cpu (mw_req->addr);
+	addr = be16_to_cpu(mw_req->addr);
 	path = xstrndup((const char *)&buffer[path_offset], path_size);
 
 	fd = open_and_lseek(path, O_RWSIZE_1 | O_WRONLY, addr);
@@ -164,7 +164,7 @@ out:
 	*rsp = (struct ratp_bb *)mw_rsp;
 	*rsp_len = sizeof(*mw_rsp);
 
-	free (path);
+	free(path);
 	return ret;
 }
 
diff --git a/common/ratp/reset.c b/common/ratp/reset.c
index 5439f344f..d0229d5d6 100644
--- a/common/ratp/reset.c
+++ b/common/ratp/reset.c
@@ -36,8 +36,8 @@ static int ratp_cmd_reset(const struct ratp_bb *req, int req_len,
 {
 	struct ratp_bb_reset *reset_req = (struct ratp_bb_reset *)req;
 
-	if (req_len < sizeof (*reset_req)) {
-		pr_err("ignored: size mismatch (%d < %zu)\n", req_len, sizeof (*reset_req));
+	if (req_len < sizeof(*reset_req)) {
+		pr_err("ignored: size mismatch (%d < %zu)\n", req_len, sizeof(*reset_req));
 		return 2;
 	}
 
-- 
2.19.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
