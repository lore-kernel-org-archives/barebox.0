Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x241.google.com ([2a00:1450:400c:c09::241])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g05TR-0004gK-5w
 for barebox@lists.infradead.org; Wed, 12 Sep 2018 13:46:31 +0000
Received: by mail-wm0-x241.google.com with SMTP id s12-v6so2503770wmc.0
 for <barebox@lists.infradead.org>; Wed, 12 Sep 2018 06:46:18 -0700 (PDT)
From: Aleksander Morgado <aleksander@aleksander.es>
Date: Wed, 12 Sep 2018 15:45:48 +0200
Message-Id: <20180912134550.3970-6-aleksander@aleksander.es>
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
Subject: [PATCH v2 5/7] ratp: use __packed instead of the full form
To: barebox@lists.infradead.org
Cc: andrew.smirnov@gmail.com, Aleksander Morgado <aleksander@aleksander.es>

Just a minor coding style change to follow the suggestions given in
patch reviews for other RATP commands.

Signed-off-by: Aleksander Morgado <aleksander@aleksander.es>
---
 common/ratp/md.c    | 4 ++--
 common/ratp/mw.c    | 4 ++--
 common/ratp/reset.c | 2 +-
 3 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/common/ratp/md.c b/common/ratp/md.c
index 9b8fc2bc5..5b877947c 100644
--- a/common/ratp/md.c
+++ b/common/ratp/md.c
@@ -46,7 +46,7 @@ struct ratp_bb_md_request {
 	uint16_t path_size;
 	uint16_t path_offset;
 	uint8_t  buffer[];
-} __attribute__((packed));
+} __packed;
 
 struct ratp_bb_md_response {
 	struct ratp_bb header;
@@ -55,7 +55,7 @@ struct ratp_bb_md_response {
 	uint16_t data_size;
 	uint16_t data_offset;
 	uint8_t  buffer[];
-} __attribute__((packed));
+} __packed;
 
 extern char *mem_rw_buf;
 
diff --git a/common/ratp/mw.c b/common/ratp/mw.c
index 7d6df3d0a..3234d7dac 100644
--- a/common/ratp/mw.c
+++ b/common/ratp/mw.c
@@ -47,7 +47,7 @@ struct ratp_bb_mw_request {
 	uint16_t data_size;
 	uint16_t data_offset;
 	uint8_t  buffer[];
-} __attribute__((packed));
+} __packed;
 
 struct ratp_bb_mw_response {
 	struct ratp_bb header;
@@ -55,7 +55,7 @@ struct ratp_bb_mw_response {
 	uint32_t errno;
 	uint16_t written;
 	uint8_t  buffer[];
-} __attribute__((packed));
+} __packed;
 
 static int ratp_cmd_mw(const struct ratp_bb *req, int req_len,
 		       struct ratp_bb **rsp, int *rsp_len)
diff --git a/common/ratp/reset.c b/common/ratp/reset.c
index ca8be4e62..60b6ff536 100644
--- a/common/ratp/reset.c
+++ b/common/ratp/reset.c
@@ -27,7 +27,7 @@
 struct ratp_bb_reset {
 	struct ratp_bb header;
 	uint8_t        force;
-} __attribute__((packed));
+} __packed;
 
 static int ratp_cmd_reset(const struct ratp_bb *req, int req_len,
 			  struct ratp_bb **rsp, int *rsp_len)
-- 
2.19.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
