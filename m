Delivery-date: Wed, 06 Nov 2024 15:14:23 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t8gne-005YNk-1t
	for lore@lore.pengutronix.de;
	Wed, 06 Nov 2024 15:14:23 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t8gnf-0004PU-1r
	for lore@pengutronix.de; Wed, 06 Nov 2024 15:14:23 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=O5qB0h64icQl5q548WBf5XagLpjT4rPYgXjMHOUhK6I=; b=cfdC7/8c6aWGl+7lY+wWlkzHvz
	w8lfTYeuvuahco/u7EmgZQAbNPfVsfFPjWVLSt4GQcNs7b8sipdb2tDwPNpOXMSTa9tsuVYjfb6RG
	Z99K4XdD0lMt6n2W8aRCdUawb+tjcerZej2bSnf+bwh58Oi+kdD2wal5cLskCo8DZryLfqFTjhjly
	honzXdJftSd1/6m1EfKyTxGwAoKhS1MYCh4Vh+L43K6J7B5Z3lDPzazHSoIFLyUdnT9Fb9SkVxkT3
	cr7KI7vnjSGG0+ypIiR8ChVAHu5YeXz9lFXj10y6IktWTbV2HcEKe/VG8rSkhDiCjgN00RuM4vaYf
	I3PQbfFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t8gnC-00000003Yab-22Ha;
	Wed, 06 Nov 2024 14:13:54 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t8gZv-00000003WTD-03L9
	for barebox@lists.infradead.org;
	Wed, 06 Nov 2024 14:00:12 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[IPV6:::1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t8gZt-0002lg-SI; Wed, 06 Nov 2024 15:00:09 +0100
Message-ID: <c6803386-83da-47cc-bf1f-235ce6e3503e@pengutronix.de>
Date: Wed, 6 Nov 2024 15:00:09 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sebastien Bourdelin <sebastien.bourdelin@gmail.com>,
 barebox@lists.infradead.org
Cc: oss-contrib@rtone.fr, Sebastien Bourdelin <sebastien.bourdelin@rtone.fr>
References: <20241031092721.763280-1-sebastien.bourdelin@gmail.com>
 <20241031092721.763280-4-sebastien.bourdelin@gmail.com>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20241031092721.763280-4-sebastien.bourdelin@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241106_060011_083748_B0939AAF 
X-CRM114-Status: GOOD (  15.27  )
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
Subject: Re: [PATCH 3/4] mci: sdhci: use the busy_timeout value in the
 sdhci_wait_idle functions
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 31.10.24 10:27, Sebastien Bourdelin wrote:
> From: Sebastien Bourdelin <sebastien.bourdelin@rtone.fr>
> 
> The busy_timeout value is used by the sdhci_wait_idle and
> sdhci_wait_idle_data functions to define the timeout to wait on when
> send a command to the controller.
> 
> The default value remains unchanged and is set to 10ms.
> 
> Signed-off-by: Sebastien Bourdelin <sebastien.bourdelin@rtone.fr>

With below point addressed:

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> diff --git a/drivers/mci/sdhci.h b/drivers/mci/sdhci.h
> index 5de85239b1..757840acc7 100644
> --- a/drivers/mci/sdhci.h
> +++ b/drivers/mci/sdhci.h
> @@ -200,6 +200,8 @@
>  #define SDHCI_MAX_DIV_SPEC_200	256
>  #define SDHCI_MAX_DIV_SPEC_300	2046
>  
> +#define SDHCI_CMD_DEFAULT_BUSY_TIMEOUT 10

Please rename to SDHCI_CMD_DEFAULT_BUSY_TIMEOUT_MS

> +
>  struct sdhci {
>  	u32 (*read32)(struct sdhci *host, int reg);
>  	u16 (*read16)(struct sdhci *host, int reg);


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


