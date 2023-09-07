Delivery-date: Thu, 07 Sep 2023 10:57:29 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qeApO-006vbm-9X
	for lore@lore.pengutronix.de; Thu, 07 Sep 2023 10:57:29 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qeApM-0008SM-82
	for lore@pengutronix.de; Thu, 07 Sep 2023 10:57:28 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=YKq8MZh+f8kJREq3j33SxnS3mEIMVQaCW3OaERaVGUA=; b=zqb8dxAwlxQxxzS17YV9vs0qfe
	vPqIRvQshXxtDCTuwvzQbcO84VbHiPrEHrlf8EFW72jWUb8rLENuiFG5DMwZva7T8VOKbX+SgCtfo
	9ZjABhgxy6LpwXBUtv7vi5arJtBoKLDXCaBZ+tbyBSsGM6we5lV5LBkVjJLX4dwufWvGwPjWA+XkL
	zyVq2VWV/ktmvcPpMF5saAHg60cLhShW+DVmOvGbsfX6+C4XffDIMTQprFO5nje3gANItfuxyjMhR
	0YA6x1vfv0XMU3hQXTkAE4VvcLZ4SUF6AQoGVEQtBZGLfz9DhFtlRL/AE5TIfwDR9So12zXDyE9li
	CZR7n62w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qeAoL-00BcyC-1K;
	Thu, 07 Sep 2023 08:56:25 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qeAoI-00Bcxa-2t
	for barebox@lists.infradead.org;
	Thu, 07 Sep 2023 08:56:24 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1qeAoH-00089x-Nb; Thu, 07 Sep 2023 10:56:21 +0200
Message-ID: <fb906f30-4765-3c9e-b89f-92ae93ff59cc@pengutronix.de>
Date: Thu, 7 Sep 2023 10:56:21 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: Jules Maselbas <jmaselbas@zdiv.net>, barebox@lists.infradead.org
References: <20230906150857.32035-1-jmaselbas@zdiv.net>
 <20230906150857.32035-2-jmaselbas@zdiv.net>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230906150857.32035-2-jmaselbas@zdiv.net>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230907_015622_928497_AEC32AC2 
X-CRM114-Status: GOOD (  17.36  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/3] scripts: Select XZ --arm64 BCJ filter for 64-bit arm
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 06.09.23 17:08, Jules Maselbas wrote:
> This change will select the arm64 BCJ filter for aarch64 instead of
> the arm filter which was always selected for arm based architectures.
> 
> The selected filter is also tested, by looking if it is present in
> the long help message of xz, this is because the arm64 BCJ filter is
> a recent addition to xz.
> 
> Signed-off-by: Jules Maselbas <jmaselbas@zdiv.net>

How much of an improvement is BCJ=--arm over BCJ=""?

I wonder if we should fallback from --arm64 to --arm.

Cheers,
Ahmad

> ---
>  scripts/xz_wrap.sh | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/scripts/xz_wrap.sh b/scripts/xz_wrap.sh
> index 7a2d372f48..5b5f3adcff 100755
> --- a/scripts/xz_wrap.sh
> +++ b/scripts/xz_wrap.sh
> @@ -16,8 +16,11 @@ case $SRCARCH in
>  	x86)            BCJ=--x86 ;;
>  	powerpc)        BCJ=--powerpc ;;
>  	ia64)           BCJ=--ia64; LZMA2OPTS=pb=4 ;;
> -	arm)            BCJ=--arm ;;
> +	arm)            BCJ=--arm$S64 ;;
>  	sparc)          BCJ=--sparc ;;
>  esac
>  
> +# clear BCJ filter if unsupported
> +xz -H | grep -q -- $BCJ || BCJ=
> +
>  exec xz --check=crc32 $BCJ --lzma2=$LZMA2OPTS,dict=32MiB

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



