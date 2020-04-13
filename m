Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNttK-0005by-PM
 for barebox@lists.infradead.org; Mon, 13 Apr 2020 07:52:30 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>) id 1jNttI-0003SZ-FS
 for barebox@lists.infradead.org; Mon, 13 Apr 2020 09:52:24 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>) id 1jNttH-0005Ee-VR
 for barebox@lists.infradead.org; Mon, 13 Apr 2020 09:52:23 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 13 Apr 2020 09:51:52 +0200
Message-Id: <20200413075204.17544-10-a.fatoum@pengutronix.de>
In-Reply-To: <20200413075204.17544-1-a.fatoum@pengutronix.de>
References: <20200413075204.17544-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 09/21] clk: add clk_unregister stub
To: barebox@lists.infradead.org

Make kernel clk driver import a tiny bit more convenient by allowing
clk_unregister calls and control flow to remain as is.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/linux/clk.h | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/include/linux/clk.h b/include/linux/clk.h
index efb0fe4415aa..a005e7233de8 100644
--- a/include/linux/clk.h
+++ b/include/linux/clk.h
@@ -558,4 +558,8 @@ int clk_name_complete(struct string_list *sl, char *instr);
 
 char *of_clk_get_parent_name(struct device_node *np, unsigned int index);
 
+static inline void clk_unregister(struct clk *clk)
+{
+}
+
 #endif
-- 
2.26.0.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
