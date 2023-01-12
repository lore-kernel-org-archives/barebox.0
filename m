Delivery-date: Thu, 12 Jan 2023 15:49:23 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFytQ-009rbE-Fe
	for lore@lore.pengutronix.de; Thu, 12 Jan 2023 15:49:23 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFytO-00027y-Iv
	for lore@pengutronix.de; Thu, 12 Jan 2023 15:49:23 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=X8rWXlMkmFypbcSVyQo4fpnqqrKxgk8hB/rUEjbCVfI=; b=Ezj1Is6dWP7dZys82+nRlgRYvb
	l0W9SkyiEKHsJvFmVWKyDTY/vpUu5kU4Hm2c0Zr0UZHwvTk+REJEeJovZ9Zt68C+f8LM8zGPik4X8
	cdND9wzvD0hHSBDbdOB/f+IW1myxRpoEWJdXUwCepDygGZlGV/VDOrLRLFnyaSo2ZbRFssT9lM7/s
	EMTNtXVj0jdiWXjLb+CPHRP4FgepLtNZ28e9n9Bzu5rnWXKoCiK5hVS+NShMNrh8CYnQeBns2pPDL
	+P4YAd96d/OCH5QAbSytlF1AwYexPW8hbnkvOF8DUW1/eTTEF77tFf1AYp3HbnAyp7+LvwoSL2CfT
	nF9bnPXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFyrv-00FSBs-QG; Thu, 12 Jan 2023 14:47:51 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFyrp-00FSAj-Sr
	for barebox@lists.infradead.org; Thu, 12 Jan 2023 14:47:47 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pFyro-0001uv-Bp; Thu, 12 Jan 2023 15:47:44 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pFyro-0002iP-3d; Thu, 12 Jan 2023 15:47:44 +0100
Date: Thu, 12 Jan 2023 15:47:44 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230112144744.GT24755@pengutronix.de>
References: <20230111173921.1684438-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230111173921.1684438-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230112_064745_947989_6501E20C 
X-CRM114-Status: GOOD (  21.07  )
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
Subject: Re: [PATCH 1/2] mci: atmel_mci: fix off-by-1000 in poll timeout
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Jan 11, 2023 at 06:39:20PM +0100, Ahmad Fatoum wrote:
> read_poll_timeout assumes microsecond timeouts, not nanoseconds. One
> second instead of a thousand is still plenty time when polling for a
> MCI controller to change state, so use that.
> 
> Fixes: 4fc0369b1a55 ("mci: atmel_mci: add PBL support")
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/mci/atmel_mci_common.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/mci/atmel_mci_common.c b/drivers/mci/atmel_mci_common.c
> index c8e21933fe51..99e65adb2cf0 100644
> --- a/drivers/mci/atmel_mci_common.c
> +++ b/drivers/mci/atmel_mci_common.c
> @@ -90,8 +90,8 @@ static int atmci_poll_status(struct atmel_mci *host, u32 mask)
>  	u32 stat;
>  	int ret;
>  
> -	ret = read_poll_timeout(atmci_readl, stat, (stat & mask), SECOND, host,
> -				ATMCI_SR);
> +	ret = read_poll_timeout(atmci_readl, stat, (stat & mask), USEC_PER_SEC,
> +				host, ATMCI_SR);
>  	if (ret < 0) {
>  		dev_err(host->hw_dev, "timeout\n");
>  		host->need_reset = true;
> -- 
> 2.30.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


