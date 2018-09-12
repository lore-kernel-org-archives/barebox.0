Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x242.google.com ([2a00:1450:400c:c09::242])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g05TS-0004gP-9m
 for barebox@lists.infradead.org; Wed, 12 Sep 2018 13:46:32 +0000
Received: by mail-wm0-x242.google.com with SMTP id s12-v6so2503821wmc.0
 for <barebox@lists.infradead.org>; Wed, 12 Sep 2018 06:46:19 -0700 (PDT)
From: Aleksander Morgado <aleksander@aleksander.es>
Date: Wed, 12 Sep 2018 15:45:49 +0200
Message-Id: <20180912134550.3970-7-aleksander@aleksander.es>
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
Subject: [PATCH v2 6/7] ratp: use pr_ macros to print messages
To: barebox@lists.infradead.org
Cc: andrew.smirnov@gmail.com, Aleksander Morgado <aleksander@aleksander.es>

Following suggestions in other patch reviews, the RAPT commands are
updated to use pr_err() instead of plain printf() to report errors
to the user.

Signed-off-by: Aleksander Morgado <aleksander@aleksander.es>
---
 common/ratp/md.c    | 12 +++++++-----
 common/ratp/mw.c    | 14 ++++++++------
 common/ratp/reset.c |  6 ++++--
 3 files changed, 19 insertions(+), 13 deletions(-)

diff --git a/common/ratp/md.c b/common/ratp/md.c
index 5b877947c..2e5a956cb 100644
--- a/common/ratp/md.c
+++ b/common/ratp/md.c
@@ -15,6 +15,8 @@
  *
  */
 
+#define pr_fmt(fmt) "barebox-ratp: md: " fmt
+
 #include <common.h>
 #include <ratp_bb.h>
 #include <init.h>
