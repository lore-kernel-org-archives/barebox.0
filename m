Delivery-date: Mon, 23 Oct 2023 11:58:04 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qurhE-0015ff-R4
	for lore@lore.pengutronix.de; Mon, 23 Oct 2023 11:58:04 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qurhD-0004MF-KA
	for lore@pengutronix.de; Mon, 23 Oct 2023 11:58:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Wd9ad2GYx6uVsBzaNwhf5eQocyNQx9ARLfOG6kHBI/Y=; b=YkD9KoHcyC58qIivlBlrv2stR1
	Kry/2bVShyoQkb0bBhJ0kGnggW/+b6E/Ad/KqHbKiqEpDR5eYfZXQJOgart1dXrXaY9yDFDt+MQDj
	zi35P922W6MWgpF9IAMDN4cGTThmwHqBEgACVBGpJwWZgfxJ4oLC+sqT5HLeoj4QFpRdjJGZxUVgG
	ooOnzF/sYSCtEppBJd2ZRm8fA/7QkvfFXnjViQoEV/lWv82weVvyGJUCl9l+HnNu8AV8HMFyeN5++
	FDuDW7z/ogiFcUPfneugIZ/JhuAplbX965dH4wgi7PNGEEUoYfSczoZlHfG4YtIU8vBu7s7zX5bup
	wMRNCGpA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qurg7-006xrk-0W;
	Mon, 23 Oct 2023 09:56:55 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qurek-006wrG-2r
	for barebox@lists.infradead.org;
	Mon, 23 Oct 2023 09:55:32 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qurej-0003l4-F5; Mon, 23 Oct 2023 11:55:29 +0200
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qurej-003g3O-2l; Mon, 23 Oct 2023 11:55:29 +0200
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qurej-00FuKT-0T; Mon, 23 Oct 2023 11:55:29 +0200
Date: Mon, 23 Oct 2023 11:55:28 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20231023095528.GS3359458@pengutronix.de>
References: <20231020180912.2914428-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231020180912.2914428-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231023_025530_953356_0558B77C 
X-CRM114-Status: GOOD (  20.24  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] decompress: xz: enable armthumb BCJ filter for Thumb-2
 barebox
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Fri, Oct 20, 2023 at 08:09:12PM +0200, Ahmad Fatoum wrote:
> The XZ decompressor in barebox has BCJ filter support for THUMB, but
> like Linux, it's unused and instead the ARM BCJ filter is used.
> 
> Fixing that lets us save a few kilobytes, which is especially useful for
> legacy configuration that fit a whole barebox into limited on-chip SRAM
> (and not only the prebootloader). For example, with this patch applied
> barebox-am33xx-beaglebone-mlo.img is shrinked 3K from 109236 to 106028 bytes.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  lib/decompress_unxz.c | 2 ++
>  scripts/xz_wrap.sh    | 4 ++++
>  2 files changed, 6 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/lib/decompress_unxz.c b/lib/decompress_unxz.c
> index 132ab4a239b3..ad6a5f20ba28 100644
> --- a/lib/decompress_unxz.c
> +++ b/lib/decompress_unxz.c
> @@ -133,6 +133,8 @@
>  #ifdef CONFIG_ARM
>  #	ifdef CONFIG_CPU_64
>  #		define XZ_DEC_ARM64
> +#	elif defined CONFIG_THUMB2_BAREBOX
> +#		define XZ_DEC_ARMTHUMB
>  #	else
>  #		define XZ_DEC_ARM
>  #	endif
> diff --git a/scripts/xz_wrap.sh b/scripts/xz_wrap.sh
> index 5b5f3adcff6d..a6373a748168 100755
> --- a/scripts/xz_wrap.sh
> +++ b/scripts/xz_wrap.sh
> @@ -20,6 +20,10 @@ case $SRCARCH in
>  	sparc)          BCJ=--sparc ;;
>  esac
>  
> +if grep -q '^CONFIG_THUMB2_BAREBOX=y$' include/config/auto.conf; then
> +	BCJ=--armthumb
> +fi
> +
>  # clear BCJ filter if unsupported
>  xz -H | grep -q -- $BCJ || BCJ=
>  
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


