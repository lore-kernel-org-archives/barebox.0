Delivery-date: Mon, 23 Jan 2023 10:02:54 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pJsj9-002xGk-24
	for lore@lore.pengutronix.de; Mon, 23 Jan 2023 10:02:54 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pJsj7-0005Nm-9S
	for lore@pengutronix.de; Mon, 23 Jan 2023 10:02:53 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Rt+7SMi5znM1l1rpUSawgPzfshXvhPqR4RLYgU9g5X8=; b=pHEizkYywoCqYZo7OAb4Rp6SNu
	1upHMyd3MZjNJrp4vsdOBrIGr9kx0OM2BICSnWnjvzlkT3TthbL88Go+3uhM3wBLarZi/dwxhEuQg
	UPXtxCT4UwFUm5a5NhCsp710TOb6faDffLiYC6dKn7ADtOxqUGAAJElswqG+vM2AwIiiema1Rl1PI
	Uxh4zrlV1+VYQoVoUO+OA5YdXkxChKcd0gSGCdZuBKGADD3iGLc+m0n0PoSJdvGhnHdAWkDuQbMN3
	HOJNrhvbMOVrfwlPL6TVE0jqlaUuRjRXNDgJt0oOTaeZ0SYj4HS3P/FuunIpL9RAG0oYVeqnJxn3I
	Jp2Pu2qg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pJshn-00GRlB-Fu; Mon, 23 Jan 2023 09:01:31 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pJshj-00GRkR-BB
	for barebox@lists.infradead.org; Mon, 23 Jan 2023 09:01:28 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1pJshg-00054k-5c; Mon, 23 Jan 2023 10:01:24 +0100
Received: from mfe by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1pJshf-0002Bp-Je; Mon, 23 Jan 2023 10:01:23 +0100
Date: Mon, 23 Jan 2023 10:01:23 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: John Watts <contact@jookia.org>
Cc: barebox@lists.infradead.org
Message-ID: <20230123090123.5zza52xrylekf36i@pengutronix.de>
References: <20230121144429.3524905-1-contact@jookia.org>
 <20230121144429.3524905-2-contact@jookia.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230121144429.3524905-2-contact@jookia.org>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230123_010127_415912_BCEE4387 
X-CRM114-Status: GOOD (  16.00  )
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
Subject: Re: [PATCH 1/7] I2C: i.MX: Add early i2c support for i.MX6
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi John,

thanks for your patch.

albeit it is obvious we tend to have a small commit message here. The
code change lgtm.

Regards,
  Marco

On 23-01-22, John Watts wrote:
> Signed-off-by: John Watts <contact@jookia.org>
> ---
>  drivers/i2c/busses/i2c-imx-early.c | 14 ++++++++++++++
>  include/pbl/i2c.h                  |  1 +
>  2 files changed, 15 insertions(+)
> 
> diff --git a/drivers/i2c/busses/i2c-imx-early.c b/drivers/i2c/busses/i2c-imx-early.c
> index 4e0f7e517d..6c8bdc7904 100644
> --- a/drivers/i2c/busses/i2c-imx-early.c
> +++ b/drivers/i2c/busses/i2c-imx-early.c
> @@ -303,6 +303,20 @@ struct pbl_i2c *ls1046_i2c_init(void __iomem *regs)
>  	return &fsl_i2c.i2c;
>  }
>  
> +struct pbl_i2c *imx6_i2c_early_init(void __iomem *regs)
> +{
> +	fsl_i2c.regs = regs;
> +	fsl_i2c.regshift = 2;
> +	fsl_i2c.i2cr_ien_opcode = I2CR_IEN_OPCODE_1;
> +	fsl_i2c.i2sr_clr_opcode = I2SR_CLR_OPCODE_W0C;
> +	/* Divider for ~100kHz when coming from the ROM */
> +	fsl_i2c.ifdr = 0x36;
> +
> +	fsl_i2c.i2c.xfer = i2c_fsl_xfer;
> +
> +	return &fsl_i2c.i2c;
> +}
> +
>  struct pbl_i2c *imx8m_i2c_early_init(void __iomem *regs)
>  {
>  	fsl_i2c.regs = regs;
> diff --git a/include/pbl/i2c.h b/include/pbl/i2c.h
> index d9910f531f..32e456d46b 100644
> --- a/include/pbl/i2c.h
> +++ b/include/pbl/i2c.h
> @@ -16,6 +16,7 @@ static inline int pbl_i2c_xfer(struct pbl_i2c *i2c,
>  }
>  
>  struct pbl_i2c *imx8m_i2c_early_init(void __iomem *regs);
> +struct pbl_i2c *imx6_i2c_early_init(void __iomem *regs);
>  struct pbl_i2c *ls1046_i2c_init(void __iomem *regs);
>  
>  static inline int i2c_dev_probe(struct pbl_i2c *i2c, int addr, bool onebyte)
> -- 
> 2.39.0
> 
> 
> 


