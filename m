Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4iDx-0000mH-7F
 for barebox@lists.infradead.org; Thu, 20 Feb 2020 09:34:26 +0000
Received: from geraet.pengutronix.de (hazel.nat.pengutronix.de [85.220.165.66])
 (Authenticated sender: ahmad@a3f.at)
 by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id 32AC91C001B
 for <barebox@lists.infradead.org>; Thu, 20 Feb 2020 09:33:38 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Thu, 20 Feb 2020 10:33:27 +0100
Message-Id: <20200220093327.905391-1-ahmad@a3f.at>
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
Subject: [PATCH] reset: add stub for device_reset when
 CONFIG_RESET_CONTROLLER=n
To: barebox@lists.infradead.org

Users of an optional device_reset that have CONFIG_RESET_CONTROLLER=n
will trigger compilation errors. Add a static inline stub to fix it.

[ Note: device_reset is unused and unusable because we have no reset
  controller implementing .reset. It's available in Linux though and
  apparently useful for shared resets, so it's left in ]

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 include/linux/reset.h | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/include/linux/reset.h b/include/linux/reset.h
index a22bcf9a5d64..4a92a177bc75 100644
--- a/include/linux/reset.h
+++ b/include/linux/reset.h
@@ -55,6 +55,12 @@ static inline int device_reset_us(struct device_d *dev, int us)
 	return 0;
 }
 
+static inline int device_reset(struct device_d *dev)
+{
+	WARN_ON(1);
+	return 0;
+}
+
 #endif /* CONFIG_RESET_CONTROLLER */
 
 #endif
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
