Delivery-date: Wed, 10 Jan 2024 15:35:16 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rNZfo-00Bj5x-0L
	for lore@lore.pengutronix.de;
	Wed, 10 Jan 2024 15:35:16 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rNZfn-0002od-Fk
	for lore@pengutronix.de; Wed, 10 Jan 2024 15:35:16 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qpIS4YuHUfDaKIJSdPs/ZqNKEcP7vvi8e6dMVapa0y8=; b=ZUX8LPHVJauiSzXL5gfC5hhGIe
	KBeD7vepFSFegQ/jn2wQ8iW4VkyH8KeD3PS+sawus/sNRrXaU7uE6q2yzyd8unt4fMeOgGBft1Lre
	4nX9fmVN5LwP7u53/mnmRNS36avg6IGaoJmiFe5Iw2qMET8Dm8yiQ0cZHifzCDkt9iJ8M0Lz/xOKQ
	RYd0KoRc4HjDSc2b48zb1GogrCVL5wD/mq+Kad02j64URyIaPVF6MjHNWPWZrQRU4fSMTadZ79017
	bT0RacbU7gjRm+O6GSHZlam/83jPdO4R3fAOmy/2s+EHTzUrXBnUwhM97wuzBzzJCfOBfFRpZjbsB
	K1NOeFiw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rNZeg-00CLqE-0G;
	Wed, 10 Jan 2024 14:34:06 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rNZec-00CLp0-35
	for barebox@lists.infradead.org;
	Wed, 10 Jan 2024 14:34:04 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rNZeb-0002ao-2g; Wed, 10 Jan 2024 15:34:01 +0100
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rNZea-001iry-MJ; Wed, 10 Jan 2024 15:34:00 +0100
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rNZea-00BDua-JX; Wed, 10 Jan 2024 15:34:00 +0100
Date: Wed, 10 Jan 2024 15:34:00 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20240110143400.GR1318922@pengutronix.de>
References: <20240110091538.3130283-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240110091538.3130283-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240110_063403_001512_1D564D97 
X-CRM114-Status: GOOD (  28.02  )
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
X-Spam-Status: No, score=-6.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] fixup! pblimage: pblimage: Add LS1028a support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Wed, Jan 10, 2024 at 10:15:38AM +0100, Ahmad Fatoum wrote:
> soc_index is not only used for comparisons, but also as index into the
> socs[] array. However, the array starts with SOC_TYPE_LS1046A and the
> enum with SOC_TYPE_INVALID leading to socs[SOC_TYPE_LS1046A].soc
> == SOC_TYPE_LS1028A and socs[SOC_TYPE_LS1028A] to overflow the array.
> 
> This broke LS1046A boot and LS1028A seems to have only worked by chance,
> because the memory after socs[] happened to be zeroed.
> 
> Fix this by reordering the enum and while at it remove the redundancy in
> having both the index and the soc member be the same value.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  scripts/pblimage.c | 14 ++++++--------
>  1 file changed, 6 insertions(+), 8 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/scripts/pblimage.c b/scripts/pblimage.c
> index 8cb473d5bcf2..ef09b0f96084 100644
> --- a/scripts/pblimage.c
> +++ b/scripts/pblimage.c
> @@ -57,30 +57,28 @@ static uint32_t pbi_crc_cmd1;
>  static uint32_t pbi_crc_cmd2;
>  
>  enum soc_type {
> -	SOC_TYPE_INVALID,
> +	SOC_TYPE_INVALID = -1,
>  	SOC_TYPE_LS1046A,
>  	SOC_TYPE_LS1028A,
>  };
>  
>  struct soc_type_entry {
>  	const char *name;
> -	enum soc_type soc;
>  	bool big_endian;
>  };
>  
>  static struct soc_type_entry socs[] = {
> -	{
> +	[SOC_TYPE_LS1046A] = {
>  		.name = "ls1046a",
> -		.soc = SOC_TYPE_LS1046A,
>  		.big_endian = true,
> -	}, {
> +	},
> +	[SOC_TYPE_LS1028A] = {
>  		.name = "ls1028a",
> -		.soc = SOC_TYPE_LS1028A,
>  		.big_endian = false,
>  	},
>  };
>  
> -static enum soc_type soc_type;
> +static enum soc_type soc_type = SOC_TYPE_INVALID;
>  
>  static char *rcwfile;
>  static char *pbifile;
> @@ -413,7 +411,7 @@ int main(int argc, char *argv[])
>  
>  	for (i = 0; i < ARRAY_SIZE(socs); i++) {
>  		if (!strcmp(socs[i].name, cputypestr)) {
> -			soc_type = socs[i].soc;
> +			soc_type = i;
>  			break;
>  		}
>  	}
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


