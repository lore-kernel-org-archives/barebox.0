Delivery-date: Tue, 20 Aug 2024 07:29:31 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sgHQv-00BU9o-1u
	for lore@lore.pengutronix.de;
	Tue, 20 Aug 2024 07:29:31 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sgHQu-0008A9-W4
	for lore@pengutronix.de; Tue, 20 Aug 2024 07:29:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4nnCn5veBngKhdjI7KrCIAbDTWyKI5QGGWDxgjCLio0=; b=yOmGetdnYYFbJ/mDNaK0sXZyAe
	bhgrtr5wYD0wKz9ku0DUVWtB9Y1X8Bk+PS0M7QFgdWSfaTi8yeqZEANWT+/olKphYJsT8Pwo2DTzx
	DfvNQU2utvO9tuIxu4dSyETdE3Uw3Hj/BW2F4gURbpOAkC/yj9xLc+2IULokctNPcg4odC9m3qmB0
	Irn7r+WA5a/UKt1ngJlf1oimcLhC8N95X7Esi8q2vXGEbrD110yYR8zGR47lIKV6m32iLJuFxO2Qu
	9bSMqAIkFO52oP+UVOH9XEPWQ+YnMHCMNUt7XlRMbErG6JmcC/0KiXNqEHQ2Pzv52hfWzki5rauTm
	nrWu4pqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sgHQ8-00000003sFD-3uFX;
	Tue, 20 Aug 2024 05:28:40 +0000
Received: from smtp.cesky-hosting.cz ([2001:67c:e94:0:1:5bef:c8ee:1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sgHQ5-00000003sAF-2L7w
	for barebox@lists.infradead.org;
	Tue, 20 Aug 2024 05:28:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=elrest.cz;
	s=rampa2-202408; t=1724131700;
	bh=n+NxK9sc4Hofo+htKm+62dsU4c9C9vX48Urw3KC3TWI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=vzSFyebOfU6oquPXJWLGxXlpJ1vanVSht6HWMsylHID8Hg1iqqOQx5jX4RjsyJmL6
	 vkLgmhfWOArskjqjqlMq02uGvX1XmpjbT+IHrvsClTCjw2PG+hoPBTJM6Wp2WSHDwk
	 R9RVLNLNqcLKfgGv9xjrIV91wHfPZjm98E8bAiuRRodmA17v9aKrbs5ub2IxsmAnkY
	 OMR+mbT+jI0Roge/QlBJeBBuvGc0l9frVWoT4Xjjj7n/5NTxHfpJTk7dXzvoKq06f3
	 bPSZSCYXH5C52D6MtZBJKlHta5invrONBPdZbyDikfb0Di2EsoAJYQtf93D06Ivd5m
	 hPEkwf9QcF6Zg==
X-Virus-Scanned: Debian amavis at smtp.cesky-hosting.cz
Received: from debian (unknown [185.63.98.16])
	(Authenticated sender: tomas.marek@elrest.cz)
	by smtp.cesky-hosting.cz (Postfix) with ESMTPSA id 4Wnyfp5HZWzFg;
	Tue, 20 Aug 2024 07:28:18 +0200 (CEST)
Date: Tue, 20 Aug 2024 07:28:17 +0200
From: Tomas Marek <tomas.marek@elrest.cz>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <ZsQpccI0u_hwbpil@debian>
References: <20240815065646.1156788-1-a.fatoum@pengutronix.de>
 <20240815065646.1156788-2-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240815065646.1156788-2-a.fatoum@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240819_222838_289226_EB90F3F5 
X-CRM114-Status: GOOD (  19.27  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 2/2] i2c: efi: use DIV_ROUND_UP_ULL instead of native
 division
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Ahmad,

On Thu, Aug 15, 2024 at 08:56:46AM +0200, Ahmad Fatoum wrote:
> 64-bit division on 32-bit platforms is normally handled by libgcc,
> which, like the kernel, we don't link against in barebox.
> 
> Instead we have a number of division helpers that should be used for
> 64-bit division, which either expand to a normal division if possible or
> to an out-of-line division. Make use of this to fix compilation for
> 32-bit.

Thanks for hint.

> 
> Cc: Tomas Marek <tomas.marek@elrest.cz>
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
> This replaces "i2c: efi: avoid 64-bit division"
> ---
>  drivers/i2c/busses/i2c-efi.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/i2c/busses/i2c-efi.c b/drivers/i2c/busses/i2c-efi.c
> index 5f6cc0eed28e..4c58279e0398 100644
> --- a/drivers/i2c/busses/i2c-efi.c
> +++ b/drivers/i2c/busses/i2c-efi.c
> @@ -114,7 +114,7 @@ static unsigned int efi_i2c_msg_op_cnt(const struct efi_i2c_priv *i2c_priv,
>  
>  	max_len = efi_i2c_max_len(i2c_priv, msg);
>  
> -	return ((u64)msg->len + max_len - 1) / max_len;
> +	return DIV_ROUND_UP_ULL(msg->len, max_len);

It looks good to me.

Best regards

Tomas

>  }
>  
>  static unsigned int efi_i2c_req_op_cnt(
> -- 
> 2.39.2
> 


