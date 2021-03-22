Delivery-date: Mon, 22 Mar 2021 10:18:26 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lOGhe-0003GS-TB
	for lore@lore.pengutronix.de; Mon, 22 Mar 2021 10:18:26 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lOGhe-0006bi-2r
	for lore@pengutronix.de; Mon, 22 Mar 2021 10:18:26 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=/45qYmpk8hllYEQkVRtVEhjnCHIsEDemRhfrGJzwQG4=; b=GTNoaIKEXgUkGDKA82HLI6ITG
	/TiaxkfJUZy9kig3NuRyfEsB3REFMzFMILNtmPq5JzbhaAG8HAo+Cdvcg5CIlsZSgzqEc+WJQRGFB
	Jkvuv37RjX566NH7Jy/D2Jy2nHuwJUaZ3RCQzC+HzQrm10CGFK6ouULRhTQv40rERQjrdu1+msQFW
	HIEqabCAgDGNRgG5y4e49HPLHYwztvy+itiaqE8cDtP13RmpD2+HBm+2/SKpe7Zlah8UA6UYOIioZ
	HFqFyUVOhqMU9D/A78xB0bHIyKjCovxajC7T6kwBuCTt2ERNBu5w/xwVX2HTmFXXD6lZ/h/CGY9Sj
	+/ZiYdVMg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lOGgN-00BEsr-Eu; Mon, 22 Mar 2021 09:17:07 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lOGgF-00BErw-HB
 for barebox@lists.infradead.org; Mon, 22 Mar 2021 09:17:02 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lOGgE-0006Q0-V8; Mon, 22 Mar 2021 10:16:58 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lOGgE-0006is-H5; Mon, 22 Mar 2021 10:16:58 +0100
Date: Mon, 22 Mar 2021 10:16:58 +0100
To: Ahmad Fatoum <ahmad@a3f.at>
Cc: barebox@lists.infradead.org
Message-ID: <20210322091658.GP23724@pengutronix.de>
References: <20210322071727.3739277-1-ahmad@a3f.at>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210322071727.3739277-1-ahmad@a3f.at>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 10:16:49 up 32 days, 12:40, 86 users,  load average: 0.06, 0.13, 0.20
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210322_091659_897979_A491C44A 
X-CRM114-Status: GOOD (  23.95  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] fixup! ARM64: board-dt-2nd: adopt kernel image header
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Mar 22, 2021 at 08:17:27AM +0100, Ahmad Fatoum wrote:
> No functional change, but code is way simpler.
> 
> Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
> ---

Applied, thanks

Sascha

>  arch/arm/cpu/board-dt-2nd-aarch64.S | 7 +------
>  1 file changed, 1 insertion(+), 6 deletions(-)
> 
> diff --git a/arch/arm/cpu/board-dt-2nd-aarch64.S b/arch/arm/cpu/board-dt-2nd-aarch64.S
> index d32b4066cae2..d2c9f132cef6 100644
> --- a/arch/arm/cpu/board-dt-2nd-aarch64.S
> +++ b/arch/arm/cpu/board-dt-2nd-aarch64.S
> @@ -9,8 +9,7 @@
>  
>  .section .text_head_entry_start_dt_2nd
>  ENTRY("start_dt_2nd")
> -1:
> -	adr x1, 1b		   /* code0 */
> +	adr x1, 0	   	   /* code0 */
>  	b 2f                       /* code1 */
>  	.xword 0x80000             /* Image load offset */
>  	.xword _barebox_image_size /* Effective Image size */
> @@ -22,13 +21,9 @@ ENTRY("start_dt_2nd")
>  	.int   0                   /* reserved (PE-COFF offset) */
>  	.asciz "barebox"	   /* unused for now */
>  2:
> -	ldr x2, linkadr
> -	subs x1, x1, x2		    /* get runtime image load offset */
>  	mov sp, x1
>  	/* Stack now grows into the 0x80000 image load offset specified
>  	 * above. This is more than enough until FDT /memory is decoded.
>  	 */
>  	b dt_2nd_aarch64
> -linkadr:
> -.xword start_dt_2nd
>  ENTRY_PROC_END(start_dt_2nd)
> -- 
> 2.30.0
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

