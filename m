Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l9C3J-0005FD-NF
 for barebox@lists.infradead.org; Mon, 08 Feb 2021 19:18:31 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  8 Feb 2021 20:18:25 +0100
Message-Id: <20210208191827.19241-2-a.fatoum@pengutronix.de>
In-Reply-To: <20210208191827.19241-1-a.fatoum@pengutronix.de>
References: <20210208191827.19241-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 2/4] regulator: add support for struct
 regulator_desc::off_on_delay
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, has@pengutronix.de

We already honour the enable time in the device tree, read it out
of a new regulator_desc::off_on_delay as well, same as Linux does.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/regulator/core.c | 3 +++
 include/regulator.h      | 2 ++
 2 files changed, 5 insertions(+)

diff --git a/drivers/regulator/core.c b/drivers/regulator/core.c
index 7ced283c116c..ac3a9b048ea8 100644
--- a/drivers/regulator/core.c
+++ b/drivers/regulator/core.c
@@ -176,6 +176,9 @@ int of_regulator_register(struct regulator_dev *rd, struct device_node *node)
 
 	ri->node = node;
 
+	if (rd->desc->off_on_delay)
+		ri->enable_time_us = rd->desc->off_on_delay;
+
 	if (rd->desc->fixed_uV && rd->desc->n_voltages == 1)
 		ri->min_uv = ri->max_uv = rd->desc->fixed_uV;
 
diff --git a/include/regulator.h b/include/regulator.h
index 524e53042c92..83a8813265ff 100644
--- a/include/regulator.h
+++ b/include/regulator.h
@@ -52,6 +52,7 @@ struct regulator_bulk_data {
  * @enable_is_inverted: A flag to indicate set enable_mask bits to disable
  *                      when using regulator_enable_regmap and friends APIs.
  * @fixed_uV: Fixed voltage of rails.
+ * @off_on_delay: guard time (in uS), before re-enabling a regulator
  */
 
 struct regulator_desc {
@@ -75,6 +76,7 @@ struct regulator_desc {
 	const struct regulator_linear_range *linear_ranges;
 	int n_linear_ranges;
 	int fixed_uV;
+	unsigned int off_on_delay;
 };
 
 struct regulator_dev {
-- 
2.30.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
