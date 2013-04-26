Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UVf0a-0006LI-Ob
 for barebox@lists.infradead.org; Fri, 26 Apr 2013 09:32:02 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jbe@pengutronix.de>) id 1UVf0X-0007tT-8E
 for barebox@lists.infradead.org; Fri, 26 Apr 2013 11:31:57 +0200
Received: from jbe by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <jbe@pengutronix.de>) id 1UVf0W-0004Nq-8U
 for barebox@lists.infradead.org; Fri, 26 Apr 2013 11:31:56 +0200
From: Juergen Beisert <jbe@pengutronix.de>
Date: Fri, 26 Apr 2013 11:31:51 +0200
Message-Id: <1366968712-17851-6-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1366968712-17851-1-git-send-email-jbe@pengutronix.de>
References: <1366968712-17851-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 5/6] MCI/MXS: report a better matching error code when the
 transfer fails
To: barebox@lists.infradead.org

EIO is a better error message to describe the data transfer to or from the SD cards has failed.

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
---
 drivers/mci/mxs.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/mci/mxs.c b/drivers/mci/mxs.c
index 3045e6a..c15461c 100644
--- a/drivers/mci/mxs.c
+++ b/drivers/mci/mxs.c
@@ -186,7 +186,7 @@ static int mxs_mci_read_data(struct mxs_mci_host *mxs_mci, void *buffer, unsigne
 	if (length == 0)
 		return 0;
 
-	return -EINVAL;
+	return -EIO;
 }
 
 
@@ -223,7 +223,7 @@ static int mxs_mci_write_data(struct mxs_mci_host *mxs_mci, const void *buffer,
 	if (length == 0)
 		return 0;
 
-	return -EINVAL;
+	return -EIO;
 }
 
 /**
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
