Delivery-date: Wed, 14 Jan 2026 13:04:35 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vfzc3-001DqY-2e
	for lore@lore.pengutronix.de;
	Wed, 14 Jan 2026 13:04:35 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vfzc2-0000Nv-Qy
	for lore@pengutronix.de; Wed, 14 Jan 2026 13:04:35 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=DxAPx+HUN/Gm1kHBmzsYu9FSNNKJfjTvlfUcwMXPBG0=; b=izlPUZMkEas4xIQPRWUX3Ebolb
	1umDemrljyCybNP2WOaEeamThfmw5OSI65urFRUOYfXk2SRo2SHVifGoRXF6LuQiRhjdCNNGFB7sZ
	w/L+GYYvGzE5tzOxG7N5FHfVqzLR5hfvx486xM1WwwwtCym9q018kb47eJjg5mCkD957pHMCPJe2r
	TTmxSovEcpIOaWxttoEn8z10QsMgaBE4IYN/zK7IzTWJUI/Jjf5gJn0e2X01wv6KAWdV2Jn0Mq4s5
	1FbBukI7fTQWZfFKpyhOXE4merTAWHGWEY//lOxtFBynzMrkw3DnOwJzIXEhO9KkapzyCDte5rjXQ
	zAl6cR9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfzbg-0000000950u-3jP8;
	Wed, 14 Jan 2026 12:04:12 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfzbd-000000094zn-3NNw
	for barebox@lists.infradead.org;
	Wed, 14 Jan 2026 12:04:11 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vfzbc-0000FQ-B5; Wed, 14 Jan 2026 13:04:08 +0100
Message-ID: <6082e34f-7871-4573-a5e2-3dfbb4dd4fc8@pengutronix.de>
Date: Wed, 14 Jan 2026 13:04:08 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Marco Felsch <m.felsch@pengutronix.de>,
 Sascha Hauer <s.hauer@pengutronix.de>, BAREBOX <barebox@lists.infradead.org>
References: <20251110-v2025-09-0-topic-optee-of-handling-v1-0-8f0625ac5471@pengutronix.de>
 <20251110-v2025-09-0-topic-optee-of-handling-v1-2-8f0625ac5471@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20251110-v2025-09-0-topic-optee-of-handling-v1-2-8f0625ac5471@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260114_040409_881626_2D9CF4FD 
X-CRM114-Status: GOOD (  17.77  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 02/23] pbl: fdt: fix fdt_fixup_mem error handling
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)



On 11/10/25 9:34 PM, Marco Felsch wrote:
> fdt_find_or_add_memory() returns >= 0 on success, so the return must be
> checked to be < 0. Also fix the following pr_warn() which used the wrong
> variable.
> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

I split out this patch in a series that I just sent.

Cheers,
Ahmad

> ---
>  pbl/fdt.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/pbl/fdt.c b/pbl/fdt.c
> index c9820112c6442b65d4f462c93b6847442097c5ab..ac377446caeafb1beaeb211aa8bdec8767ae21fe 100644
> --- a/pbl/fdt.c
> +++ b/pbl/fdt.c
> @@ -128,9 +128,9 @@ int fdt_fixup_mem(void *fdt, unsigned long membase[], unsigned long memsize[],
>  
>  		snprintf(name, sizeof(name), "memory@%lx", base);
>  		node = fdt_find_or_add_memory(fdt, root, name);
> -		if (!node) {
> +		if (node < 0) {
>  			pr_warn("%s: Failed to get node: %s\n",
> -				name, fdt_strerror(err));
> +				name, fdt_strerror(node));
>  			continue;
>  		}
>  
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



