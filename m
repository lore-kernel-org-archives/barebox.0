Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gUs5q-00043a-Tq
 for barebox@lists.infradead.org; Thu, 06 Dec 2018 11:45:31 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.89)
 (envelope-from <l.stach@pengutronix.de>) id 1gUs5e-0006pV-T6
 for barebox@lists.infradead.org; Thu, 06 Dec 2018 12:45:10 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Thu,  6 Dec 2018 12:45:08 +0100
Message-Id: <20181206114510.20643-2-l.stach@pengutronix.de>
In-Reply-To: <20181206114510.20643-1-l.stach@pengutronix.de>
References: <20181206114510.20643-1-l.stach@pengutronix.de>
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
Subject: [PATCH 2/4] of: remove non-existent of_match_ptr
To: barebox@lists.infradead.org

It's only used in the !OFTREE stub functions, so can be safely removed.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 include/of_device.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/of_device.h b/include/of_device.h
index e84fc9c37775..44c1c0f54551 100644
--- a/include/of_device.h
+++ b/include/of_device.h
@@ -41,7 +41,7 @@ static inline const struct of_device_id *__of_match_device(
 	return NULL;
 }
 #define of_match_device(matches, dev)	\
-	__of_match_device(of_match_ptr(matches), (dev))
+	__of_match_device(matches, (dev))
 
 #endif /* CONFIG_OF */
 
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
