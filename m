Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dxB9j-0004GK-5M
 for barebox@lists.infradead.org; Wed, 27 Sep 2017 12:09:44 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 27 Sep 2017 14:09:06 +0200
Message-Id: <20170927120910.10516-9-s.hauer@pengutronix.de>
In-Reply-To: <20170927120910.10516-1-s.hauer@pengutronix.de>
References: <20170927120910.10516-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 08/12] bbu: Add function to iterate over registered handlers
To: Barebox List <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/bbu.c  | 15 +++++++++++++++
 include/bbu.h |  2 ++
 2 files changed, 17 insertions(+)

diff --git a/common/bbu.c b/common/bbu.c
index 031c433820..3b372263b1 100644
--- a/common/bbu.c
+++ b/common/bbu.c
@@ -30,6 +30,21 @@
 
 static LIST_HEAD(bbu_image_handlers);
 
+int bbu_handlers_iterate(int (*fn)(struct bbu_handler *, void *), void *ctx)
+{
+	struct bbu_handler *handler;
+
+	list_for_each_entry(handler, &bbu_image_handlers, list) {
+		int ret;
+
+		ret = fn(handler, ctx);
+		if (ret)
+			return ret;
+	}
+
+	return 0;
+}
+
 int bbu_force(struct bbu_data *data, const char *fmt, ...)
 {
 	va_list args;
diff --git a/include/bbu.h b/include/bbu.h
index 9d24ffc395..54434b03e0 100644
--- a/include/bbu.h
+++ b/include/bbu.h
@@ -42,6 +42,8 @@ bool barebox_update_handler_exists(struct bbu_data *);
 
 void bbu_handlers_list(void);
 
+int bbu_handlers_iterate(int (*fn)(struct bbu_handler *, void *), void *);
+
 #ifdef CONFIG_BAREBOX_UPDATE
 
 int bbu_register_handler(struct bbu_handler *);
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
