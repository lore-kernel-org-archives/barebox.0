Delivery-date: Fri, 16 Jul 2021 15:02:40 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1m4NUG-0005Bv-UE
	for lore@lore.pengutronix.de; Fri, 16 Jul 2021 15:02:40 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1m4NUG-0005hq-1I
	for lore@pengutronix.de; Fri, 16 Jul 2021 15:02:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LFIMed/s+r6E+mRrLbdWJzWyxSfY7VJGlbxa/Emkm6c=; b=qnTcBCExhGRUZF
	MZxp/KYLLDve4KsJBypp6L6bX7hmxUxVjw9FnVfU8x39SSbbm5vdBX4cv1wgWOBZDROiyR1gxdTHI
	4dRaARW6YvPCSDo+cjDv3D4RUuT145LBQYn443Of9OkUzOIi7LGRBFkAyMf4HY8fZ6YTJLfSVuIaQ
	LGZP4Jn8TIF+9F8bw4cT9iGVmGFlQVKD0l+mAu7O+u8XejHcra0e36pkIbqLeIBHzg/AYBn5tvLQd
	P+cqUIpq13V9EgdMfz/Xg4TClcs8LHdzaiPChCgHwzQwveYpUy3YEMLTZkIrleyt4JSyzNWzT9yQC
	h0xO2tssuXiX2AzTQUSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m4NSl-004Pu5-Mw; Fri, 16 Jul 2021 13:01:07 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m4NSe-004Psk-5M
 for barebox@lists.infradead.org; Fri, 16 Jul 2021 13:01:01 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0]
 helo=[IPv6:::1]) by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <r.czerwinski@pengutronix.de>)
 id 1m4NSa-00057L-NS; Fri, 16 Jul 2021 15:00:56 +0200
Message-ID: <2eede6ab254bdf6f66ff40dfd8f4ba7d11bf04ec.camel@pengutronix.de>
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
To: Marc Kleine-Budde <mkl@pengutronix.de>, barebox@lists.infradead.org
Cc: Roland Hieber <rhi@pengutronix.de>
Date: Fri, 16 Jul 2021 15:00:56 +0200
In-Reply-To: <20210716122110.4022409-1-mkl@pengutronix.de>
References: <20210716122110.4022409-1-mkl@pengutronix.de>
Organization: Pengutronix e.K.
User-Agent: Evolution 3.40.1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210716_060100_270965_897052E5 
X-CRM114-Status: GOOD (  18.46  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] habv4: habv4_get_status(): do not print HAB error event
 in case of known RNG self test failure
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, 2021-07-16 at 14:21 +0200, Marc Kleine-Budde wrote:
> In commit
> 
> > 655e085e3a22 ("crypto: caam - Always do rng selftest")
> 
> the kconfig option CONFIG_CRYPTO_DEV_FSL_CAAM_RNG_SELF_TEST was
> removed, which resulted in the pr_debug() never being executed. Remove
> the IS_ENABLED() to restore the original behavior, i.e. to not print
> the HAB error Event if it is the known RNG self-test failure.
> 
> Fixes: 655e085e3a22 ("crypto: caam - Always do rng selftest")
> Reported-by: Roland Hieber <rhi@pengutronix.de>
> Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
> ---
>  drivers/hab/habv4.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/drivers/hab/habv4.c b/drivers/hab/habv4.c
> index c2acb81369d8..d58768fa5481 100644
> --- a/drivers/hab/habv4.c
> +++ b/drivers/hab/habv4.c
> @@ -553,8 +553,7 @@ static int habv4_get_status(const struct habv4_rvt *rvt)
>  			break;
>  
>  		/* suppress RNG self-test fail events if they can be handled in software */
> -		if (IS_ENABLED(CONFIG_CRYPTO_DEV_FSL_CAAM_RNG_SELF_TEST) &&
> -		    is_known_rng_fail_event(data, len)) {
> +		if (is_known_rng_fail_event(data, len)) {
>  			pr_debug("RNG self-test failure detected, will run software self-test\n");
>  		} else {
>  			pr_err("-------- HAB Event %d --------\n", i);

Reviewed-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>

However I wonder if we need the pr_debug at all, since the selftests
are now always run, regardless of the HAB error. But I guess it's nice
to note that we detected the error and ran the software selftests.

- rcz


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

