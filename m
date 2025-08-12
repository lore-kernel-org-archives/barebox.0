Delivery-date: Tue, 12 Aug 2025 16:53:12 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ulqNE-009hZe-0G
	for lore@lore.pengutronix.de;
	Tue, 12 Aug 2025 16:53:12 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ulqND-0002PF-EN
	for lore@pengutronix.de; Tue, 12 Aug 2025 16:53:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=bCvJq98bXxpFhA2sZwNBkhV2v5E4daGqskb4+VJSaKE=; b=fzDdxjxinO1omrN69bpEXdXYRZ
	L96Zrto/SHtw5HQ0M03SrQePDU8M1G9L7A1fDneMhBcjOckGj2XDZ3RAz5ObmwLblmDXRLvJWpLH8
	p8qwjF5n54h39c39JD0WshwCBzhEtyhdYb2lZfXwIMU/pwRYtmeX3S5FRRkHr8YSRYYAbdQRyE49B
	GSytVq0CVP9xnYq4McdmagevJsF8SUSly8ZD6Wti4aFRZHccVRYr2fv+MTMdsKbok5sQdhpi/rbQR
	HEyNyw30NSxhMnjFD1B9P8zRh1z374gGvYQDTpN8rXgMNpnehjtNL2+ZF5IiaeoAz23bbNccuVgiQ
	38bBXL/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulqMr-0000000B73K-3bvg;
	Tue, 12 Aug 2025 14:52:49 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ullQB-0000000AOqq-0vqB
	for barebox@lists.infradead.org;
	Tue, 12 Aug 2025 09:35:57 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1ullQ7-00081B-Lr; Tue, 12 Aug 2025 11:35:51 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1ullQ6-00DB06-1w;
	Tue, 12 Aug 2025 11:35:50 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1ullQ6-006tp2-1d;
	Tue, 12 Aug 2025 11:35:50 +0200
Date: Tue, 12 Aug 2025 11:35:50 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@barebox.org>
Cc: barebox@lists.infradead.org
Message-ID: <aJsK9lRVzTzBt7Fu@pengutronix.de>
References: <20250811122824.1667791-1-a.fatoum@barebox.org>
 <20250811122824.1667791-24-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250811122824.1667791-24-a.fatoum@barebox.org>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250812_023555_258855_ACCB852B 
X-CRM114-Status: GOOD (  21.53  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 23/44] optee: add revision info to tee devinfo output
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, Aug 11, 2025 at 02:28:03PM +0200, Ahmad Fatoum wrote:
> We currently only report an implementation ID when doing devinfo on the
> tee device. Improve upon that by translating the ID to a string and
> printing the OP-TEE revision if possible.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
> ---
>  drivers/tee/optee/smc_abi.c | 16 +++++++++++-----
>  drivers/tee/tee_core.c      | 20 +++++++++++++++++++-
>  2 files changed, 30 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/tee/optee/smc_abi.c b/drivers/tee/optee/smc_abi.c
> index aab8ebb186ed..0b8d581cf19b 100644
> --- a/drivers/tee/optee/smc_abi.c
> +++ b/drivers/tee/optee/smc_abi.c
> @@ -549,8 +549,10 @@ static bool optee_msg_api_uid_is_optee_api(optee_invoke_fn *invoke_fn)
>  	return false;
>  }
>  
> -static void optee_msg_get_os_revision(optee_invoke_fn *invoke_fn)
> +static void optee_msg_get_os_revision(struct device *dev,
> +				      optee_invoke_fn *invoke_fn)
>  {
> +	struct param_d *param;
>  	union {
>  		struct arm_smccc_res smccc;
>  		struct optee_smc_call_get_os_revision_result result;
> @@ -564,10 +566,14 @@ static void optee_msg_get_os_revision(optee_invoke_fn *invoke_fn)
>  		  &res.smccc);
>  
>  	if (res.result.build_id)
> -		pr_info("revision %lu.%lu (%08lx)\n", res.result.major,
> -			res.result.minor, res.result.build_id);
> +		param = dev_add_param_fixed(dev, "revision", "%lu.%lu (%08lx)",
> +					    res.result.major, res.result.minor,
> +					    res.result.build_id);
>  	else
> -		pr_info("revision %lu.%lu\n", res.result.major, res.result.minor);
> +		param = dev_add_param_fixed(dev, "revision", "%lu.%lu",
> +				    res.result.major, res.result.minor);
> +
> +	pr_info("revision %s\n", param->get(dev, param));

In 20/44 you protected this with a if (!IS_ERR(param)). Don't we need this
here as well?

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


