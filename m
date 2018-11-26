Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gRCm8-0002rx-Aa
 for barebox@lists.infradead.org; Mon, 26 Nov 2018 09:01:56 +0000
Date: Mon, 26 Nov 2018 10:01:40 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20181126090140.k443kixpzmcxhjim@pengutronix.de>
References: <20181125225952.16159-1-r.hieber@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20181125225952.16159-1-r.hieber@pengutronix.de>
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
Subject: Re: [PATCH 1/2] drivers: caam: add RNG software self-test
To: Roland Hieber <r.hieber@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Roland,

On Sun, Nov 25, 2018 at 11:59:51PM +0100, Roland Hieber wrote:
> diff --git a/drivers/crypto/caam/ctrl.c b/drivers/crypto/caam/ctrl.c
> index 9e62bd6fd6..14dfc7e827 100644
> --- a/drivers/crypto/caam/ctrl.c
> +++ b/drivers/crypto/caam/ctrl.c
> @@ -19,10 +19,13 @@
>  #include "desc_constr.h"
>  #include "error.h"
>  #include "ctrl.h"
> +#include "rng_self_test.h"
>  
>  bool caam_little_end;
>  EXPORT_SYMBOL(caam_little_end);
>  
> +extern bool habv4_need_rng_software_self_test;

Put the declaration into include/hab.h

