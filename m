Delivery-date: Tue, 02 May 2023 11:35:37 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ptmQ6-002B4A-P9
	for lore@lore.pengutronix.de; Tue, 02 May 2023 11:35:37 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ptmQ4-0005IT-Kv
	for lore@pengutronix.de; Tue, 02 May 2023 11:35:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=PDqcjjKKxbf+r6p199RV4p1YUmrWBUUHcM1yLA8EThA=; b=AjuNQ+f/GJOmOrZamNrl8f/KG2
	5vjUwvg326pNFjjuBNkiSaNQ0rnN5c3DoQtSLoKO0eS8VunM1Ez6EhHtC4JwdsU29ZWJ0k150jQd2
	xAvUOctsLArIqsATFehQyY34KV4FpTuD7nnGKQKdzzBS6tKYNe8FXYfphdkZr+LMOKsxZBLYk43zs
	vPFHCsQbE09KEk5bBr+mkBKy4XjPbN4hBuq3A/zPmts5CHRO86bVjhccakBrh7+d0NXHUfzC1HoY2
	IePYKZC9DXHatElmnzanpPCMkPxSsDV7hMF3r9h1HV/96v7Py2SQkYPHnUGedKHcGVf1oNyc7Wu28
	mCPyB1dQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ptmOw-000moO-1d;
	Tue, 02 May 2023 09:34:26 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ptmOs-000mnq-1l
	for barebox@lists.infradead.org;
	Tue, 02 May 2023 09:34:24 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1ptmOq-0004xF-MN; Tue, 02 May 2023 11:34:20 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1ptmOq-0007K3-3R; Tue, 02 May 2023 11:34:20 +0200
Date: Tue, 2 May 2023 11:34:20 +0200
To: Ahmad Fatoum <ahmad@a3f.at>
Cc: barebox@lists.infradead.org
Message-ID: <20230502093420.GX13543@pengutronix.de>
References: <20230424121805.150434-1-ahmad@a3f.at>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230424121805.150434-1-ahmad@a3f.at>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230502_023422_578589_AE77ED5D 
X-CRM114-Status: GOOD (  28.78  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 1/7] sandbox: watchdog: handle missing stickypage
 gracefully
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Apr 24, 2023 at 02:17:59PM +0200, Ahmad Fatoum wrote:
> To enable simulation of $global.system.reset in sandbox, the watchdog
> driver writes the reset-source into the stickypage for readout during
> subsequent barebox startup. This is an optional feature, so it should
> happen before watchdog registration, but not break watchdog operation if
> not available.
> 
> Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
> ---
>  arch/sandbox/board/watchdog.c           | 28 +++++++++----------------
>  arch/sandbox/include/asm/reset_source.h | 16 ++++++++++++++
>  2 files changed, 26 insertions(+), 18 deletions(-)
>  create mode 100644 arch/sandbox/include/asm/reset_source.h

Applied, thanks

Sascha

> 
> diff --git a/arch/sandbox/board/watchdog.c b/arch/sandbox/board/watchdog.c
> index 54e87cdde4ab..5bffad81195e 100644
> --- a/arch/sandbox/board/watchdog.c
> +++ b/arch/sandbox/board/watchdog.c
> @@ -7,7 +7,7 @@
>  #include <of.h>
>  #include <watchdog.h>
>  #include <linux/nvmem-consumer.h>
> -#include <reset_source.h>
> +#include <asm/reset_source.h>
>  
>  struct sandbox_watchdog {
>  	struct watchdog wdd;
> @@ -30,7 +30,7 @@ static int sandbox_watchdog_set_timeout(struct watchdog *wdd, unsigned int timeo
>  	if (timeout > wdd->timeout_max)
>  		return -EINVAL;
>  
> -	nvmem_cell_write(wd->reset_source_cell, &(u8) { RESET_WDG }, 1);
> +	sandbox_save_reset_source(wd->reset_source_cell, RESET_WDG);
>  
>  	linux_watchdog_set_timeout(timeout);
>  	return 0;
> @@ -41,7 +41,6 @@ static int sandbox_watchdog_probe(struct device *dev)
>  	struct device_node *np = dev->of_node;
>  	struct sandbox_watchdog *wd;
>  	struct watchdog *wdd;
> -	int ret;
>  
>  	wd = xzalloc(sizeof(*wd));
>  
> @@ -50,24 +49,17 @@ static int sandbox_watchdog_probe(struct device *dev)
>  	wdd->set_timeout = sandbox_watchdog_set_timeout;
>  	wdd->timeout_max = 1000;
>  
> -	wd->cant_disable = of_property_read_bool(np, "barebox,cant-disable");
> -
> -	ret = watchdog_register(wdd);
> -	if (ret) {
> -		dev_err(dev, "Failed to register watchdog device\n");
> -		return ret;
> -	}
> -
> -	wd->reset_source_cell = of_nvmem_cell_get(dev->of_node,
> -						  "reset-source");
> +	wd->reset_source_cell = of_nvmem_cell_get(np, "reset-source");
>  	if (IS_ERR(wd->reset_source_cell)) {
> -		dev_warn(dev, "No reset source info available: %pe\n", wd->reset_source_cell);
> -		goto out;
> +		if (PTR_ERR(wd->reset_source_cell) != -EPROBE_DEFER)
> +			dev_warn(dev, "No reset source info available: %pe\n",
> +				 wd->reset_source_cell);
> +		wd->reset_source_cell = NULL;
>  	}
>  
> -out:
> -	dev_info(dev, "probed\n");
> -	return 0;
> +	wd->cant_disable = of_property_read_bool(np, "barebox,cant-disable");
> +
> +	return watchdog_register(wdd);
>  }
>  
>  
> diff --git a/arch/sandbox/include/asm/reset_source.h b/arch/sandbox/include/asm/reset_source.h
> new file mode 100644
> index 000000000000..1690299c4718
> --- /dev/null
> +++ b/arch/sandbox/include/asm/reset_source.h
> @@ -0,0 +1,16 @@
> +/* SPDX-License-Identifier: GPL-2.0-or-later */
> +
> +#ifndef __SANDBOX_RESET_SOURCE_H
> +#define __SANDBOX_RESET_SOURCE_H
> +
> +#include <reset_source.h>
> +#include <linux/nvmem-consumer.h>
> +
> +static inline void sandbox_save_reset_source(struct nvmem_cell *reset_source_cell,
> +					     enum reset_src_type src)
> +{
> +	if (reset_source_cell)
> +		WARN_ON(nvmem_cell_write(reset_source_cell, &(u8) { src }, 1) <= 0);
> +}
> +
> +#endif
> -- 
> 2.38.4
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


