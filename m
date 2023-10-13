Delivery-date: Fri, 13 Oct 2023 09:30:27 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qrCct-006n7W-LG
	for lore@lore.pengutronix.de; Fri, 13 Oct 2023 09:30:27 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qrCcq-0008Ov-7n
	for lore@pengutronix.de; Fri, 13 Oct 2023 09:30:27 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=PEL9sFnmoVFQAMA98eUhj/jmPrtXoCCGyvS9iCoY8tw=; b=ye22Jm4bwYxMQcYaqUHUPPcG11
	HGFDhfNvCt47GFfkBOraV5YGzzLnc4l2WH+59nJGX7yrWExTwzKEfMpf2a2C2uEpFmahgIxCPSsuj
	y0NZLHsul1voPvKsAm3jD8KJxxO72KJaIGnLXC3M6j2BzqT+mNiYoBcukR83gzqsu4R27YYHja+Ql
	hyP6eF9J31+gXyC8z7Up3PwL8ydmdSBAAWXSlcEVWNEkqp0AK8RMCaqoUi5RNewGjwRUlZg8dH+3m
	30MCYqKZ3vh/zopv71+plztZpJ1Cwr0QkjbKhB4b4DR+Qj8wDb7opKBNaXxVYbRX10nCiQYUIeyfQ
	rmsMdkmQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qrCbZ-002iLL-1h;
	Fri, 13 Oct 2023 07:29:05 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qrCbV-002iJV-2Q
	for barebox@lists.infradead.org;
	Fri, 13 Oct 2023 07:29:03 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qrCbU-00088c-CT; Fri, 13 Oct 2023 09:29:00 +0200
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qrCbU-001LJm-03; Fri, 13 Oct 2023 09:29:00 +0200
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qrCbT-00EEil-U6; Fri, 13 Oct 2023 09:28:59 +0200
Date: Fri, 13 Oct 2023 09:28:59 +0200
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20231013072859.GM3359458@pengutronix.de>
References: <20231010143314.2031253-1-m.felsch@pengutronix.de>
 <20231010143314.2031253-22-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231010143314.2031253-22-m.felsch@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231013_002901_784842_59685220 
X-CRM114-Status: GOOD (  25.72  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 21/26] scripts: imx: add helper to write CSF Blocks
 command
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Tue, Oct 10, 2023 at 04:33:09PM +0200, Marco Felsch wrote:
> The upcoming commit fixes the HAB support for FlexSPI enabled barebox
> images. This commit prepares the source to keep the diff smaller.
> 
> For the upcoming fix we need a 2nd CSF command sequence which is
> basically the same as the first except for the "Blocks = ...." command.
> Therefore we need to handle the blocks command separately which is done
> by this commit. At the moment there is no functional change.
> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> ---
>  scripts/imx/imx.c | 22 ++++++++++++++++++++--
>  1 file changed, 20 insertions(+), 2 deletions(-)
> 
> diff --git a/scripts/imx/imx.c b/scripts/imx/imx.c
> index 933019eba449..acc8424e547d 100644
> --- a/scripts/imx/imx.c
> +++ b/scripts/imx/imx.c
> @@ -296,6 +296,24 @@ static int hab_add_str(struct config_data *data, const char *str)
>  	return 0;
>  }
>  
> +static int hab_add_barebox_blocks(struct config_data *data,
> +				  const char *csf_str,
> +				  const char *flexspi_csf_str)
> +{
> +	int len = strlen(csf_str);
> +
> +	if (data->csf_space < len)
> +		return -ENOMEM;
> +
> +	strcat(data->csf, csf_str);
> +	if (flexspi_csf_str)
> +		strcat(data->flexspi_csf, flexspi_csf_str);

Do we need a space check here as well?

Sascha

> +
> +	data->csf_space -= len;
> +
> +	return 0;
> +}
> +
>  static int do_hab(struct config_data *data, int argc, char *argv[])
>  {
>  	int i, ret;
> @@ -343,7 +361,7 @@ imx8m_get_offset_size(struct config_data *data,
>  
>  static int do_hab_blocks(struct config_data *data, int argc, char *argv[])
>  {
> -	char *str;
> +	char *str, *flexspi_str = NULL;
>  	int ret;
>  	int i;
>  	uint32_t signed_size = data->load_size;
> @@ -378,7 +396,7 @@ static int do_hab_blocks(struct config_data *data, int argc, char *argv[])
>  	if (ret < 0)
>  		return -ENOMEM;
>  
> -	ret = hab_add_str(data, str);
> +	ret = hab_add_barebox_blocks(data, str, flexspi_str);
>  	free(str);
>  	if (ret)
>  		return ret;
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


