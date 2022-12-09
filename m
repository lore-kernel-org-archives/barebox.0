Delivery-date: Fri, 09 Dec 2022 08:15:54 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p3Xbt-00FmSR-DE
	for lore@lore.pengutronix.de; Fri, 09 Dec 2022 08:15:53 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p3Xbt-0006ZI-2g
	for lore@pengutronix.de; Fri, 09 Dec 2022 08:15:53 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=mS1rI++prMpN44tp2Q4c+y4UFAzfl/U22B7YIjic4F8=; b=VWHSUCPTvnkgZuRRMklSVN4tHz
	pkSrLHrcc3xE0W9opvmcVv5EBpgrQTcUReyjevuhnD6M4qoTqK1IN981L5tOX/L9tfEBc+aoJvwAq
	X6gf/SX0gHSVWGsWAqM5Rtsfm5WLE1B2is6zJwTWFewW6lId4hU6gbbvudjzrm6QlL17qApdq/64e
	hjM59HooDQywGTxotPmRsBlRpOE9ru9O9FbHZ7YRzXQB3H1wvA7C6OU+tfr71RkUuGebKCjOvkM0Q
	WyjqeS+h7IjO63sVusPowIesjKduwidzXAwBjEpx8yXsnD4m+AFcszSyTm+HBtgapEWA3vQQhdNzk
	B862shKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p3Xai-004uSD-DE; Fri, 09 Dec 2022 07:14:40 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p3Xae-004uRH-Bq
	for barebox@lists.infradead.org; Fri, 09 Dec 2022 07:14:37 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1p3Xad-0006CT-0P; Fri, 09 Dec 2022 08:14:35 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1p3Xac-0003Ce-P9; Fri, 09 Dec 2022 08:14:34 +0100
Date: Fri, 9 Dec 2022 08:14:34 +0100
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20221209071434.GG29728@pengutronix.de>
References: <20221207220924.148327-1-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221207220924.148327-1-l.stach@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221208_231436_418627_2E2C822A 
X-CRM114-Status: GOOD (  17.84  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/4] ARM: imx8m: allow ddr_get_firmware to be called from
 other units
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Dec 07, 2022 at 11:09:21PM +0100, Lucas Stach wrote:
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
>  include/soc/imx8m/ddr.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied to master, thanks

Sascha

> 
> diff --git a/include/soc/imx8m/ddr.h b/include/soc/imx8m/ddr.h
> index 2149ae432554..0b3c4d47e39d 100644
> --- a/include/soc/imx8m/ddr.h
> +++ b/include/soc/imx8m/ddr.h
> @@ -389,7 +389,7 @@ extern struct dram_timing_info dram_timing;
>  void ddr_get_firmware_lpddr4(void);
>  void ddr_get_firmware_ddr(void);
>  
> -static void ddr_get_firmware(enum dram_type dram_type)
> +static inline void ddr_get_firmware(enum dram_type dram_type)
>  {
>  	if (dram_type == DRAM_TYPE_LPDDR4)
>  		ddr_get_firmware_lpddr4();
> -- 
> 2.38.1
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


