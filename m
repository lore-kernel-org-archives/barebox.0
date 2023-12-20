Delivery-date: Wed, 20 Dec 2023 08:58:32 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rFrTM-005omM-0i
	for lore@lore.pengutronix.de;
	Wed, 20 Dec 2023 08:58:32 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rFrTL-00053U-L9
	for lore@pengutronix.de; Wed, 20 Dec 2023 08:58:32 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-ID:
	References:In-Reply-To:Subject:To:From:Date:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gX/OGtXdyuByAx1gIZfLEg/m65szqa/Ma1TdN0oO8wY=; b=Pd6NYYI+2s9gAQJRbkCyULursa
	3FF0lGCwPeG5ZEgWZYDXel4CD+hXO9h8p2UBq++xebaYUbQLe4RWgXbhvWb5IQ0me7s2ek3LVZzfi
	uhXur0wB6EGfTVBbXOB+Hz/QWpDdIuRPyYVW9FGYzv/vJB0JG+M4muRprXstirmOMCx2zqu9OFmwp
	tDTTQOuHRXf7clZrkSftI1LkYRy22U/hGzMipyXRmQrlM9irmm3BSjh/0R2aDJlrAOW6reanJzF2z
	uPg4Om8xP0eQJ+p0AenPpBMoL+0G4BD/BavtG14ep7IGmD3Lt213ypxz9rJ8GAqIOGCb+wwRVfpnr
	nL52HBlw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rFrRw-00GUGU-09;
	Wed, 20 Dec 2023 07:57:04 +0000
Received: from smtp15.bhosted.nl ([2a02:9e0:8000::26])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rFrRs-00GUFX-2R
	for barebox@lists.infradead.org;
	Wed, 20 Dec 2023 07:57:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=protonic.nl; s=202111;
	h=message-id:references:in-reply-to:reply-to:subject:to:from:date:
	 content-transfer-encoding:content-type:mime-version:from;
	bh=gX/OGtXdyuByAx1gIZfLEg/m65szqa/Ma1TdN0oO8wY=;
	b=Q0IpbVmQfz/SX4RcAtU9jPKX0bUu7GYWv88yc0ZPCynCkBVpsQEJ2okrJ8XQRm7BV5QBS1ZpsUMPX
	 y4DaIwo5TNta4x709uVfj2IgjYRhVB6n+H2D6WQ0YSDAe+BMRiJKeVCikzyGP+g+MVjAXDRpac4DX6
	 EH0z86jjZMqgcwN5uk//CYQNuGrvkYPEzRTn533z/Ai4VeOu8xjkVpgxBdsekWJwt3bMzzRCM4quhU
	 Kns8dlHAA1XhbjJAGUTamnOdD95tEVd41fqPSS9jkZDJ5/ltT64p2gXjxh6wjLYRtxF7M7Mj9Zzqbq
	 J5IBo/uIYHFyL5bP1PNcni/QPWULyuA==
X-MSG-ID: 5704df2b-9f0d-11ee-8d39-00505681446f
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
Date: Wed, 20 Dec 2023 08:56:53 +0100
From: Robin van der Gracht <robin@protonic.nl>
To: barebox@lists.infradead.org
Organization: Protonic Holland
Mail-Reply-To: robin@protonic.nl
In-Reply-To: <20231219141435.163699-1-robin@protonic.nl>
References: <20231219141435.163699-1-robin@protonic.nl>
Message-ID: <bba9ad2f824b45f4e49db03b11b39f70@protonic.nl>
X-Sender: robin@protonic.nl
User-Agent: Roundcube Webmail/1.3.1 
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231219_235701_213634_70FEB967 
X-CRM114-Status: GOOD (  11.40  )
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
Reply-To: robin@protonic.nl
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] nvmem: regmap: Fix nvmem size
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

After applying this patch the last register is writable, but still not 
readable.

The size is now correct:
barebox:/ ls -l /dev/stm32-bsec
crw-------            384 /dev/stm32-bsec

This now works:
mw -l -d /dev/stm32-bsec 0x0000017c+4 0x12345678

This still doesn't:
barebox:/ md -l -s /dev/stm32-bsec 0x0000017c+4
read: Invalid argument

On 2023-12-19 15:14, Robin van der Gracht wrote:
> We should add 1 to the max_register index since counting is zero based.
> 
> i.e. the stm32mp151 bsec has registers 0 - 95 with reg_stride 4.
> Size should be (95 + 1) * 4 = 384 bytes otherwise we can't access bsec
> register 95 (last one).
> 
> Signed-off-by: Robin van der Gracht <robin@protonic.nl>
> ---
>  drivers/nvmem/regmap.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/nvmem/regmap.c b/drivers/nvmem/regmap.c
> index fa5405d7a8..ffc96a310f 100644
> --- a/drivers/nvmem/regmap.c
> +++ b/drivers/nvmem/regmap.c
> @@ -78,7 +78,7 @@ nvmem_regmap_register_with_pp(struct regmap *map,
> const char *name,
>  	config.priv = map;
>  	config.stride = 1;
>  	config.word_size = 1;
> -	config.size = regmap_get_max_register(map) * 
> regmap_get_reg_stride(map);
> +	config.size = (regmap_get_max_register(map) + 1) * 
> regmap_get_reg_stride(map);
>  	config.cell_post_process = cell_post_process;
>  	config.reg_write = nvmem_regmap_write;
>  	config.reg_read = nvmem_regmap_read;


