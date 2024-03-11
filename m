Delivery-date: Mon, 11 Mar 2024 09:20:43 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rjatn-000mES-0j
	for lore@lore.pengutronix.de;
	Mon, 11 Mar 2024 09:20:43 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rjatm-000333-Ic
	for lore@pengutronix.de; Mon, 11 Mar 2024 09:20:43 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vdOrcHbIk5/ntNXPooo/7O+8xhlyyT0nkVgRvQy7n+M=; b=aCTLfzb2/Bs0rMoFjGrGSUDKD/
	8IkbbOvIgSEz+XIhxLlU6qG/AzXJPXmDpOzJYGuBIkyndgpXKcK1xos1zujPQ+envRI1Sy3RfxA47
	UpZHn8um/p9iw79CTn0vfmrpE+pT1GXgCokAarWUP/0yPBNVXs+E02iBCTY0wUZFDbVFwWqdf4m67
	woRD/6hA+sx3BSGG+fwAuAsV9bchzy5dp4WuEAroeAldZNphPk/85zAiCe9uCf7qUItHaInkTNISZ
	Rk0Gi47Wjy9hMIZnmc3JTa37P3vLssTN39k7tVvyb5hvPeSJ9vbi3rZb2QouSP93nYdIhELvz0c/Y
	TFUon21w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rjatI-00000000bgE-1vBi;
	Mon, 11 Mar 2024 08:20:12 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rjatF-00000000bfe-2U6j
	for barebox@lists.infradead.org;
	Mon, 11 Mar 2024 08:20:11 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rjatE-0002iV-6n; Mon, 11 Mar 2024 09:20:08 +0100
Message-ID: <f01a0d63-1377-4532-8122-d924bbcb9c0e@pengutronix.de>
Date: Mon, 11 Mar 2024 09:20:07 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <20240311080624.1836184-1-s.hauer@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240311080624.1836184-1-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240311_012009_669360_6D9F86EC 
X-CRM114-Status: GOOD (  20.94  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] ARM: i.MX93: ele: start TRNG on i.MX93 rev a1
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Sascha,

On 11.03.24 09:06, Sascha Hauer wrote:
> On i.MX93 a0 the TRNG seems to be started automatically. On rev a1 it's
> not and OP-TEE panics with "Cannot retrieve random data from ELE". Start
> the TRNG to let OP-TEE startup successfully.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  arch/arm/mach-imx/ele.c | 20 ++++++++++++++++++++
>  1 file changed, 20 insertions(+)
> 
> diff --git a/arch/arm/mach-imx/ele.c b/arch/arm/mach-imx/ele.c
> index ab3958cbd3..f8093fc694 100644
> --- a/arch/arm/mach-imx/ele.c
> +++ b/arch/arm/mach-imx/ele.c
> @@ -165,6 +165,23 @@ int ele_get_info(struct ele_get_info_data *info)
>  	return ret;
>  }
>  
> +static int ele_get_start_trng(void)
> +{
> +        struct ele_msg msg = {

strange indentation.

> +		.version = ELE_VERSION,
> +		.tag = ELE_CMD_TAG,
> +		.size = 1,
> +		.command = ELE_START_RNG,
> +	};
> +	int ret;
> +
> +	ret = ele_call(&msg);
> +	if (ret)
> +		pr_err("Could not start TRNG, response 0x%x\n", msg.data[0]);
> +
> +	return ret;
> +}
> +
>  int imx93_ele_load_fw(void *bl33)
>  {
>  	struct ele_get_info_data info = {};
> @@ -204,6 +221,9 @@ int imx93_ele_load_fw(void *bl33)
>  		pr_err("Could not start ELE firmware: ret %d, response 0x%x\n",
>  			ret, msg.data[0]);
>  
> +	if (rev == 0xa1)
> +		ele_get_start_trng();

Does it hurt to start it unconditionally, even if it's already enabled?
At the least, I'd prefer this to be rev >= 0xa1, so it need not be debugged
again in the future.

Thoughts?

Ahmad

> +
>  	return 0;
>  }
>  

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



