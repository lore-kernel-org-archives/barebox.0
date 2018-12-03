Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gTjBA-0005my-2n
 for barebox@lists.infradead.org; Mon, 03 Dec 2018 08:02:14 +0000
Date: Mon, 3 Dec 2018 09:01:56 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20181203080156.ekhbcvljcxzuf6sy@pengutronix.de>
References: <20181129134208.5893-1-r.hieber@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20181129134208.5893-1-r.hieber@pengutronix.de>
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
Subject: Re: [PATCH v2 1/2] drivers: caam: add RNG software self-test
To: Roland Hieber <r.hieber@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Roland,

Applied with several adjustments, see below.


On Thu, Nov 29, 2018 at 02:42:07PM +0100, Roland Hieber wrote:
> +/*
> + * construct_rng_self_test_jobdesc() - Implement destination address in RNG self test descriptors
> + * Returns zero on success, and negative on error.
> + */
> +static void construct_rng_self_test_jobdesc(u32 *desc, const u32 *rng_st_dsc, u8 *res_addr, int desc_size)
> +{
> +	int result_addr_idx = desc_size - 5;
> +	int i;
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

Dropped these for now. Should be a memory_display with suitable message
priority one we have it.

> +int caam_rng_self_test(struct device_d *dev, const u8 caam_era, const u8 rngvid, const u8 rngrev)
> +{
> +	int ret, i, desc_size = 0, result_size = 0, job_err = 0;
> +	const u32 *rng_st_dsc;
> +	const u8 *exp_result;
> +	u32 *desc;
> +	u8 *result;
> +
> +	pr_debug("got CAAM ERA %d, RNG Version ID %d, RNG revision %d\n", caam_era, rngvid, rngrev);
> +
> +	if (caam_era < 8 && rngvid == 4 && rngrev < 3) {
> +		// older affected i.MX chipsets have CAAM < 8 and have RNG4 < 4.3

No C++ comments please.

> +		rng_st_dsc = rng_dsc1;
> +		desc_size = ARRAY_SIZE(rng_dsc1);
> +		exp_result = rng_result1;
> +		result_size = ARRAY_SIZE(rng_result1);
> +	} else if (caam_era >= 8 || (rngvid >= 4 && rngrev >= 3)) {
> +		// newer affected chipsets have CAAM >= 8 or RNG4 >= 4.3
> +		rng_st_dsc = rng_dsc2;
> +		desc_size = ARRAY_SIZE(rng_dsc2);
> +		exp_result = rng_result2;
> +		result_size = ARRAY_SIZE(rng_result2);
> +	} else {
> +		pr_err("Error: Invalid CAAM ERA (%d) or RNG Version ID (%d) or RNG revision (%d)\n",
> +				caam_era, rngvid, rngrev);
> +		return -EINVAL;
> +	}
> +
> +	result = dma_alloc(sizeof(*result) * result_size);
> +	if (!result) {
> +		return -ENOMEM;
> +	}
> +
> +	desc = dma_alloc(sizeof(*desc) * desc_size);
> +	if (!desc) {
> +		return -ENOMEM;
> +	}

Loosing memory here.

> +
> +	construct_rng_self_test_jobdesc(desc, rng_st_dsc, result, desc_size);
> +
> +	dma_sync_single_for_device((unsigned long)desc,
> +			desc_size * sizeof(*desc), DMA_TO_DEVICE);
> +	dma_sync_single_for_device((unsigned long)result,
> +			result_size * sizeof(*result), DMA_FROM_DEVICE);
> +
> +	/* wait for job completion */
> +	ret = caam_jr_enqueue(dev, desc, rng_self_test_done, &job_err);
> +	if (ret) {
> +		pr_err("Error while running RNG self-test descriptor: %d %s\n",
> +				ret, strerror(ret));
> +		goto err;
> +	}
> +	if (job_err) {
> +		pr_err("Job Error:\n");
> +		caam_jr_strstatus(dev, job_err);
> +		goto err;

ret will be 0 here, not what we want.

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
