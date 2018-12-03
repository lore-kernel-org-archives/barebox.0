Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gTlqD-000201-MU
 for barebox@lists.infradead.org; Mon, 03 Dec 2018 10:52:43 +0000
Date: Mon, 3 Dec 2018 11:52:26 +0100
From: Roland Hieber <r.hieber@pengutronix.de>
Message-ID: <20181203105226.tk633gpq3w2hsdbl@pengutronix.de>
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
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Sascha,

On Thu, Nov 29, 2018 at 02:42:07PM +0100, Roland Hieber wrote:
> +/*
> + * caam_rng_self_test() - Perform RNG self test
> + * Returns zero on success, and negative on error.
> + */
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
> +	}
> +
> +	dma_sync_single_for_cpu((unsigned long)result, result_size * sizeof(*result),
> +			DMA_FROM_DEVICE);
> +
> +	pr_vdebug("Result\n");
> +	for (i = 0; i < result_size; i++) {
> +		pr_vdebug("%02X\n", result[i]);
> +	}
> +
> +	pr_vdebug("Expected Result:\n");
> +	for (i = 0; i < result_size; i++) {
> +		pr_vdebug("%02X\n", exp_result[i]);
> +	}
> +
> +	if (memcmp(result, exp_result, sizeof(*result) * result_size) != 0) {
> +		pr_err("RNG self-test failed with unexpected result\n");
> +		ret = -ERANGE;
> +		goto err;
> +	}
> +
> +	pr_notice("RNG software self-test passed\n");

I noticed that you downgraded this to a pr_info() when applying the
patch, is there a reason?  pr_warn()s have the "WARNING:" prefix,
pr_notice()s have a "NOTICE:" prefix, but pr_info()s don't have any
prefix. I think this one should be a pr_notice because it overrides the
pr_warn("RNG self-test failure detected...") from HAB and tells the user
that this warning is no longer relevant. With pr_info(), I think it will
get lost between all the other infos.

 - Roland

> +	ret = 0;
> +
> +err:
> +	dma_free(desc);
> +	dma_free(result);
> +	return ret;
> +}
> diff --git a/drivers/crypto/caam/rng_self_test.h b/drivers/crypto/caam/rng_self_test.h
[...]

-- 
Roland Hieber                     | r.hieber@pengutronix.de     |
Pengutronix e.K.                  | https://www.pengutronix.de/ |
Peiner Str. 6-8, 31137 Hildesheim | Phone: +49-5121-206917-5086 |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
