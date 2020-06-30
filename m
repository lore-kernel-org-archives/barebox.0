Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mickerik.phytec.de ([195.145.39.210])
 by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jqGcp-0000iY-F3
 for barebox@lists.infradead.org; Tue, 30 Jun 2020 13:48:40 +0000
From: Robert Karszniewicz <r.karszniewicz@phytec.de>
Date: Tue, 30 Jun 2020 15:48:34 +0200
Message-Id: <1593524914-228154-5-git-send-email-r.karszniewicz@phytec.de>
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
Subject: [RFC PATCH 4/4] bootm: mount root device before accessing
 linux_rootarg
To: barebox@lists.infradead.org

---
 common/bootm.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/common/bootm.c b/common/bootm.c
index 1a9ef0673e55..b7c15cac0ba4 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -657,6 +657,8 @@ int bootm_boot(struct bootm_data *bootm_data)
 		char *rootarg;
 
 		if (bootm_data->root_dev) {
+			struct stat s;
+			stat(bootm_data->root_dev, &s); /* mount root device */
 			rootarg = path_get_linux_rootarg(bootm_data->root_dev);
 		} else {
 			rootarg = path_get_linux_rootarg(data->os_file);
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
