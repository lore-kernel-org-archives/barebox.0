Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSFTy-000264-8T
 for barebox@lists.infradead.org; Wed, 06 Nov 2019 07:11:59 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  6 Nov 2019 08:11:48 +0100
Message-Id: <20191106071155.26389-3-a.fatoum@pengutronix.de>
In-Reply-To: <20191106071155.26389-1-a.fatoum@pengutronix.de>
References: <20191106071155.26389-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 03/10] regulator: copy upstream struct regulator_desc
 documentation
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, mgr@pengutronix.de

This imports the regulator_desc documentation for the fields barebox
uses out of Linux v5.4-rc1.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/regulator.h | 28 ++++++++++++++++++++++++++++
 1 file changed, 28 insertions(+)

diff --git a/include/regulator.h b/include/regulator.h
index cd1d3ccf5503..28ae25652a43 100644
--- a/include/regulator.h
+++ b/include/regulator.h
@@ -4,6 +4,34 @@
 /* struct regulator is an opaque object for consumers */
 struct regulator;
 
+/**
+ * struct regulator_desc - Static regulator descriptor
+ *
+ * Each regulator registered with the core is described with a
+ * structure of this type and a struct regulator_config.  This
+ * structure contains the non-varying parts of the regulator
+ * description.
+ *
+ * @n_voltages: Number of selectors available for ops.list_voltage().
+ * @ops: Regulator operations table.
+ *
+ * @min_uV: Voltage given by the lowest selector (if linear mapping)
+ * @uV_step: Voltage increase with each selector (if linear mapping)
+ * @linear_min_sel: Minimal selector for starting linear mapping
+ *
+ * @vsel_reg: Register for selector when using regulator_regmap_X_voltage_
+ * @vsel_mask: Mask for register bitfield used for selector
+ * @apply_reg: Register for initiate voltage change on the output when
+ *                using regulator_set_voltage_sel_regmap
+ * @apply_bit: Register bitfield used for initiate voltage change on the
+ *                output when using regulator_set_voltage_sel_regmap
+ * @enable_reg: Register for control when using regmap enable/disable ops
+ * @enable_mask: Mask for control when using regmap enable/disable ops
+ * @enable_val: Enabling value for control when using regmap enable/disable ops
+ * @disable_val: Disabling value for control when using regmap enable/disable ops
+ * @enable_is_inverted: A flag to indicate set enable_mask bits to disable
+ *                      when using regulator_enable_regmap and friends APIs.
+ */
 struct regulator_desc {
 	unsigned n_voltages;
 	const struct regulator_ops *ops;
-- 
2.24.0.rc1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
