Delivery-date: Wed, 09 Jun 2021 11:25:59 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lquTG-0006OK-VQ
	for lore@lore.pengutronix.de; Wed, 09 Jun 2021 11:25:59 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lquTF-0001Sy-7u
	for lore@pengutronix.de; Wed, 09 Jun 2021 11:25:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=eaGA5Cbeq0D+Mqi44KDasrqk3bUF+GkGfKtnBSNPKs0=; b=EBIuxGKQrCBP+E
	gSuuNXx5R/ri6eS6fe3QL8fQFr/vYh8RmRdrN92gZfVzWBVlxAspfVhU8CWhcUPx0fAWlXJ0S8R1o
	Lut4YjG5N29QijwDJe3IFA3R1Q0WtHRtqZHtSH4m/bLVqqjoqp0A2f0bzUhyHoLmZeym0EYx1lDBs
	G31LDjMwa9RfoZdnJFRW78FwwQPCgILrsN/BraVc+lTzlDqzzq4zjSnJamz2Sjh9iaRObOukH4fJL
	6dDsKY5c/mlGe0i5fiNUDzpIcBW0G1gsxjANTPrcpqa1FkJc4zfBz1tyVeTRb2RvWe5oWZ2flEp3M
	oa8kAnMBnkgjccZHh40g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lquRc-00CeDI-Py; Wed, 09 Jun 2021 09:24:17 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lqtlJ-00CQ05-6f
 for barebox@lists.infradead.org; Wed, 09 Jun 2021 08:40:35 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lqtlG-000444-4o; Wed, 09 Jun 2021 10:40:30 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lqtlF-0003Zp-QW; Wed, 09 Jun 2021 10:40:29 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Enrico Jorns <ejo@pengutronix.de>, Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  9 Jun 2021 10:40:27 +0200
Message-Id: <20210609084027.13591-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210609_014033_615253_A93ED74C 
X-CRM114-Status: GOOD (  28.36  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] regulator: discard unused struct regulator_init_data handling
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

struct regulator_init_data and the contained regulation_constraints
are populated from device tree, but unused anywhere. They are not
required for the stpmic driver to operate, so they can just be dropped.

No functional change.

Tested-by: Enrico Jorns <ejo@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/regulator/of_regulator.c       | 148 ------------------
 include/linux/regulator/machine.h      | 207 -------------------------
 include/linux/regulator/of_regulator.h |  13 --
 3 files changed, 368 deletions(-)
 delete mode 100644 include/linux/regulator/machine.h

diff --git a/drivers/regulator/of_regulator.c b/drivers/regulator/of_regulator.c
index 3e8caa87104e..c536a82c439a 100644
--- a/drivers/regulator/of_regulator.c
+++ b/drivers/regulator/of_regulator.c
@@ -9,145 +9,6 @@
 #include <common.h>
 #include <of.h>
 #include <linux/regulator/of_regulator.h>
