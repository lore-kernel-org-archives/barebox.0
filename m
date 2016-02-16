Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aVkmi-00079Q-0H
 for barebox@lists.infradead.org; Tue, 16 Feb 2016 18:55:41 +0000
From: Markus Pargmann <mpa@pengutronix.de>
Date: Tue, 16 Feb 2016 19:54:46 +0100
Message-Id: <1455648888-20678-2-git-send-email-mpa@pengutronix.de>
In-Reply-To: <1455648888-20678-1-git-send-email-mpa@pengutronix.de>
References: <1455648888-20678-1-git-send-email-mpa@pengutronix.de>
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
Subject: [PATCH 2/4] bbu: Add function to check if an update handler exists
To: barebox@lists.infradead.org

This adds a function to check for the existence of an update handler
based on the supplied bbu_data.

Signed-off-by: Markus Pargmann <mpa@pengutronix.de>
---
 common/bbu.c  | 14 ++++++++++++++
 include/bbu.h |  2 ++
 2 files changed, 16 insertions(+)

diff --git a/common/bbu.c b/common/bbu.c
index bf3790d13fff..a7f6b4b851ee 100644
--- a/common/bbu.c
+++ b/common/bbu.c
@@ -111,6 +111,20 @@ static struct bbu_handler *bbu_find_handler_by_device(const char *devicepath)
 	return NULL;
 }
 
+bool barebox_update_handler_exists(struct bbu_data *data)
+{
+	struct bbu_handler *handler;
+
+	handler = bbu_find_handler_by_device(data->devicefile);
+	if (handler)
+		return true;
+
+	if (!data->handler_name)
+		return false;
+
+	return !bbu_find_handler(data->handler_name);
+}
+
 /*
  * do a barebox update with data from *data
  */
diff --git a/include/bbu.h b/include/bbu.h
index 727791171858..0fe7a1a9bcdb 100644
--- a/include/bbu.h
+++ b/include/bbu.h
@@ -36,6 +36,8 @@ int bbu_confirm(struct bbu_data *);
 
 int barebox_update(struct bbu_data *);
 
+bool barebox_update_handler_exists(struct bbu_data *);
+
 void bbu_handlers_list(void);
 
 #ifdef CONFIG_BAREBOX_UPDATE
-- 
2.7.0.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