@@ -121,7 +123,7 @@ static int ratp_cmd_md(const struct ratp_bb *req, int req_len,
 
 	/* At least message header should be valid */
 	if (req_len < sizeof(*md_req)) {
-		printf("ratp md ignored: size mismatch (%d < %zu)\n",
+		pr_err("ignored: size mismatch (%d < %zu)\n",
 		       req_len, sizeof (*md_req));
 		ret = -EINVAL;
 		goto out;
@@ -130,7 +132,7 @@ static int ratp_cmd_md(const struct ratp_bb *req, int req_len,
 	/* Validate buffer position and size */
 	buffer_offset = be16_to_cpu(md_req->buffer_offset);
 	if (req_len < buffer_offset) {
-		printf("ratp md ignored: invalid buffer offset (%d < %hu)\n",
+		pr_err("ignored: invalid buffer offset (%d < %hu)\n",
 		       req_len, buffer_offset);
 		ret = -EINVAL;
 		goto out;
@@ -141,20 +143,20 @@ static int ratp_cmd_md(const struct ratp_bb *req, int req_len,
 	/* Validate path position and size */
 	path_offset = be16_to_cpu(md_req->path_offset);
 	if (path_offset != 0) {
-		printf("ratp md ignored: invalid path offset\n");
+		pr_err("ignored: invalid path offset\n");
 		ret = -EINVAL;
 		goto out;
 	}
 	path_size = be16_to_cpu(md_req->path_size);
 	if (!path_size) {
-		printf("ratp md ignored: no filepath given\n");
+		pr_err("ignored: no filepath given\n");
 		ret = -EINVAL;
 		goto out;
 	}
 
 	/* Validate buffer size */
 	if (buffer_size < path_size) {
-		printf("ratp mw ignored: size mismatch (%d < %hu): path may not be fully given\n",
+		pr_err("ignored: size mismatch (%d < %hu): path may not be fully given\n",
 		       req_len, path_size);
 		ret = -EINVAL;
 		goto out;
diff --git a/common/ratp/mw.c b/common/ratp/mw.c
index 3234d7dac..0579da3c1 100644
--- a/common/ratp/mw.c
+++ b/common/ratp/mw.c
@@ -16,6 +16,8 @@
  *
  */
 
+#define pr_fmt(fmt) "barebox-ratp: mw: " fmt
+
 #include <common.h>
 #include <ratp_bb.h>
 #include <init.h>
@@ -77,7 +79,7 @@ static int ratp_cmd_mw(const struct ratp_bb *req, int req_len,
 
 	/* At least message header should be valid */
 	if (req_len < sizeof(*mw_req)) {
-		printf("ratp mw ignored: size mismatch (%d < %zu)\n",
+		pr_err("ignored: size mismatch (%d < %zu)\n",
 		       req_len, sizeof (*mw_req));
 		ret = -EINVAL;
 		goto out;
@@ -86,7 +88,7 @@ static int ratp_cmd_mw(const struct ratp_bb *req, int req_len,
 	/* Validate buffer position and size */
 	buffer_offset = be16_to_cpu(mw_req->buffer_offset);
 	if (req_len < buffer_offset) {
-		printf("ratp mw ignored: invalid buffer offset (%d < %hu)\n",
+		pr_err("ignored: invalid buffer offset (%d < %hu)\n",
 		       req_len, buffer_offset);
 		ret = -EINVAL;
 		goto out;
@@ -97,13 +99,13 @@ static int ratp_cmd_mw(const struct ratp_bb *req, int req_len,
 	/* Validate path position and size */
 	path_offset = be16_to_cpu(mw_req->path_offset);
 	if (path_offset != 0) {
-		printf("ratp mw ignored: invalid path offset\n");
+		pr_err("ignored: invalid path offset\n");
 		ret = -EINVAL;
 		goto out;
 	}
 	path_size = be16_to_cpu(mw_req->path_size);
 	if (!path_size) {
-		printf("ratp mw ignored: no filepath given\n");
+		pr_err("ignored: no filepath given\n");
 		ret = -EINVAL;
 		goto out;
 	}
@@ -111,7 +113,7 @@ static int ratp_cmd_mw(const struct ratp_bb *req, int req_len,
 	/* Validate data position and size */
 	data_offset = be16_to_cpu(mw_req->data_offset);
 	if (data_offset != (path_offset + path_size)) {
-		printf("ratp mw ignored: invalid path offset\n");
+		pr_err("ignored: invalid path offset\n");
 		ret = -EINVAL;
 		goto out;
 	}
@@ -123,7 +125,7 @@ static int ratp_cmd_mw(const struct ratp_bb *req, int req_len,
 
 	/* Validate buffer size */
 	if (buffer_size < (path_size + data_size)) {
-		printf("ratp mw ignored: size mismatch (%d < %hu): path or data not be fully given\n",
+		pr_err("ignored: size mismatch (%d < %hu): path or data not be fully given\n",
 		       req_len, path_size + data_size);
 		ret = -EINVAL;
 		goto out;
diff --git a/common/ratp/reset.c b/common/ratp/reset.c
index 60b6ff536..5439f344f 100644
--- a/common/ratp/reset.c
+++ b/common/ratp/reset.c
@@ -17,6 +17,8 @@
  *
  */
 
+#define pr_fmt(fmt) "barebox-ratp: reset: " fmt
+
 #include <common.h>
 #include <command.h>
 #include <ratp_bb.h>
@@ -35,11 +37,11 @@ static int ratp_cmd_reset(const struct ratp_bb *req, int req_len,
 	struct ratp_bb_reset *reset_req = (struct ratp_bb_reset *)req;
 
 	if (req_len < sizeof (*reset_req)) {
-		printf ("ratp reset ignored: size mismatch (%d < %zu)\n", req_len, sizeof (*reset_req));
+		pr_err("ignored: size mismatch (%d < %zu)\n", req_len, sizeof (*reset_req));
 		return 2;
 	}
 
-	debug("running reset %s\n", reset_req->force ? "(forced)" : "");
+	pr_debug("running %s\n", reset_req->force ? "(forced)" : "");
 
 	if (!reset_req->force)
 		shutdown_barebox();
-- 
2.19.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
