Delivery-date: Mon, 26 Sep 2022 08:04:32 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ochEG-00F5FF-8x
	for lore@lore.pengutronix.de; Mon, 26 Sep 2022 08:04:32 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ochEE-0007lV-Uo
	for lore@pengutronix.de; Mon, 26 Sep 2022 08:04:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=07ukaHXNJsWqNaKwLouZMufjkoHXCGOwsIHv0pF3Xj8=; b=bMn2IPdTLCtBr64/ypdIAIZ/sV
	rAPXwl0FFxA4CZRINDbIZAoIwvO4XsIezihWv70QN67lc+crrjPsvsEQ6JlSbzsQl4xYcve69qcoZ
	Yo68N/yHi7Q1KbyPWDu/vHjw5EJ/ZGrl2FyZbiFMXoBkr1yF0CSkDvZg5zgz1EO+LFWeofuvQKXMb
	D6GLdAXCXD/ICi0PTh0sIJoZmxcI57jMfT5DcvwlIWRqj/XOME7UFayUjAWw96XDnJc7ujvvc+ucO
	yQ69OVnBDuaEPypMt9bUnSaN+XUZD5bu/y1t9C55atjiqdC8+kyMJvT1w21FZViW/ZIt7nl8K0oIU
	e+rujSnQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ochBr-002A3H-2j; Mon, 26 Sep 2022 06:02:03 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ochBl-0029yA-Se
	for barebox@lists.infradead.org; Mon, 26 Sep 2022 06:02:00 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1ochBg-0007Eq-Ch; Mon, 26 Sep 2022 08:01:52 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1ochBg-0004p8-2i; Mon, 26 Sep 2022 08:01:52 +0200
Date: Mon, 26 Sep 2022 08:01:52 +0200
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220926060152.GQ12909@pengutronix.de>
References: <20220921172052.2989506-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220921172052.2989506-1-m.felsch@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220925_230157_938583_7FF2FB5B 
X-CRM114-Status: GOOD (  28.00  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] ddr: imx8m: write fsp_table entry automatically
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Sep 21, 2022 at 07:20:51PM +0200, Marco Felsch wrote:
> Currently the fsp_table must be set manually within the 'struct
> dram_timing_info'. Since the 'struct fsp_msg' already has all
> information needed for the fsp_table we can use it to set it
> automatically. This approach is less error-prone and avoids information
> duplication.
> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> ---
>  drivers/ddr/imx8m/ddrphy_train.c |  3 +++
>  drivers/ddr/imx8m/helper.c       | 19 +++++++++++++++++++
>  include/soc/imx8m/ddr.h          |  2 ++
>  3 files changed, 24 insertions(+)
> 
> diff --git a/drivers/ddr/imx8m/ddrphy_train.c b/drivers/ddr/imx8m/ddrphy_train.c
> index e9d35afdfb..09f1e77295 100644
> --- a/drivers/ddr/imx8m/ddrphy_train.c
> +++ b/drivers/ddr/imx8m/ddrphy_train.c
> @@ -165,6 +165,9 @@ int ddr_cfg_phy(struct dram_timing_info *dram_timing, unsigned type)
>  
>  		dwc_ddrphy_apb_wr(0xd0000, 0x1);
>  
> +		/* Training done, add entry to fsp_table */
> +		dram_write_fsp_table_entry(dram_timing, fsp_msg->drate);
> +
>  		fsp_msg++;
>  	}
>  
> diff --git a/drivers/ddr/imx8m/helper.c b/drivers/ddr/imx8m/helper.c
> index 98e4084958..e71401c1b2 100644
> --- a/drivers/ddr/imx8m/helper.c
> +++ b/drivers/ddr/imx8m/helper.c
> @@ -18,6 +18,25 @@
>  #define DMEM_OFFSET_ADDR 0x00054000
>  #define DDR_TRAIN_CODE_BASE_ADDR IP2APB_DDRPHY_IPS_BASE_ADDR(0)
>  
> +void dram_write_fsp_table_entry(struct dram_timing_info *timing_info,
> +				unsigned int data_rate)
> +{
> +	unsigned int i;
> +
> +	for (i = 0; i < ARRAY_SIZE(timing_info->fsp_table); i++) {
> +		unsigned int entry = timing_info->fsp_table[i];
> +
> +		/* Skip already existing entries */
> +		if (entry == data_rate)
> +			return;
> +
> +		if (entry == 0) {
> +			timing_info->fsp_table[i] = data_rate;
> +			return;
> +		}
> +	}
> +}

The input struct dram_timing_info * comes directly from the boards and
should be treated as const. If you go that route please parse the
.fsp_msg data directly in dram_config_save().

Another way could be to just check the .fsp_msg and .fsp_table for
consistency and warn about it if necessary.
In the end the input data from the boards is redundant here. We are
not going to change the input data format as that comes from the NXP
DRAM tools. Just ignoring the .fsp_table like you do here might be
confusing as well.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


