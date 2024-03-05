Delivery-date: Tue, 05 Mar 2024 16:34:51 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rhWod-009pf2-34
	for lore@lore.pengutronix.de;
	Tue, 05 Mar 2024 16:34:51 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rhWod-0003FI-4Y
	for lore@pengutronix.de; Tue, 05 Mar 2024 16:34:51 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=i4WbXV9VISgn7OkfJr+dhAZFTMB/G3PNeUVhXzktFP0=; b=tHj0uEV7cc5iubQoncVfcNpdnn
	hSSg7ug2P8wp9eAMuGEl8jzHDwxP24U7nX+H6ac6pMICD2YJ3t+ZDeLnkeIhV9mcoysR2/Zt1FOMV
	jz5RvM9gk2lamPmCliXAVJNTaKH8Y8X5SHeEWBnFcN60io9W7VpZWjiBo0G6u3HYSLxYB5Wa3bpgh
	pa0GkQ+7d0hpd+wMT41I/07iR03+6hIjLrK6ektF2gXmwWpsdr3IeUCMiMdKi9l8tjgLPZwprMSCE
	94zyecRJ0N2968CzbIsZxEdP/Unik1jKQk9+cvJAAaTmruuA5ADd4C4++YNGSCLnE1Po0N3Ht2E+S
	yXiJ2MoQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhWoB-0000000EHn3-00YO;
	Tue, 05 Mar 2024 15:34:23 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhWo8-0000000EHmU-0Lm6
	for barebox@lists.infradead.org;
	Tue, 05 Mar 2024 15:34:21 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rhWo5-00033J-7E; Tue, 05 Mar 2024 16:34:17 +0100
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rhWo4-004ZwW-R8; Tue, 05 Mar 2024 16:34:16 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1rhWo4-003QPs-2T;
	Tue, 05 Mar 2024 16:34:16 +0100
Date: Tue, 5 Mar 2024 16:34:16 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <Zec7eBCt7-CCE89N@pengutronix.de>
References: <20240304185558.3483252-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240304185558.3483252-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240305_073420_152075_27362A25 
X-CRM114-Status: GOOD (  23.44  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] fixup! of: fdt: implement fdt_machine_is_compatible
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, Mar 04, 2024 at 07:55:58PM +0100, Ahmad Fatoum wrote:
> of: fdt: have fdt_machine_is_compatible() return a score
> 
> fdt_machine_is_compatible() currently returns false on mismatch and
> true on match. of_machine_is_compatible(), that it's meant to partially
> replace, returns a positive score value, so multiple compatible machines
> can be compared. Do likewise for fdt_machine_is_compatible.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/of/fdt.c | 18 +++++++++---------
>  include/of.h     |  2 +-
>  2 files changed, 10 insertions(+), 10 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/of/fdt.c b/drivers/of/fdt.c
> index 23b7b90f8e54..2f3b0763999d 100644
> --- a/drivers/of/fdt.c
> +++ b/drivers/of/fdt.c
> @@ -690,7 +690,7 @@ static int fdt_string_is_compatible(const char *haystack, int haystack_len,
>  	return 0;
>  }
>  
> -bool fdt_machine_is_compatible(const struct fdt_header *fdt, size_t fdt_size, const char *compat)
> +int fdt_machine_is_compatible(const struct fdt_header *fdt, size_t fdt_size, const char *compat)
>  {
>  	uint32_t tag;
>  	const struct fdt_property *fdt_prop;
> @@ -705,7 +705,7 @@ bool fdt_machine_is_compatible(const struct fdt_header *fdt, size_t fdt_size, co
>  
>  	ret = fdt_parse_header(fdt, fdt_size, &f);
>  	if (ret < 0)
> -		return false;
> +		return 0;
>  
>  	dt_struct = f.off_dt_struct;
>  	dt_strings = (const void *)fdt + f.off_dt_strings;
> @@ -713,11 +713,11 @@ bool fdt_machine_is_compatible(const struct fdt_header *fdt, size_t fdt_size, co
>  	while (1) {
>  		const __be32 *tagp = (const void *)fdt + dt_struct;
>  		if (!dt_ptr_ok(fdt, tagp))
> -			return false;
> +			return 0;
>  
>  		tag = be32_to_cpu(*tagp);
>  		if (tag != FDT_NOP && tag != expect)
> -			return false;
> +			return 0;
>  
>  		switch (tag) {
>  		case FDT_BEGIN_NODE:
> @@ -725,7 +725,7 @@ bool fdt_machine_is_compatible(const struct fdt_header *fdt, size_t fdt_size, co
>  
>  			/* The root node must have an empty name */
>  			if (fnh->name[0] != '\0')
> -				return false;
> +				return 0;
>  
>  			dt_struct = dt_struct_advance(&f, dt_struct,
>  					sizeof(struct fdt_node_header) + 1);
> @@ -739,7 +739,7 @@ bool fdt_machine_is_compatible(const struct fdt_header *fdt, size_t fdt_size, co
>  
>  			name = dt_string(&f, dt_strings, fdt32_to_cpu(fdt_prop->nameoff));
>  			if (!name)
> -				return false;
> +				return 0;
>  
>  			if (strcmp(name, "compatible")) {
>  				dt_struct = dt_struct_advance(&f, dt_struct,
> @@ -754,12 +754,12 @@ bool fdt_machine_is_compatible(const struct fdt_header *fdt, size_t fdt_size, co
>  			break;
>  
>  		default:
> -			return false;
> +			return 0;
>  		}
>  
>  		if (!dt_struct)
> -			return false;
> +			return 0;
>  	}
>  
> -	return false;
> +	return 0;
>  }
> diff --git a/include/of.h b/include/of.h
> index 7ee75728d0ad..9cd2c9aee2a4 100644
> --- a/include/of.h
> +++ b/include/of.h
> @@ -64,7 +64,7 @@ void of_clean_reserve_map(void);
>  void fdt_add_reserve_map(void *fdt);
>  void fdt_print_reserve_map(const void *fdt);
>  
> -bool fdt_machine_is_compatible(const struct fdt_header *fdt, size_t fdt_size, const char *compat);
> +int fdt_machine_is_compatible(const struct fdt_header *fdt, size_t fdt_size, const char *compat);
>  
>  
>  struct device;
> -- 
> 2.39.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