> +
>  /*
>   * Descriptor to instantiate RNG State Handle 0 in normal mode and
>   * load the JDKEK, TDKEK and TDSK registers
> @@ -570,6 +573,25 @@ static int caam_probe(struct device_d *dev)
>  
>  	cha_vid_ls = rd_reg32(&ctrl->perfmon.cha_id_ls);
>  
> +	/* habv4_need_rng_software_self_test is determined by habv4_get_status() */
> +	if (IS_ENABLED(CONFIG_CRYPTO_DEV_FSL_CAAM_RNG_SELF_TEST) &&
> +	    habv4_need_rng_software_self_test) {
> +		u8 caam_era;
> +		u8 rngvid;
> +		u8 rngrev;
> +
> +		caam_era = (rd_reg32(&ctrl->perfmon.ccb_id) & CCBVID_ERA_MASK) >> CCBVID_ERA_SHIFT;
> +		rngvid = (cha_vid_ls & CHAVID_LS_RNGVID_MASK) >> CHAVID_LS_RNGVID_SHIFT;
> +		rngrev = (rd_reg32(&ctrl->perfmon.cha_rev_ls) & CRNR_LS_RNGRN_MASK) >> CRNR_LS_RNGRN_SHIFT;
> +
> +		pr_info("detected failure in CAAM RNG ROM self-test, running software self-test\n");

This looks unnecessary. You already printed the HAB failure event and
the rng_self_test() will output the result.

> +		ret = rng_self_test(ctrlpriv->jrpdev[0], caam_era, rngvid, rngrev);
> +		if (ret != 0) {
> +			caam_remove(dev);
> +			return ret;
> +		}
> +	}
> +
>  	/*
>  	 * If SEC has RNG version >= 4 and RNG state handle has not been
>  	 * already instantiated, do RNG instantiation
> diff --git a/drivers/crypto/caam/regs.h b/drivers/crypto/caam/regs.h
> index 6c9d6d75a0..19e7d6d7e4 100644
> --- a/drivers/crypto/caam/regs.h
> +++ b/drivers/crypto/caam/regs.h
> @@ -279,6 +279,8 @@ struct caam_perfmon {
>  
>  	/* CAAM Hardware Instantiation Parameters		fa0-fbf */
>  	u32 cha_rev_ms;		/* CRNR - CHA Rev No. Most significant half*/
> +#define CRNR_LS_RNGRN_SHIFT	16
> +#define CRNR_LS_RNGRN_MASK	(0xfull << CRNR_LS_RNGRN_SHIFT)
>  	u32 cha_rev_ls;		/* CRNR - CHA Rev No. Least significant half*/
>  #define CTPR_MS_QI_SHIFT	25
>  #define CTPR_MS_QI_MASK		(0x1ull << CTPR_MS_QI_SHIFT)
> @@ -311,6 +313,8 @@ struct caam_perfmon {
>  #define CCBVID_ERA_SHIFT	24
>  	u32 ccb_id;		/* CCBVID - CCB Version ID	*/
>  	u32 cha_id_ms;		/* CHAVID - CHA Version ID Most Significant*/
> +#define CHAVID_LS_RNGVID_SHIFT	16
> +#define CHAVID_LS_RNGVID_MASK	(0xfull << CHAVID_LS_RNGVID_SHIFT)
>  	u32 cha_id_ls;		/* CHAVID - CHA Version ID Least Significant*/
>  	u32 cha_num_ms;		/* CHANUM - CHA Number Most Significant	*/
>  	u32 cha_num_ls;		/* CHANUM - CHA Number Least Significant*/
> diff --git a/drivers/crypto/caam/rng_self_test.c b/drivers/crypto/caam/rng_self_test.c
> new file mode 100644
> index 0000000000..aff8f26cfd
> --- /dev/null
> +++ b/drivers/crypto/caam/rng_self_test.c
> @@ -0,0 +1,235 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later
> +/*
> + * Copyright 2018 NXP
> + * Copyright (C) 2018 Pengutronix, Roland Hieber <r.hieber@pengutronix.de>
> + *
> + * CAAM RNG self-test -- based on the vendor patch for U-Boot:
> + * https://portland.source.codeaurora.org/patches/external/imxsupport/uboot-imx/imx_v2016.03_4.1.15_2.0.0_ga/HAB-238-Run-RNG-self-test-for-impacted-i.MX-chips.zip
> + *
> + * |    From: Utkarsh Gupta <utkarsh.gupta@nxp.com>
> + * |    Subject: [PATCH] HAB-238 Run RNG self test for impacted i.MX chips
> + * |
> + * |    Patch is only applicable to imx_v2016.03_4.1.15_2.0.0_ga branch of u-boot.
> + * |    Please adapt the patch for your respective release version.
> + * |
> + * |    Background:
> + * |    Few i.MX chips which have HAB 4.2.3 or beyond, have oberserved following
> + * |    warning message generated by HAB due to incorrect implementation of drng
> + * |    self test in boot ROM.
> + * |
> + * |        Event       |0xdb|0x0024|0x42| SRCE Field: 69 30 e1 1d
> + * |                    |    |      |    |             STS = HAB_WARNING (0x69)
> + * |                    |    |      |    |             RSN = HAB_ENG_FAIL (0x30)
> + * |                    |    |      |    |             CTX = HAB_CTX_ENTRY (0xE1)
> + * |                    |    |      |    |             ENG = HAB_ENG_CAAM (0x1D)
> + * |                    |    |      |    | Evt Data (hex):
> + * |                    |    |      |    |  00 08 00 02 40 00 36 06 55 55 00 03 00 00 00 00
> + * |                    |    |      |    |  00 00 00 00 00 00 00 00 00 00 00 01
> + * |
> + * |    It is recommended to run this rng self test before any RNG related crypto
> + * |    implementations are done.
> + * [...]
> + * |
> + * |    Signed-off-by: Utkarsh Gupta <utkarsh.gupta@nxp.com>
> + *
> + * Known impacted chips:
> + *
> + * - i.MX6DQ+ silicon revision 1.1
> + * - i.MX6DQ silicon revision 1.6
> + * - i.MX6DLS silicon revision 1.4
> + * - i.MX6SX silicon revision 1.4
> + * - i.MX6UL silicon revision 1.2
> + * - i.MX67SD silicon revision 1.3
> + */
> +
> +#define pr_fmt(fmt) "rng_self_test: " fmt
> +
> +#include <dma.h>
> +#include <common.h>
> +#include "error.h"
> +#include "regs.h"
> +#include "jr.h"
> +
> +static inline u32 sec_in32(void *addr)
> +{
> +	return readl(addr);
> +}

This function is unused.

> +
> +#define DSC1SIZE 0x36
> +#define DSC2SIZE 0x3A
> +#define RESULT_SIZE 32
> +
> +static const u32 rng_dsc1[DSC1SIZE] = {
> +	0xb0800036, 0x04800010, 0x3c85a15b, 0x50a9d0b1,
> +	0x71a09fee, 0x2eecf20b, 0x02800020, 0xb267292e,
> +	0x85bf712d, 0xe85ff43a, 0xa716b7fb, 0xc40bb528,
> +	0x27b6f564, 0x8821cb5d, 0x9b5f6c26, 0x12a00020,
> +	0x0a20de17, 0x6529357e, 0x316277ab, 0x2846254e,
> +	0x34d23ba5, 0x6f5e9c32, 0x7abdc1bb, 0x0197a385,
> +	0x82500405, 0xa2000001, 0x10880004, 0x00000005,
> +	0x12820004, 0x00000020, 0x82500001, 0xa2000001,
> +	0x10880004, 0x40000045, 0x02800020, 0x8f389cc7,
> +	0xe7f7cbb0, 0x6bf2073d, 0xfc380b6d, 0xb22e9d1a,
> +	0xee64fcb7, 0xa2b48d49, 0xdf9bc3a4, 0x82500009,
> +	0xa2000001, 0x10880004, 0x00000005, 0x82500001,
> +	0x60340020, 0xFFFFFFFF, 0xa2000001, 0x10880004,
> +	0x00000005, 0x8250000d
> +};

Making this an array with undetermined size and using ARRAY_SIZE on the
array would make counting the elements unnecessary.

> +
> +static const u32 rng_result1[RESULT_SIZE] = {
> +	0x3a, 0xfe, 0x2c, 0x87, 0xcc, 0xb6, 0x44, 0x49,
> +	0x19, 0x16, 0x9a, 0x74, 0xa1, 0x31, 0x8b, 0xef,
> +	0xf4, 0x86, 0x0b, 0xb9, 0x5e, 0xee, 0xae, 0x91,
> +	0x92, 0xf4, 0xa9, 0x8f, 0xb0, 0x37, 0x18, 0xa4
> +};

same here.

> +
> +static const u32 rng_dsc2[DSC2SIZE] = {
> +	0xb080003a, 0x04800020, 0x27b73130, 0x30b4b10f,
> +	0x7c62b1ad, 0x77abe899, 0x67452301, 0xefcdab89,
> +	0x98badcfe, 0x10325476, 0x02800020, 0x63f757cf,
> +	0xb9165584, 0xc3c1b407, 0xcc4ce8ad, 0x1ffe8a58,
> +	0xfb4fa893, 0xbb5f4af0, 0x3fb946a1, 0x12a00020,
> +	0x56cbcaa5, 0xfff3adad, 0xe804dcbf, 0x9a900c71,
> +	0xa42017e3, 0x826948e2, 0xd0cfeb3e, 0xaf1a136a,
> +	0x82500405, 0xa2000001, 0x10880004, 0x00000005,
> +	0x12820004, 0x00000020, 0x82500001, 0xa2000001,
> +	0x10880004, 0x40000045, 0x02800020, 0x2e882f8a,
> +	0xe929943e, 0x8132c0a8, 0x12037f90, 0x809fbd66,
> +	0x8684ea04, 0x00cbafa7, 0x7b82d12a, 0x82500009,
> +	0xa2000001, 0x10880004, 0x00000005, 0x82500001,
> +	0x60340020, 0xFFFFFFFF, 0xa2000001, 0x10880004,
> +	0x00000005, 0x8250000d
> +};
> +
> +static const u32 rng_result2[RESULT_SIZE] = {
> +	0x76, 0x87, 0x66, 0x4e, 0xd8, 0x1d, 0x1f, 0x43,
> +	0x76, 0x50, 0x85, 0x5d, 0x1e, 0x1d, 0x9d, 0x0f,
> +	0x93, 0x75, 0x83, 0xff, 0x9a, 0x9b, 0x61, 0xa9,
> +	0xa5, 0xeb, 0xa3, 0x28, 0x2a, 0x15, 0xc1, 0x57
> +};

Why is this u32 when only the lower 8 bits are ever used? Changing this
to u8 would allow you to use memcmp to compare the result with the
expeceted one.

> +
> +/*
> + * construct_rng_self_test_jobdesc() - Implement destination address in RNG self test descriptors
> + * Returns zero on success, and negative on error.
> + */
> +static int construct_rng_self_test_jobdesc(u32 *desc, const u32 *rng_st_dsc, u8 *res_addr, int desc_size)
> +{
> +	int result_addr_idx = desc_size - 5;
> +	int i = 0;
> +
> +	if (!desc) {
> +		return -EINVAL;
> +	}

No need to check, this is already done in the caller.

> +
> +	for (i = 0; i < desc_size; i++) {
> +		desc[i] = rng_st_dsc[i];
> +	}
> +
> +	/* Replace destination address in the descriptor */
> +	desc[result_addr_idx] = (u32)res_addr;
> +
> +	pr_vdebug("RNG SELF TEST DESCRIPTOR:\n");
> +	for (i = 0; i < desc_size; i++) {
> +		pr_vdebug("0x%08X\n", desc[i]);
> +	}
> +
> +	return 0;
> +}
> +
> +/* rng_self_test_done() - callback for caam_jr_enqueue */
> +static void rng_self_test_done(struct device_d *dev, u32 *desc, u32 err, void *arg)
> +{
> +	int * job_err = (int *)arg;

unnecessary cast.

> +	BUG_ON(!job_err);

This is unnecessary because you will get a nive crash dump in the next
line when you dereference the NULL pointer.

> +	*job_err = err;
> +}
> +
> +/*
> + * rng_self_test() - Perform RNG self test
> + * Returns zero on success, and negative on error.
> + */
> +int rng_self_test(struct device_d *dev, const u8 caam_era, const u8 rngvid, const u8 rngrev)
> +{

Please add a caam_ prefix.

> +	int ret, i, desc_size = 0, job_err = 0;
> +	const u32 *rng_st_dsc, *exp_result;
> +	u32 *desc = 0;

No need to initialize.

> +	u8 *result = 0;

ditto.

> +	if (caam_era < 8 && rngvid == 4 && rngrev < 3) {
> +		rng_st_dsc = rng_dsc1;
> +		desc_size = DSC1SIZE;
> +		exp_result = rng_result1;
> +	} else if (rngvid != 3) {
> +		rng_st_dsc = rng_dsc2;
> +		desc_size = DSC2SIZE;
> +		exp_result = rng_result2;
> +	} else {
> +		pr_err("Error: Invalid CAAM ERA (%d) or RNG Version ID (%d) or RNG revision (%d)\n",
> +				caam_era, rngvid, rngrev);
> +		return -EINVAL;

Is this test really correct? Basically it says "We accept everything
except rngvid == 3".

> +
> +	result = dma_alloc(sizeof(uint32_t) * RESULT_SIZE);
> +	if (!result) {
> +		pr_err("Not enough memory for result buffer allocation\n");
> +		return -ENOMEM;
> +	}

Please no messages for usual allocation failures.

"result" is never freed.

> +
> +	desc = dma_alloc(sizeof(uint32_t) * desc_size);
> +	if (!desc) {
> +		pr_err("Not enough memory for descriptor allocation\n");
> +		return -ENOMEM;
> +	}
> +
> +	ret = construct_rng_self_test_jobdesc(desc, rng_st_dsc, result, desc_size);
> +	if (ret) {
> +		pr_err("Error in Job Descriptor Construction: %d %s\n",
> +				ret, strerror(ret));
> +		goto err;
> +	} else {

Not necessary to put the below code into an else {} path when you error
out above.

> +		dma_sync_single_for_device((unsigned long)desc,
> +				desc_size * sizeof(uint32_t), DMA_TO_DEVICE);
> +		dma_sync_single_for_device((unsigned long)result,
> +				RESULT_SIZE * sizeof(uint32_t), DMA_FROM_DEVICE);
> +
> +		/* wait for job completion */
> +		ret = caam_jr_enqueue(dev, desc, rng_self_test_done, &job_err);
> +		if (ret) {
> +			pr_err("Error while running RNG self-test descriptor: %d %s\n",
> +					ret, strerror(ret));
> +			goto err;
> +		}
> +		if (job_err) {
> +			pr_err("Job Error:\n");
> +			caam_jr_strstatus(dev, job_err);
> +			goto err;
> +		}
> +	}
> +
> +	dma_sync_single_for_cpu((unsigned long)result, RESULT_SIZE * sizeof(uint32_t),
> +			DMA_FROM_DEVICE);
> +
> +	pr_vdebug("Result\n");
> +	for (i = 0; i < RESULT_SIZE; i++) {
> +		pr_vdebug("%02X\n", result[i]);
> +	}
> +
> +	pr_vdebug("Expected Result:\n");
> +	for (i = 0; i < RESULT_SIZE; i++) {
> +		pr_vdebug("%02X\n", exp_result[i]);
> +	}

Use memory_display to display this. Also this is only interesting if
both differ, so better print it in the failure path.

> +
> +	for (i = 0; i < RESULT_SIZE; i++) {
> +		if (result[i] != exp_result[i]) {
> +			pr_err("RNG self-test failed with unexpected result\n");
> +			ret = -ERANGE;
> +			goto err;
> +		}
> +	}

memcmp, as mentioned above.

> +	pr_notice("RNG software self-test passed\n");
> +	ret = 0;
> +
> +err:
> +	dma_free(desc);
> +	return ret;
> +}
> diff --git a/drivers/crypto/caam/rng_self_test.h b/drivers/crypto/caam/rng_self_test.h
> new file mode 100644
> index 0000000000..67356fe93b
> --- /dev/null
> +++ b/drivers/crypto/caam/rng_self_test.h
> @@ -0,0 +1,24 @@
> +/*
> + * CAAM RNG self test
> + *
> + * Copyright (C) 2018 Pengutronix, Roland Hieber <r.hieber@pengutronix.de>
> + *
> + * SPDX-License-Identifier: GPL-2.0-or-later
> + *
> + * This program is free software; you can redistribute it and/or
> + * modify it under the terms of the GNU General Public License
> + * as published by the Free Software Foundation; either version 2
> + * of the License, or (at your option) any later version.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> + * GNU General Public License for more details.
> + */
> +
> +#ifndef RNG_SELF_TEST_H
> +#define RNG_SELF_TEST_H
> +
> +int rng_self_test(struct device_d *dev, const u8 caam_era, const u8 rngvid, const u8 rngrev);
> +
> +#endif /* RNG_SELF_TEST_H */
> diff --git a/drivers/hab/habv4.c b/drivers/hab/habv4.c
> index 28fd42ecd7..e64f34870e 100644
> --- a/drivers/hab/habv4.c
> +++ b/drivers/hab/habv4.c
> @@ -387,6 +387,27 @@ static void habv4_display_event(uint8_t *data, uint32_t len)
>  	habv4_display_event_record((struct hab_event_record *)data);
>  }
>  
> +/* Some chips with HAB >= 4.2.3 have an incorrect implementation of the RNG
> + * self-test in ROM code. In this case, an HAB event is generated, and a
> + * software self-test should be run. This variable is set to @c true by
> + * habv4_get_status() when this occurs. */
> +bool habv4_need_rng_software_self_test = false;
> +EXPORT_SYMBOL(habv4_need_rng_software_self_test);
> +
> +#define RNG_FAIL_EVENT_SIZE 36

ARRAY_SIZE is your friend.

> +static uint8_t habv4_known_rng_fail_events[][RNG_FAIL_EVENT_SIZE] = {
> +	{ 0xdb, 0x00, 0x24, 0x42,  0x69, 0x30, 0xe1, 0x1d,
> +	  0x00, 0x80, 0x00, 0x02,  0x40, 0x00, 0x36, 0x06,
> +	  0x55, 0x55, 0x00, 0x03,  0x00, 0x00, 0x00, 0x00,
> +	  0x00, 0x00, 0x00, 0x00,  0x00, 0x00, 0x00, 0x00,
> +	  0x00, 0x00, 0x00, 0x01 },
> +	{ 0xdb, 0x00, 0x24, 0x42,  0x69, 0x30, 0xe1, 0x1d,
> +	  0x00, 0x04, 0x00, 0x02,  0x40, 0x00, 0x36, 0x06,
> +	  0x55, 0x55, 0x00, 0x03,  0x00, 0x00, 0x00, 0x00,
> +	  0x00, 0x00, 0x00, 0x00,  0x00, 0x00, 0x00, 0x00,
> +	  0x00, 0x00, 0x00, 0x01 },
> +};
> +
>  static int habv4_get_status(const struct habv4_rvt *rvt)
>  {
>  	uint8_t data[256];
> @@ -413,10 +434,29 @@ static int habv4_get_status(const struct habv4_rvt *rvt)
>  
>  	len = sizeof(data);
>  	while (rvt->report_event(HAB_STATUS_WARNING, index, data, &len) == HAB_STATUS_SUCCESS) {
> -		pr_err("-------- HAB warning Event %d --------\n", index);
> -		pr_err("event data:\n");
>  
> -		habv4_display_event(data, len);
> +		/* suppress RNG self-test fail events if they can be handled in software */
> +		bool is_rng_fail_event = false;
> +		if (IS_ENABLED(CONFIG_CRYPTO_DEV_FSL_CAAM_RNG_SELF_TEST)) {
> +			int i;
> +			for (i = 0; i < ARRAY_SIZE(habv4_known_rng_fail_events); i++) {
> +				if (memcmp(data, habv4_known_rng_fail_events[i],
> +					   min(len, (uint32_t)RNG_FAIL_EVENT_SIZE)) == 0) {
> +					is_rng_fail_event = true;
> +					break;
> +				}
> +			}
> +		}

You could put that into a separate function to make this loop body and
also the test better readable.

> +
> +		if (is_rng_fail_event) {
> +			pr_warning("RNG self-test failure detected, will run software self-test\n");

pr_warning is a bit harsh when we atually expect it. pr_info maybe?

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
