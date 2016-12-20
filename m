Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1cJGoA-00028J-63
 for barebox@lists.infradead.org; Tue, 20 Dec 2016 09:34:09 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.84_2)
 (envelope-from <l.stach@pengutronix.de>) id 1cJGnk-00039l-Vn
 for barebox@lists.infradead.org; Tue, 20 Dec 2016 10:33:41 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Tue, 20 Dec 2016 10:33:36 +0100
Message-Id: <20161220093340.14404-5-l.stach@pengutronix.de>
In-Reply-To: <20161220093340.14404-1-l.stach@pengutronix.de>
References: <20161220093340.14404-1-l.stach@pengutronix.de>
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
Subject: [PATCH 5/9] nvvar: add static inline dummy for nvvar_save
To: barebox@lists.infradead.org

Just as the other NVVAR functions, when support for NVVAR isn't
compiled in.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 include/globalvar.h | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/include/globalvar.h b/include/globalvar.h
index ecd9f1d1860b..80bc53e6803b 100644
--- a/include/globalvar.h
+++ b/include/globalvar.h
@@ -116,6 +116,11 @@ static inline int nvvar_remove(const char *name)
 	return 0;
 }
 
+static inline int nvvar_save(void)
+{
+	return 0;
+}
+
 static inline void dev_param_init_from_nv(struct device_d *dev, const char *name)
 {
 }
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
