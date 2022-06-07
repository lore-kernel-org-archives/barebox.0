Delivery-date: Tue, 07 Jun 2022 09:09:11 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nyTKx-0066w2-JV
	for lore@lore.pengutronix.de; Tue, 07 Jun 2022 09:09:11 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nyTKv-0001sW-8v
	for lore@pengutronix.de; Tue, 07 Jun 2022 09:09:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ZGIbNNUJLuoHr62l7azKhhggswx+t36V5abmXTgad/U=; b=LCkErOsUuTRkIrWsEws39OADrA
	cvkNefyzV9crBVd8ugxutBZ4rnWMzvvvSGO48dhejlenKw7HvZYMBRYeucwG5dTf0QU0XdXY4NG3H
	7NcUWVlOvtDCOyz6SUG+AVsu5wI8LzoEXf5hH/OtFdqjLyjWxj3RWhriMNCSfv4WI5t57kkb/KFC/
	l0jFwU+rdxvgw1UdzVX4xid+lbAGb2BYsSmTDRWwZ1ElbOuCGudXuvEDOKnJehYwO1pw+ejmjHohQ
	isa7s/hUk5Kw7EWZRpN2KE0ObhWpuwH8Oq+4e/tLM/wADdHTKFYJYKzUWkjbNc99FmP/FmUTj03eu
	GIZd8f4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nyTJa-005KAV-Fe; Tue, 07 Jun 2022 07:07:46 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nyTJI-005K5z-QU
	for barebox@lists.infradead.org; Tue, 07 Jun 2022 07:07:30 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1nyTJH-0001fn-DH; Tue, 07 Jun 2022 09:07:27 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1nyTJH-00005l-4M; Tue, 07 Jun 2022 09:07:27 +0200
Date: Tue, 7 Jun 2022 09:07:27 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220607070727.GK1615@pengutronix.de>
References: <20220603072436.1579545-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220603072436.1579545-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220607_000728_907053_3E60EC27 
X-CRM114-Status: GOOD (  22.60  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] ARM: cpuinfo: print CPU mainid if unknown
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Jun 03, 2022 at 09:24:35AM +0200, Ahmad Fatoum wrote:
> Instead of e.g.
> 
>   core: unknown r0p3
> 
> We now get
> 
>   core: unknown (0x410fd083) r0p3
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  arch/arm/cpu/cpuinfo.c | 10 +++++++---
>  1 file changed, 7 insertions(+), 3 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/cpu/cpuinfo.c b/arch/arm/cpu/cpuinfo.c
> index a08fc253efbb..5dce34536efc 100644
> --- a/arch/arm/cpu/cpuinfo.c
> +++ b/arch/arm/cpu/cpuinfo.c
> @@ -191,7 +191,7 @@ static int do_cpuinfo(int argc, char *argv[])
>  
>  	if (cpu_arch >= CPU_ARCH_ARMv7) {
>  		unsigned int major, minor;
> -		char *part;
> +		const char *part = NULL;
>  		major = (mainid >> 20) & 0xf;
>  		minor = mainid & 0xf;
>  		switch (mainid & 0xfff0) {
> @@ -217,9 +217,13 @@ static int do_cpuinfo(int argc, char *argv[])
>  			part = "Cortex-A57";
>  			break;
>  		default:
> -			part = "unknown";
> +			printf("core: unknown (0x%08lx) r%up%u\n",
> +			       mainid, major, minor);
> +			break;
>  		}
> -		printf("core: %s r%up%u\n", part, major, minor);
> +
> +		if (part)
> +			printf("core: %s r%up%u\n", part, major, minor);
>  	}
>  
>  	if (cache & (1 << 24)) {
> -- 
> 2.30.2
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

