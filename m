Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iahz9-0006ix-Sr
 for barebox@lists.infradead.org; Fri, 29 Nov 2019 15:15:14 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28]
 helo=dude02.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <l.stach@pengutronix.de>) id 1iahz8-0006u0-8w
 for barebox@lists.infradead.org; Fri, 29 Nov 2019 16:15:06 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Fri, 29 Nov 2019 16:14:35 +0100
Message-Id: <20191129151505.23946-10-l.stach@pengutronix.de>
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
Subject: [PATCH 09/39] reset_source: add stub for reset_source_set_device
To: barebox@lists.infradead.org

Fixes: a0748840c104 (reset_source: implement helper to set a
       device as reset source)
Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 include/reset_source.h | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/include/reset_source.h b/include/reset_source.h
index 3ccd529fdd42..305dde0102d5 100644
--- a/include/reset_source.h
+++ b/include/reset_source.h
@@ -60,6 +60,11 @@ static inline struct device_d *reset_source_get_device(void)
 	return NULL;
 }
 
+static inline void reset_source_set_device(struct device_d *dev,
+					   enum reset_src_type st)
+{
+}
+
 static inline void reset_source_set_prinst(enum reset_src_type type,
 					   unsigned int priority, int instance)
 {
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
