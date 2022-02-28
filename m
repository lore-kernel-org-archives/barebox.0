Delivery-date: Mon, 28 Feb 2022 18:15:19 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nOjcF-00DSvc-Rw
	for lore@lore.pengutronix.de; Mon, 28 Feb 2022 18:15:19 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nOjcE-00009r-L4
	for lore@pengutronix.de; Mon, 28 Feb 2022 18:15:19 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uJRXp8FzS8wGADopwGHdXwWj76kUagDHYCJrU91fpd0=; b=AX2nIj4Zpy8040
	l4+5/g6ow9Ih7gJvrkF5qwPVUU1lqVokD//RHS6bCQYh0qRSZrEfujM0ot4wJpPp+RbQFfTtA+4gz
	mqGmeCtYoJc1TfYrYhnHs4Adyf264y9ECQHquvg9KRC+MthRV6KN4/lxPXML7eQzhx1x/i3xJk42k
	/y5dSTHpme9ZYpACq6X+8llHljAPeWsd6soWymchhzB2cUbpnWaMtogamkHYYfJEb5UkZDYIHogTv
	esyJSmzSHMRCM0DzSsZmKyF1TeLeTHEj0uGT0daloky2OyQ2z5wP5OgIKTNDuzAmNTVoUcPzljXIR
	jbUX9GhsjftMGOyptGDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nOjb1-00DV3J-UX; Mon, 28 Feb 2022 17:14:04 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nOjax-00DV2g-Li
 for barebox@lists.infradead.org; Mon, 28 Feb 2022 17:14:01 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[127.0.0.1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1nOjaw-0008TJ-Be; Mon, 28 Feb 2022 18:13:58 +0100
Message-ID: <7a96c7fa-5d63-e7fb-8aaa-913fbf18ef1c@pengutronix.de>
Date: Mon, 28 Feb 2022 18:13:57 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.1
Content-Language: en-US
To: Joacim Zetterling <joacim.zetterling@westermo.com>,
 barebox@lists.infradead.org
References: <20220228170230.248210-1-joacim.zetterling@westermo.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20220228170230.248210-1-joacim.zetterling@westermo.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220228_091359_744299_8A23561B 
X-CRM114-Status: GOOD (  19.96  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] driver: mtd: spi-nor: Add Micron N25Q256 1V8 SPI flash
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 28.02.22 18:02, Joacim Zetterling wrote:
> Add the Micron N25Q256 1V8 SPI flash to the mtd/spi-nor driver.
> The flash has the same name as the 3V variant but as an other
> manufacturer ID (20 bb 19 instead of 20 ba 19).
> 
> This SPI/QSPI flash is used on i.e. NXP IMX8MN-EVK board.
> 
> Signed-off-by: Joacim Zetterling <joacim.zetterling@westermo.com>

With below change addressed, 
Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

(You can collect your patches into one series btw).

> ---
>  drivers/mtd/spi-nor/spi-nor.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
> index b3af3c4263b9..add6419df642 100644
> --- a/drivers/mtd/spi-nor/spi-nor.c
> +++ b/drivers/mtd/spi-nor/spi-nor.c
> @@ -727,6 +727,7 @@ static const struct spi_device_id spi_nor_ids[] = {
>  	{ "n25q128a11",  INFO(0x20bb18, 0, 64 * 1024,  256, SPI_NOR_QUAD_READ) },
>  	{ "n25q128a13",  INFO(0x20ba18, 0, 64 * 1024,  256, SPI_NOR_QUAD_READ) },
>  	{ "n25q256a",    INFO(0x20ba19, 0, 64 * 1024,  512, SECT_4K | SPI_NOR_QUAD_READ) },
> +	{ "n25q256a",    INFO(0x20bb19, 0, 64 * 1024,  512, SECT_4K | SPI_NOR_QUAD_READ) },

Could you rename this to mt25qu256a like Linux? Avoids the duplicate name
and makes it easier to grep for support.

>  	{ "n25q512a",    INFO(0x20bb20, 0, 64 * 1024, 1024, SECT_4K | USE_FSR | SPI_NOR_QUAD_READ) },
>  	{ "n25q512ax3",  INFO(0x20ba20, 0, 64 * 1024, 1024, SECT_4K | USE_FSR | SPI_NOR_QUAD_READ) },
>  	{ "n25q00",      INFO(0x20ba21, 0, 64 * 1024, 2048, SECT_4K | USE_FSR | SPI_NOR_QUAD_READ) },


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

