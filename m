Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mickerik.phytec.de ([195.145.39.210])
 by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k3GNA-0004gk-D4
 for barebox@lists.infradead.org; Wed, 05 Aug 2020 10:10:13 +0000
From: Robert Karszniewicz <r.karszniewicz@phytec.de>
Date: Wed, 5 Aug 2020 12:10:06 +0200
Message-Id: <1596622207-286083-3-git-send-email-r.karszniewicz@phytec.de>
In-Reply-To: <1596622207-286083-1-git-send-email-r.karszniewicz@phytec.de>
References: <1596622207-286083-1-git-send-email-r.karszniewicz@phytec.de>
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
Subject: [RFC PATCH v2 2/3] globalvar: add bootm.root_dev
To: barebox@lists.infradead.org

---
 common/bootm.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/common/bootm.c b/common/bootm.c
index 311d0e058321..73409bf9f70c 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -743,6 +743,7 @@ static int bootm_init(void)
 	globalvar_add_simple("bootm.image", NULL);
 	globalvar_add_simple("bootm.image.loadaddr", NULL);
 	globalvar_add_simple("bootm.oftree", NULL);
+	globalvar_add_simple("bootm.root_dev", NULL);
 	globalvar_add_simple("bootm.tee", NULL);
 	globalvar_add_simple_bool("bootm.appendroot", &bootm_appendroot);
 	globalvar_add_simple_bool("bootm.provide_machine_id", &bootm_provide_machine_id);
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
