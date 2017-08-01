Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dcTLM-0006Sp-Os
 for barebox@lists.infradead.org; Tue, 01 Aug 2017 09:20:03 +0000
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Tue,  1 Aug 2017 11:19:31 +0200
Message-Id: <20170801091934.3133-1-s.trumtrar@pengutronix.de>
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
Subject: [RFC PATCH 1/4] reset: add of_reset_control_get to header
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 include/linux/reset.h | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/include/linux/reset.h b/include/linux/reset.h
index be0d1bb5a621..c5660f798193 100644
--- a/include/linux/reset.h
+++ b/include/linux/reset.h
@@ -11,6 +11,8 @@ int reset_control_assert(struct reset_control *rstc);
 int reset_control_deassert(struct reset_control *rstc);
 
 struct reset_control *reset_control_get(struct device_d *dev, const char *id);
+struct reset_control *of_reset_control_get(struct device_node *node,
+					   const char *id);
 void reset_control_put(struct reset_control *rstc);
 
 int __must_check device_reset(struct device_d *dev);
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
