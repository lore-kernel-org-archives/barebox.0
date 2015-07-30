Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from proxima.lasnet.de ([2a01:198:210:70::2])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZKpjN-0006f1-JJ
 for barebox@lists.infradead.org; Thu, 30 Jul 2015 15:26:50 +0000
Received: from polaris.fritz.box (f053152215.adsl.alicedsl.de [78.53.152.215])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: polaris@lasnet.de)
 by proxima.lasnet.de (Postfix) with ESMTPSA id 68866C08C6
 for <barebox@lists.infradead.org>; Thu, 30 Jul 2015 17:26:27 +0200 (CEST)
From: Jan Luebbe <jluebbe@debian.org>
Date: Thu, 30 Jul 2015 17:26:22 +0200
Message-Id: <1438269983-30931-1-git-send-email-jluebbe@debian.org>
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
Subject: [PATCH 1/2] state: handle write-protection in the raw backend
To: barebox@lists.infradead.org

Signed-off-by: Jan Luebbe <jluebbe@debian.org>
---
 common/state.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/common/state.c b/common/state.c
index 1243320..1ff0e24 100644
--- a/common/state.c
+++ b/common/state.c
@@ -1377,6 +1377,8 @@ static int backend_raw_save_one(struct state_backend_raw *backend_raw,
 	if (ret < 0)
 		return ret;
 
+	protect(fd, backend_raw->stride, offset, false);
+
 	if (backend_raw->need_erase) {
 		ret = erase(fd, backend_raw->stride, offset);
 		if (ret)
@@ -1387,6 +1389,8 @@ static int backend_raw_save_one(struct state_backend_raw *backend_raw,
 	if (ret < 0)
 		return ret;
 
+	protect(fd, backend_raw->stride, offset, true);
+
 	return 0;
 }
 
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
