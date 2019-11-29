Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iahzF-0006RB-9j
 for barebox@lists.infradead.org; Fri, 29 Nov 2019 15:15:15 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28]
 helo=dude02.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <l.stach@pengutronix.de>) id 1iahz9-0006u0-6d
 for barebox@lists.infradead.org; Fri, 29 Nov 2019 16:15:07 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Fri, 29 Nov 2019 16:14:46 +0100
Message-Id: <20191129151505.23946-21-l.stach@pengutronix.de>
In-Reply-To: <20191129151505.23946-1-l.stach@pengutronix.de>
References: <20191129151505.23946-1-l.stach@pengutronix.de>
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
Subject: [PATCH 20/39] pstore: don't try to grab non-existent logbuf
To: barebox@lists.infradead.org

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 fs/pstore/platform.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/fs/pstore/platform.c b/fs/pstore/platform.c
index 0a6fa38edca9..f4b77226d906 100644
--- a/fs/pstore/platform.c
+++ b/fs/pstore/platform.c
@@ -73,6 +73,9 @@ static void pstore_console_capture_log(void)
 	uint64_t id;
 	struct log_entry *log, *tmp;
 
+	if (IS_ENABLED(CONFIG_CONSOLE_NONE))
+		return;
+
 	list_for_each_entry_safe(log, tmp, &barebox_logbuf, list) {
 		psinfo->write_buf(PSTORE_TYPE_CONSOLE, 0, &id, 0,
 				  log->msg, 0, strlen(log->msg), psinfo);
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
