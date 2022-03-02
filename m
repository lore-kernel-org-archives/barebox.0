Delivery-date: Wed, 02 Mar 2022 14:37:10 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nPPAE-00FWTZ-2J
	for lore@lore.pengutronix.de; Wed, 02 Mar 2022 14:37:10 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nPPAC-0000NH-LM
	for lore@pengutronix.de; Wed, 02 Mar 2022 14:37:09 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Xma4R3qOkRjVPwqisBl4++yL8dCS9Ju5ve1hxios6C4=; b=og4w76wsOYmT1UmbebbGhDpoeV
	L3Dn8DyKPzfxL189cnqjg/HWP1tKKxQr1UkdN+xP/bo8/2KNWOLeGciNB24pc9XqdXc9YokLvaXou
	sHFbG+JZKo+WfX9KpyrpFwaFpxfEaVGinH6KbuyohMh/bTIK6eWEQqRrTkk5rM8qxVS07DxQ+6vl+
	EOvat3ylJnmS2lCVAV0uHU2FE1XiDGl6Xc1ku7hKPyHXZbsB/miIjdz1J0f9zRfoABLWrROfbQSA1
	MZsQCpTVExGPfHynIDgMpDIAEG+Qw/s5j79/Wj6Lclv65oRiP4PYLR9hjKXIQGe6x6QTUO+28AGfH
	6+Cp6vwQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nPP91-002pwt-Bk; Wed, 02 Mar 2022 13:35:55 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nPP8v-002pvV-8J
 for barebox@lists.infradead.org; Wed, 02 Mar 2022 13:35:50 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nPP8u-00006F-1e; Wed, 02 Mar 2022 14:35:48 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nPP8r-0006Tu-C1; Wed, 02 Mar 2022 14:35:45 +0100
Date: Wed, 2 Mar 2022 14:35:45 +0100
To: Joacim Zetterling <joacim.zetterling@westermo.com>
Cc: barebox@lists.infradead.org, a.fatoum@pengutronix.de
Message-ID: <20220302133545.GX19585@pengutronix.de>
References: <20220301132254.343387-1-joacim.zetterling@westermo.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220301132254.343387-1-joacim.zetterling@westermo.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 14:35:36 up 81 days, 22:21, 88 users,  load average: 0.16, 0.26, 0.24
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220302_053549_342344_87DE44B0 
X-CRM114-Status: GOOD (  25.12  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2] driver: mtd: spi-nor: Add Micron MT25QU256A 1V8 SPI
 flash
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Mar 01, 2022 at 02:22:54PM +0100, Joacim Zetterling wrote:
> Add the Micron MT25QU256A 1V8 SPI flash to the mtd/spi-nor driver.
> The flash has the same name as the 3V variant but as an other
> manufacturer ID (20 bb 19 instead of 20 ba 19).
> 
> This SPI/QSPI flash is used on i.e. NXP IMX8MN-EVK board.
> 
> Signed-off-by: Joacim Zetterling <joacim.zetterling@westermo.com>
> ---
> 
> Changes v2:
>   - Renamed the device name n25q256a to mt25qu256a

Applied, thanks

Sascha

>   
>  drivers/mtd/spi-nor/spi-nor.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
> index b3af3c4263b9..cf532b13999b 100644
> --- a/drivers/mtd/spi-nor/spi-nor.c
> +++ b/drivers/mtd/spi-nor/spi-nor.c
> @@ -727,6 +727,7 @@ static const struct spi_device_id spi_nor_ids[] = {
>  	{ "n25q128a11",  INFO(0x20bb18, 0, 64 * 1024,  256, SPI_NOR_QUAD_READ) },
>  	{ "n25q128a13",  INFO(0x20ba18, 0, 64 * 1024,  256, SPI_NOR_QUAD_READ) },
>  	{ "n25q256a",    INFO(0x20ba19, 0, 64 * 1024,  512, SECT_4K | SPI_NOR_QUAD_READ) },
> +	{ "mt25qu256a",  INFO(0x20bb19, 0, 64 * 1024,  512, SECT_4K | SPI_NOR_QUAD_READ) },
>  	{ "n25q512a",    INFO(0x20bb20, 0, 64 * 1024, 1024, SECT_4K | USE_FSR | SPI_NOR_QUAD_READ) },
>  	{ "n25q512ax3",  INFO(0x20ba20, 0, 64 * 1024, 1024, SECT_4K | USE_FSR | SPI_NOR_QUAD_READ) },
>  	{ "n25q00",      INFO(0x20ba21, 0, 64 * 1024, 2048, SECT_4K | USE_FSR | SPI_NOR_QUAD_READ) },
> -- 
> 2.25.1
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

