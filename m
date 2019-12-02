Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibisu-0003Xj-Q8
 for barebox@lists.infradead.org; Mon, 02 Dec 2019 10:24:53 +0000
Received: from ginster.hi.pengutronix.de
 ([2001:67c:670:100:2e4d:54ff:fe67:bfa5] helo=ginster)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <jbe@pengutronix.de>) id 1ibiss-0006ve-15
 for barebox@lists.infradead.org; Mon, 02 Dec 2019 11:24:50 +0100
Received: from jbe by ginster with local (Exim 4.92)
 (envelope-from <jbe@pengutronix.de>) id 1ibisr-00068L-Ov
 for barebox@lists.infradead.org; Mon, 02 Dec 2019 11:24:49 +0100
From: Juergen Borleis <jbe@pengutronix.de>
Date: Mon,  2 Dec 2019 11:24:48 +0100
Message-Id: <20191202102449.23535-1-jbe@pengutronix.de>
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
Subject: [PATCH 1/2] HABv4: remove useless error message
To: barebox@lists.infradead.org

This change removes the stupid error message at the end of the generated
list of HAB events. It seems it was added for debugging/development
purposes, because it always reports an error like

  "HABv4: ERROR: Recompile with larger event data buffer (at least 20 bytes)"

which is completely nonsense, since the we already provide a buffer with
256 bytes...

Signed-off-by: Juergen Borleis <jbe@pengutronix.de>
---
 drivers/hab/habv4.c | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/drivers/hab/habv4.c b/drivers/hab/habv4.c
index e3c1de1a4d..f1f45648f5 100644
--- a/drivers/hab/habv4.c
+++ b/drivers/hab/habv4.c
@@ -555,12 +555,6 @@ static int habv4_get_status(const struct habv4_rvt *rvt)
 		index++;
 	}
 
-	/* Check reason for stopping */
-	len = sizeof(data);
-	index = 0;
-	if (rvt->report_event(HAB_STATUS_ANY, index, NULL, &len) == HAB_STATUS_SUCCESS)
-		pr_err("ERROR: Recompile with larger event data buffer (at least %d bytes)\n\n", len);
-
 	return -EPERM;
 }
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
