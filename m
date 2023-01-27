Delivery-date: Fri, 27 Jan 2023 15:16:32 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pLPWs-003x5s-4c
	for lore@lore.pengutronix.de; Fri, 27 Jan 2023 15:16:32 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pLPWp-00065Q-BW
	for lore@pengutronix.de; Fri, 27 Jan 2023 15:16:31 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ricYQQCksxShk3T0PawuxPgsgUY7vX28eojWoAInQ1Y=; b=A4uWY1BCRHu/Md+wr2wacpEXP9
	wu19gQhjM7gnNOZ3vYmRBBf3A+hjylFtIierHpSbz8v+hyE851KakKHz2bteZGREb72rTl6TeoVqW
	hkBApfgfdlS/tSKshq97bS7QhjIS0kvTbdwl0+bSMFfpqhqgn1mLKf7zt74NvRFwnNkpaArolHZyi
	6t+pN4wgGR1iADONCu2VLLx9hA0PEl4t93P+UXDQXdXCyIp30P/lfqRNmSnLG4+aYioV97xcjxwRJ
	0iOy/WNkPAazPjIvALlgWkxJeN0woLvkyKf+Ui09I1CGV6w7ef+8RhNuMhj7Mi+1Rhh+tQq1Kos6j
	xIPjuroA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pLPVI-00FEct-Nr; Fri, 27 Jan 2023 14:14:56 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pLPVC-00FEaQ-6b
	for barebox@lists.infradead.org; Fri, 27 Jan 2023 14:14:52 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pLPV7-0005dL-6t; Fri, 27 Jan 2023 15:14:45 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pLPV6-0000mY-VZ; Fri, 27 Jan 2023 15:14:44 +0100
Date: Fri, 27 Jan 2023 15:14:44 +0100
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230127141444.GF23347@pengutronix.de>
References: <20230111182157.1702865-1-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230111182157.1702865-1-l.stach@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230127_061450_282545_9FF5072E 
X-CRM114-Status: GOOD (  24.78  )
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
Subject: Re: [PATCH 1/3] nvmem: ocotp: add support for second MAC address on
 i.MX8MP
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Jan 11, 2023 at 07:21:55PM +0100, Lucas Stach wrote:
> i.MX8MP has the same quirk as the i.MX6UL: the MAC address for the
> second ethernet interface is stored at an unaligned location and thus
> needs to be handled by skipping the first 2 bytes from the OCOTP
> register.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
>  drivers/nvmem/ocotp.c | 8 +++++---
>  1 file changed, 5 insertions(+), 3 deletions(-)

Applied 1/3 and 3/3 for now.

Sascha

> 
> diff --git a/drivers/nvmem/ocotp.c b/drivers/nvmem/ocotp.c
> index 7cc2b3b3db58..9d4d6e91db74 100644
> --- a/drivers/nvmem/ocotp.c
> +++ b/drivers/nvmem/ocotp.c
> @@ -88,6 +88,7 @@
>  #define MAC_OFFSET_0			(0x22 * 4)
>  #define IMX6UL_MAC_OFFSET_1		(0x23 * 4)
>  #define MAC_OFFSET_1			(0x24 * 4)
> +#define IMX8MP_MAC_OFFSET_1		(0x25 * 4)
>  #define MAX_MAC_OFFSETS			2
>  #define MAC_BYTES			8
>  #define UNIQUE_ID_NUM			2
> @@ -598,7 +599,7 @@ static int imx_ocotp_read_mac(const struct imx_ocotp_data *data,
>  	if (ret < 0)
>  		return ret;
>  
> -	if (offset != IMX6UL_MAC_OFFSET_1)
> +	if (offset != IMX6UL_MAC_OFFSET_1 && offset != IMX8MP_MAC_OFFSET_1)
>  		data->format_mac(mac, buf, OCOTP_HW_TO_MAC);
>  	else
>  		data->format_mac(mac, buf + 2, OCOTP_HW_TO_MAC);
> @@ -624,7 +625,8 @@ static int imx_ocotp_set_mac(struct param_d *param, void *priv)
>  	if (ret < 0)
>  		return ret;
>  
> -	if (ethaddr->offset != IMX6UL_MAC_OFFSET_1)
> +	if (ethaddr->offset != IMX6UL_MAC_OFFSET_1 &&
> +	    ethaddr->offset != IMX8MP_MAC_OFFSET_1)
>  		ethaddr->data->format_mac(buf, ethaddr->value,
>  					  OCOTP_MAC_TO_HW);
>  	else
> @@ -898,7 +900,7 @@ static struct imx_ocotp_data imx8mp_ocotp_data = {
>  	.num_regs = 1024,
>  	.addr_to_offset = imx6sl_addr_to_offset,
>  	.mac_offsets_num = 2,
> -	.mac_offsets = { 0x90, 0x96 },
> +	.mac_offsets = { 0x90, 0x94 },
>  	.format_mac = imx_ocotp_format_mac,
>  	.feat = &imx8mp_featctrl_data,
>  };
> -- 
> 2.39.0
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


