Delivery-date: Mon, 15 Jul 2024 08:05:35 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sTEq5-0050LI-0p
	for lore@lore.pengutronix.de;
	Mon, 15 Jul 2024 08:05:35 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sTEq4-0003qS-IO
	for lore@pengutronix.de; Mon, 15 Jul 2024 08:05:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zynneE2DXrfXygYPGNeOTH7AkTnTtQk1cIjkedXHUEI=; b=4ddmoEzGyicSOj0eHljFBcH6v0
	O1kVXps2pgPk9OHhNtRKiKVvbBQ/ydr8TpYY4YqanXbtYUoQ3zrpvY6/lt7OOKglGArf9XPDjYRHX
	U4CmW5rs5UFrzaJKXwmy2AukkAXtx/4fglk3MrpRSMk+TGmV6vonrlcXUQ54xz2xbgDoScCiDID4x
	klN71TvsGSmazBCm5DsP8NJAH4uoP4Z1WABubnlnUyH7MoRAxe6OTqajYr4R0lWDz0v7HJnqERukd
	ynFWoqP9Ueckx76h3zt9LXyo6oM10LXyQ1Nqn1q0Gnsqfs+kwSxgPzjz1jFaYwZ+OaktF0tN1pTSQ
	trSfE5mA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTEpJ-00000005z9S-0CYS;
	Mon, 15 Jul 2024 06:04:45 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTEpF-00000005z8K-1oKS
	for barebox@lists.infradead.org;
	Mon, 15 Jul 2024 06:04:43 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sTEpB-0003lx-LX
	for barebox@lists.infradead.org; Mon, 15 Jul 2024 08:04:37 +0200
Message-ID: <52824a89-78d9-413a-b65b-3c3a064e7968@pengutronix.de>
Date: Mon, 15 Jul 2024 08:04:37 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
References: <20240703190226.686987-1-a.fatoum@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240703190226.686987-1-a.fatoum@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240714_230441_505108_3404F4E8 
X-CRM114-Status: GOOD (  18.36  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master] sandbox: lds: fix "ELF has a LOAD segment with RWX
 permissions" warning
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 03.07.24 21:02, Ahmad Fatoum wrote:
> With binutils 2.39+, the barebox build started emitting this warning.
> On platforms other than sandbox, we disable this warning by passing --no-warn-rwx
> to ld as we don't care for ELF attributes as they aren't used anyway.
> 
> On sandbox, however, the ELF attributes matter, so disabling the warning
> completely felt wrong. Looking more into it now, we can mark the
> .barebox_rodata section in the linker file snippet we have in sandbox as
> READONLY and the warning disappears, so let's do that instead.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

Please dismiss this patch. The new BAREBOX_CLASSES addition to RO_DATA_SECTION
makes the section not const anymore, so this would crash on the first class
addition. I'll send a v2 later.

> ---
>  arch/sandbox/board/barebox.lds.S | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/sandbox/board/barebox.lds.S b/arch/sandbox/board/barebox.lds.S
> index ab2801f3d207..de8552dba0ac 100644
> --- a/arch/sandbox/board/barebox.lds.S
> +++ b/arch/sandbox/board/barebox.lds.S
> @@ -5,7 +5,7 @@
>  SECTIONS
>  {
>  	. = ALIGN(64);
> -	.barebox_rodata : {
> +	.barebox_rodata (READONLY) : {
>  		RO_DATA_SECTION
>  	}
>  }

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



