Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kI7Vf-0001nc-9z
 for barebox@lists.infradead.org; Tue, 15 Sep 2020 09:44:24 +0000
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Tue, 15 Sep 2020 11:44:17 +0200
Message-Id: <20200915094417.957978-1-ahmad@a3f.at>
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
Subject: [PATCH v2] regulator: provide regulator_get_name() stub for
 !CONFIG_REGULATOR
To: barebox@lists.infradead.org
Cc: Roland Hieber <rhi@pengutronix.de>

Otherwise users of this function run into a link error when regulator
support is compiled out.

Reported-by: Roland Hieber <rhi@pengutronix.de>
Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
Forgot to commit a deleted semicolon..
---
 include/regulator.h | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/include/regulator.h b/include/regulator.h
index 12d8e816cdb1..a9cb6dedca5e 100644
--- a/include/regulator.h
+++ b/include/regulator.h
@@ -175,6 +175,11 @@ static inline struct regulator *regulator_get(struct device_d *dev, const char *
 	return NULL;
 }
 
+static inline struct regulator *regulator_get_name(const char *name)
+{
+	return NULL;
+}
+
 static inline int regulator_enable(struct regulator *r)
 {
 	return 0;
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
