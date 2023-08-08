Delivery-date: Tue, 08 Aug 2023 11:38:59 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qTJB5-00CEKo-UJ
	for lore@lore.pengutronix.de; Tue, 08 Aug 2023 11:38:59 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qTJB4-0003xg-5x
	for lore@pengutronix.de; Tue, 08 Aug 2023 11:38:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=onEjZT1aGHd+OmR07S+BLcb6PGQnnkTGmglX+4MfJes=; b=p/jrBRqmWGXRpFTkWKlbtLF7Ow
	L2ceT9coHwIAFdYk/VDbgQicj5LgClRJIr6IA4BhiQDmBTCETGXl39snhCkIDBTxXaRFCQe8yHPDm
	DPStiWIV3MZZwgCY8mPNDMixkCMVU+8HjrIm9KwCzKDll6NIjiQHU4qbtYxi1SmuptG+gccjth2aS
	UGz27PvzTdl4U//BXbIEgR2s7YtbVQlVJkOoKfQpRENPp0ZEeYVqAlMqzOh1dpxtOEv4NtKzKYdtm
	n+JUMwrt8sVPdbPMSQhx3w2feUYiNgu3W8jhwTRT/R/G5icqRM8Ro+ZN7zSvT7zdpoBYbsDc90s0M
	khgue5iA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qTJA4-0029bM-2q;
	Tue, 08 Aug 2023 09:37:56 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qTJA2-0029al-1p
	for barebox@lists.infradead.org;
	Tue, 08 Aug 2023 09:37:55 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1qTJA1-0003n8-Ak; Tue, 08 Aug 2023 11:37:53 +0200
Message-ID: <16aa3b1e-20e9-cb81-783e-1d0e8bbb82e5@pengutronix.de>
Date: Tue, 8 Aug 2023 11:37:52 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: Roland Hieber <rhi@pengutronix.de>, barebox@lists.infradead.org
References: <20230808092617.2037996-1-rhi@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230808092617.2037996-1-rhi@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230808_023754_603286_B446369A 
X-CRM114-Status: GOOD (  18.98  )
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
X-Spam-Status: No, score=-6.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/4] doc: dt-bindings: barebox,environment: fix typo
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 08.08.23 11:26, Roland Hieber wrote:
> Signed-off-by: Roland Hieber <rhi@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

(For those wondering, s/environmnet/environment/)

> 
> ---
>  .../devicetree/bindings/barebox/barebox,environment.rst         | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/barebox/barebox,environment.rst b/Documentation/devicetree/bindings/barebox/barebox,environment.rst
> index 40239f424ac0..67d1173b2fdc 100644
> --- a/Documentation/devicetree/bindings/barebox/barebox,environment.rst
> +++ b/Documentation/devicetree/bindings/barebox/barebox,environment.rst
> @@ -23,7 +23,7 @@ the path to the environment. Supported values for <type>:
>    be the label for MTD partitions, the number for DOS
>    partitions (beginning with 0) or the name for GPT partitions.
>  
> -If the *environmnet* is located in a GPT partition, use
> +If the *environment* is located in a GPT partition, use
>  ``6C3737F2-07F8-45D1-AD45-15D260AAB24D`` as partition type GUID.
>  
>  The file-path is the name of a file located in a FAT filesystem on the

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