-#include <linux/regulator/machine.h>
-
-static int of_get_regulation_constraints(struct device_d *dev,
-					struct device_node *np,
-					struct regulator_init_data **init_data,
-					const struct regulator_desc *desc)
-{
-	struct regulation_constraints *constraints = &(*init_data)->constraints;
-	int ret;
-	u32 pval;
-
-	constraints->name = of_get_property(np, "regulator-name", NULL);
-
-	if (!of_property_read_u32(np, "regulator-min-microvolt", &pval))
-		constraints->min_uV = pval;
-
-	if (!of_property_read_u32(np, "regulator-max-microvolt", &pval))
-		constraints->max_uV = pval;
-
-	/* Voltage change possible? */
-	if (constraints->min_uV != constraints->max_uV)
-		constraints->valid_ops_mask |= REGULATOR_CHANGE_VOLTAGE;
-
-	/* Do we have a voltage range, if so try to apply it? */
-	if (constraints->min_uV && constraints->max_uV)
-		constraints->apply_uV = true;
-
-	if (!of_property_read_u32(np, "regulator-microvolt-offset", &pval))
-		constraints->uV_offset = pval;
-	if (!of_property_read_u32(np, "regulator-min-microamp", &pval))
-		constraints->min_uA = pval;
-	if (!of_property_read_u32(np, "regulator-max-microamp", &pval))
-		constraints->max_uA = pval;
-
-	if (!of_property_read_u32(np, "regulator-input-current-limit-microamp",
-				  &pval))
-		constraints->ilim_uA = pval;
-
-	/* Current change possible? */
-	if (constraints->min_uA != constraints->max_uA)
-		constraints->valid_ops_mask |= REGULATOR_CHANGE_CURRENT;
-
-	constraints->boot_on = of_property_read_bool(np, "regulator-boot-on");
-	constraints->always_on = of_property_read_bool(np, "regulator-always-on");
-	if (!constraints->always_on) /* status change should be possible. */
-		constraints->valid_ops_mask |= REGULATOR_CHANGE_STATUS;
-
-	constraints->pull_down = of_property_read_bool(np, "regulator-pull-down");
-
-	if (of_property_read_bool(np, "regulator-allow-bypass"))
-		constraints->valid_ops_mask |= REGULATOR_CHANGE_BYPASS;
-
-	if (of_property_read_bool(np, "regulator-allow-set-load"))
-		constraints->valid_ops_mask |= REGULATOR_CHANGE_DRMS;
-
-	ret = of_property_read_u32(np, "regulator-ramp-delay", &pval);
-	if (!ret) {
-		if (pval)
-			constraints->ramp_delay = pval;
-		else
-			constraints->ramp_disable = true;
-	}
-
-	ret = of_property_read_u32(np, "regulator-settling-time-us", &pval);
-	if (!ret)
-		constraints->settling_time = pval;
-
-	ret = of_property_read_u32(np, "regulator-settling-time-up-us", &pval);
-	if (!ret)
-		constraints->settling_time_up = pval;
-	if (constraints->settling_time_up && constraints->settling_time) {
-		pr_warn("%pOFn: ambiguous configuration for settling time, ignoring 'regulator-settling-time-up-us'\n",
-			np);
-		constraints->settling_time_up = 0;
-	}
-
-	ret = of_property_read_u32(np, "regulator-settling-time-down-us",
-				   &pval);
-	if (!ret)
-		constraints->settling_time_down = pval;
-	if (constraints->settling_time_down && constraints->settling_time) {
-		pr_warn("%pOFn: ambiguous configuration for settling time, ignoring 'regulator-settling-time-down-us'\n",
-			np);
-		constraints->settling_time_down = 0;
-	}
-
-	ret = of_property_read_u32(np, "regulator-enable-ramp-delay", &pval);
-	if (!ret)
-		constraints->enable_time = pval;
-
-	constraints->soft_start = of_property_read_bool(np,
-					"regulator-soft-start");
-	ret = of_property_read_u32(np, "regulator-active-discharge", &pval);
-	if (!ret) {
-		constraints->active_discharge =
-				(pval) ? REGULATOR_ACTIVE_DISCHARGE_ENABLE :
-					REGULATOR_ACTIVE_DISCHARGE_DISABLE;
-	}
-
-	if (!of_property_read_u32(np, "regulator-system-load", &pval))
-		constraints->system_load = pval;
-
-	if (!of_property_read_u32(np, "regulator-max-step-microvolt",
-				  &pval))
-		constraints->max_uV_step = pval;
-
-	constraints->over_current_protection = of_property_read_bool(np,
-					"regulator-over-current-protection");
-
-	return 0;
-}
-
-/**
- * of_get_regulator_init_data - extract regulator_init_data structure info
- * @dev: device requesting for regulator_init_data
- * @node: regulator device node
- * @desc: regulator description
- *
- * Populates regulator_init_data structure by extracting data from device
- * tree node, returns a pointer to the populated structure or NULL if memory
- * alloc fails.
- */
-struct regulator_init_data *of_get_regulator_init_data(struct device_d *dev,
-					  struct device_node *node,
-					  const struct regulator_desc *desc)
-{
-	struct regulator_init_data *init_data;
-
-	if (!node)
-		return NULL;
-
-	init_data = xzalloc(sizeof(*init_data));
-
-	if (of_get_regulation_constraints(dev, node, &init_data, desc))
-		return NULL;
-
-	return init_data;
-}
-EXPORT_SYMBOL_GPL(of_get_regulator_init_data);
 
 struct devm_of_regulator_matches {
 	struct of_regulator_match *matches;
@@ -192,7 +53,6 @@ int of_regulator_match(struct device_d *dev, struct device_node *node,
 
 	for (i = 0; i < num_matches; i++) {
 		struct of_regulator_match *match = &matches[i];
-		match->init_data = NULL;
 		match->of_node = NULL;
 	}
 
@@ -210,14 +70,6 @@ int of_regulator_match(struct device_d *dev, struct device_node *node,
 			if (strcmp(match->name, name))
 				continue;
 
-			match->init_data = of_get_regulator_init_data(dev, child,
-								      match->desc);
-			if (!match->init_data) {
-				dev_err(dev,
-					"failed to parse DT for regulator %pOFn\n",
-					child);
-				return -EINVAL;
-			}
 			match->of_node = child;
 			count++;
 			break;
diff --git a/include/linux/regulator/machine.h b/include/linux/regulator/machine.h
deleted file mode 100644
index bb8bc7c4e0b6..000000000000
--- a/include/linux/regulator/machine.h
+++ /dev/null
@@ -1,207 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0-only */
-/*
- * machine.h -- SoC Regulator support, machine/board driver API.
- *
- * Copyright (C) 2007, 2008 Wolfson Microelectronics PLC.
- *
- * Author: Liam Girdwood <lrg@slimlogic.co.uk>
- *
- * Regulator Machine/Board Interface.
- */
-
-#ifndef __LINUX_REGULATOR_MACHINE_H_
-#define __LINUX_REGULATOR_MACHINE_H_
-
-#include <regulator.h>
-
-struct regulator;
-
-/*
- * Regulator operation constraint flags. These flags are used to enable
- * certain regulator operations and can be OR'ed together.
- *
- * VOLTAGE:  Regulator output voltage can be changed by software on this
- *           board/machine.
- * CURRENT:  Regulator output current can be changed by software on this
- *           board/machine.
- * MODE:     Regulator operating mode can be changed by software on this
- *           board/machine.
- * STATUS:   Regulator can be enabled and disabled.
- * DRMS:     Dynamic Regulator Mode Switching is enabled for this regulator.
- * BYPASS:   Regulator can be put into bypass mode
- */
-
-#define REGULATOR_CHANGE_VOLTAGE	0x1
-#define REGULATOR_CHANGE_CURRENT	0x2
-#define REGULATOR_CHANGE_MODE		0x4
-#define REGULATOR_CHANGE_STATUS		0x8
-#define REGULATOR_CHANGE_DRMS		0x10
-#define REGULATOR_CHANGE_BYPASS		0x20
-
-/* Regulator active discharge flags */
-enum regulator_active_discharge {
-	REGULATOR_ACTIVE_DISCHARGE_DEFAULT,
-	REGULATOR_ACTIVE_DISCHARGE_DISABLE,
-	REGULATOR_ACTIVE_DISCHARGE_ENABLE,
-};
-
-/**
- * struct regulation_constraints - regulator operating constraints.
- *
- * This struct describes regulator and board/machine specific constraints.
- *
- * @name: Descriptive name for the constraints, used for display purposes.
- *
- * @min_uV: Smallest voltage consumers may set.
- * @max_uV: Largest voltage consumers may set.
- * @uV_offset: Offset applied to voltages from consumer to compensate for
- *             voltage drops.
- *
- * @min_uA: Smallest current consumers may set.
- * @max_uA: Largest current consumers may set.
- * @ilim_uA: Maximum input current.
- * @system_load: Load that isn't captured by any consumer requests.
- *
- * @max_spread: Max possible spread between coupled regulators
- * @valid_modes_mask: Mask of modes which may be configured by consumers.
- * @valid_ops_mask: Operations which may be performed by consumers.
- *
- * @always_on: Set if the regulator should never be disabled.
- * @boot_on: Set if the regulator is enabled when the system is initially
- *           started.  If the regulator is not enabled by the hardware or
- *           bootloader then it will be enabled when the constraints are
- *           applied.
- * @apply_uV: Apply the voltage constraint when initialising.
- * @ramp_disable: Disable ramp delay when initialising or when setting voltage.
- * @soft_start: Enable soft start so that voltage ramps slowly.
- * @pull_down: Enable pull down when regulator is disabled.
- * @over_current_protection: Auto disable on over current event.
- *
- * @input_uV: Input voltage for regulator when supplied by another regulator.
- *
- * @initial_mode: Mode to set at startup.
- * @ramp_delay: Time to settle down after voltage change (unit: uV/us)
- * @settling_time: Time to settle down after voltage change when voltage
- *		   change is non-linear (unit: microseconds).
- * @settling_time_up: Time to settle down after voltage increase when voltage
- *		      change is non-linear (unit: microseconds).
- * @settling_time_down : Time to settle down after voltage decrease when
- *			 voltage change is non-linear (unit: microseconds).
- * @active_discharge: Enable/disable active discharge. The enum
- *		      regulator_active_discharge values are used for
- *		      initialisation.
- * @enable_time: Turn-on time of the rails (unit: microseconds)
- */
-struct regulation_constraints {
-
-	const char *name;
-
-	/* voltage output range (inclusive) - for voltage control */
-	int min_uV;
-	int max_uV;
-
-	int uV_offset;
-
-	/* current output range (inclusive) - for current control */
-	int min_uA;
-	int max_uA;
-	int ilim_uA;
-
-	int system_load;
-
-	/* used for coupled regulators */
-	u32 *max_spread;
-
-	/* used for changing voltage in steps */
-	int max_uV_step;
-
-	/* valid regulator operating modes for this machine */
-	unsigned int valid_modes_mask;
-
-	/* valid operations for regulator on this machine */
-	unsigned int valid_ops_mask;
-
-	/* regulator input voltage - only if supply is another regulator */
-	int input_uV;
-
-	/* mode to set on startup */
-	unsigned int initial_mode;
-
-	unsigned int ramp_delay;
-	unsigned int settling_time;
-	unsigned int settling_time_up;
-	unsigned int settling_time_down;
-	unsigned int enable_time;
-
-	unsigned int active_discharge;
-
-	/* constraint flags */
-	unsigned always_on:1;	/* regulator never off when system is on */
-	unsigned boot_on:1;	/* bootloader/firmware enabled regulator */
-	unsigned apply_uV:1;	/* apply uV constraint if min == max */
-	unsigned ramp_disable:1; /* disable ramp delay */
-	unsigned soft_start:1;	/* ramp voltage slowly */
-	unsigned pull_down:1;	/* pull down resistor when regulator off */
-	unsigned over_current_protection:1; /* auto disable on over current */
-};
-
-/**
- * struct regulator_consumer_supply - supply -> device mapping
- *
- * This maps a supply name to a device. Use of dev_name allows support for
- * buses which make struct device available late such as I2C.
- *
- * @dev_name: Result of dev_name() for the consumer.
- * @supply: Name for the supply.
- */
-struct regulator_consumer_supply {
-	const char *dev_name;   /* dev_name() for consumer */
-	const char *supply;	/* consumer supply - e.g. "vcc" */
-};
-
-/* Initialize struct regulator_consumer_supply */
-#define REGULATOR_SUPPLY(_name, _dev_name)			\
-{								\
-	.supply		= _name,				\
-	.dev_name	= _dev_name,				\
-}
-
-/**
- * struct regulator_init_data - regulator platform initialisation data.
- *
- * Initialisation constraints, our supply and consumers supplies.
- *
- * @supply_regulator: Parent regulator.  Specified using the regulator name
- *                    as it appears in the name field in sysfs, which can
- *                    be explicitly set using the constraints field 'name'.
- *
- * @constraints: Constraints.  These must be specified for the regulator to
- *               be usable.
- * @num_consumer_supplies: Number of consumer device supplies.
- * @consumer_supplies: Consumer device supply configuration.
- *
- * @regulator_init: Callback invoked when the regulator has been registered.
- * @driver_data: Data passed to regulator_init.
- */
-struct regulator_init_data {
-	const char *supply_regulator;        /* or NULL for system supply */
-
-	struct regulation_constraints constraints;
-
-	int num_consumer_supplies;
-	struct regulator_consumer_supply *consumer_supplies;
-
-	/* optional regulator machine specific init */
-	int (*regulator_init)(void *driver_data);
-	void *driver_data;	/* core does not touch this */
-};
-
-#ifdef CONFIG_REGULATOR
-void regulator_has_full_constraints(void);
-#else
-static inline void regulator_has_full_constraints(void)
-{
-}
-#endif
-
-#endif
diff --git a/include/linux/regulator/of_regulator.h b/include/linux/regulator/of_regulator.h
index 265b98d1eef3..de6d053e268f 100644
--- a/include/linux/regulator/of_regulator.h
+++ b/include/linux/regulator/of_regulator.h
@@ -14,28 +14,15 @@ struct regulator_desc;
 struct of_regulator_match {
 	const char *name;
 	void *driver_data;
-	struct regulator_init_data *init_data;
 	struct device_node *of_node;
 	const struct regulator_desc *desc;
 };
 
 #if defined(CONFIG_OFDEVICE)
-extern struct regulator_init_data
-	*of_get_regulator_init_data(struct device_d *dev,
-				    struct device_node *node,
-				    const struct regulator_desc *desc);
 extern int of_regulator_match(struct device_d *dev, struct device_node *node,
 			      struct of_regulator_match *matches,
 			      unsigned int num_matches);
 #else
-static inline struct regulator_init_data
-	*of_get_regulator_init_data(struct device_d *dev,
-				    struct device_node *node,
-				    const struct regulator_desc *desc)
-{
-	return NULL;
-}
-
 static inline int of_regulator_match(struct device_d *dev,
 				     struct device_node *node,
 				     struct of_regulator_match *matches,
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

