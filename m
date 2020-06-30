Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mickerik.phytec.de ([195.145.39.210])
 by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jqGco-0000iY-Be
 for barebox@lists.infradead.org; Tue, 30 Jun 2020 13:48:39 +0000
From: Robert Karszniewicz <r.karszniewicz@phytec.de>
Date: Tue, 30 Jun 2020 15:48:32 +0200
Message-Id: <1593524914-228154-3-git-send-email-r.karszniewicz@phytec.de>
In-Reply-To: <1593524914-228154-1-git-send-email-r.karszniewicz@phytec.de>
References: <1593524914-228154-1-git-send-email-r.karszniewicz@phytec.de>
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
Subject: [RFC PATCH 2/4] globalvar: add bootm.root
To: barebox@lists.infradead.org

---
 common/bootm.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/common/bootm.c b/common/bootm.c
index af9f9b8f447d..3772fa4c2c51 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -743,6 +743,7 @@ static int bootm_init(void)
 	globalvar_add_simple("bootm.image", NULL);
 	globalvar_add_simple("bootm.image.loadaddr", NULL);
 	globalvar_add_simple("bootm.oftree", NULL);
+	globalvar_add_simple("bootm.root", NULL);
 	globalvar_add_simple("bootm.tee", NULL);
 	globalvar_add_simple_bool("bootm.appendroot", &bootm_appendroot);
 	globalvar_add_simple_bool("bootm.provide_machine_id", &bootm_provide_machine_id);
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
