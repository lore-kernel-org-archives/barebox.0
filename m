Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NZJR9-0005q5-U3
	for barebox@lists.infradead.org; Mon, 25 Jan 2010 07:32:40 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 25 Jan 2010 08:32:20 +0100
Message-Id: <1264404750-11596-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1264404750-11596-2-git-send-email-s.hauer@pengutronix.de>
References: <1264404750-11596-1-git-send-email-s.hauer@pengutronix.de>
	<1264404750-11596-2-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 02/12] remove obsolete comment
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/command.h |    5 -----
 1 files changed, 0 insertions(+), 5 deletions(-)

diff --git a/include/command.h b/include/command.h
index f103045..393438d 100644
--- a/include/command.h
+++ b/include/command.h
@@ -79,11 +79,6 @@ void barebox_cmd_usage(cmd_tbl_t *cmdtp);
 
 #endif	/* __ASSEMBLY__ */
 
-/*
- * Configurable monitor commands definitions have been moved
- * to include/cmd_confdefs.h
- */
-
 #define __stringify_1(x)	#x
 #define __stringify(x)		__stringify_1(x)
 
-- 
1.6.6


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
