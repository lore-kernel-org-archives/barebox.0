Delivery-date: Tue, 02 Jan 2024 11:33:09 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rKc57-000ScI-2u
	for lore@lore.pengutronix.de;
	Tue, 02 Jan 2024 11:33:09 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rKc56-0007qX-RE
	for lore@pengutronix.de; Tue, 02 Jan 2024 11:33:09 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=nOCa/fEK66rfLWIYEuai2UFnDgwnlV5w+Bh/nNCKbf4=; b=ln1ZrX/HEb/i6o/g5p2sL0zKEp
	boa0AJ4Rvp1Z1KAcwvpqyKdF+YX+4kA+x872EZGmIirS0rezAR2W3cT3NpYC6ARJsvfYbj+YW9sdj
	oiVbnPs8kg399JD9BPQVOda6Ch5/gUn1N4o+0y15f1R12/vnWGNNZoNSmJM/6+fdn2EsKWpUOk1GP
	Oi6Rez6kzFIHUiGkXKrJRwDna4ToKk2v/wi0JK5qTCyQ2kmXYt1avJxerhRsEBoaiGo9MZodrpe3z
	CpajVH5AV56ZfRi8y1akDU35qanSU6wJHonEM4x3yQc8Y9EZ8wAnoTBkGDbE4lDNHwVqrqwF6smbG
	xZKvY/aQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rKc3p-007bAf-2l;
	Tue, 02 Jan 2024 10:31:49 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rKc3m-007b9m-0Z
	for barebox@lists.infradead.org;
	Tue, 02 Jan 2024 10:31:47 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rKc3k-0007aI-5o; Tue, 02 Jan 2024 11:31:44 +0100
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rKc3i-0039xm-Iy; Tue, 02 Jan 2024 11:31:43 +0100
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rKc3j-009tr0-JT; Tue, 02 Jan 2024 11:31:43 +0100
Date: Tue, 2 Jan 2024 11:31:43 +0100
To: Robin van der Gracht <robin@protonic.nl>
Cc: barebox@lists.infradead.org, michiel.schelfhout@protonic.nl
Message-ID: <20240102103143.GZ1318922@pengutronix.de>
References: <20231220082908.360302-1-robin@protonic.nl>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231220082908.360302-1-robin@protonic.nl>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240102_023146_211708_8814C708 
X-CRM114-Status: GOOD (  23.54  )
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
X-Spam-Status: No, score=-6.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2] nvmem: regmap: Fix nvmem size
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Wed, Dec 20, 2023 at 09:29:08AM +0100, Robin van der Gracht wrote:
> We should add 1 to the max_register index since counting is zero based.
> 
> i.e. the stm32mp151 bsec has registers 0 - 95 with reg_stride 4.
> Size should be (95 + 1) * 4 = 384 bytes otherwise we can't access bsec
> register 95 (last one).
> 
> regmap_size_bytes() does take the +1 into account so we can use that.
> 
> Signed-off-by: Robin van der Gracht <robin@protonic.nl>
> ---
> 
> v2: Fix the size calculation in nvmem_regmap_read() as well.
> 
>  drivers/nvmem/regmap.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/nvmem/regmap.c b/drivers/nvmem/regmap.c
> index fa5405d7a8..b923c5787d 100644
> --- a/drivers/nvmem/regmap.c
> +++ b/drivers/nvmem/regmap.c
> @@ -38,7 +38,7 @@ static int nvmem_regmap_read(void *ctx, unsigned offset, void *buf, size_t bytes
>  	skip_bytes = offset & (stride - 1);
>  	rbytes = roundup(bytes + skip_bytes, stride);
>  
> -	if (roffset + rbytes > stride * regmap_get_max_register(map))
> +	if (roffset + rbytes > regmap_size_bytes(map) * stride)
>  		return -EINVAL;
>  
>  	for (i = roffset; i < roffset + rbytes; i += stride) {
> @@ -78,7 +78,7 @@ nvmem_regmap_register_with_pp(struct regmap *map, const char *name,
>  	config.priv = map;
>  	config.stride = 1;
>  	config.word_size = 1;
> -	config.size = regmap_get_max_register(map) * regmap_get_reg_stride(map);
> +	config.size = regmap_size_bytes(map) * regmap_get_reg_stride(map);
>  	config.cell_post_process = cell_post_process;
>  	config.reg_write = nvmem_regmap_write;
>  	config.reg_read = nvmem_regmap_read;
> -- 
> 2.40.1
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


