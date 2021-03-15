Delivery-date: Mon, 15 Mar 2021 10:24:50 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lLjT0-0000fS-Tp
	for lore@lore.pengutronix.de; Mon, 15 Mar 2021 10:24:50 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lLjT0-0001Iu-6Y
	for lore@pengutronix.de; Mon, 15 Mar 2021 10:24:50 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=EY5+mxO9TR/89VU6lxREzC1Onk1cmWt7o65v3kaHXM0=; b=pA14UJnh+2qg9TJAyTxFiNpql
	wLopjjHO23CGtV/s5iJzuRYo112lxM9pAnbKJW1H1htZJBw+fyr+3/xOayhBiTo0oITzpzHTDbIuH
	4AtsuoJy4fSrogaD455i47rS6jrRZfL4fD2tZuJtYo1atd4YFEr5iOdTk8UaSuRauW2HuWoeVHxW0
	9Bg23LqHkXXdSFocJUqz9FgstcPnl2FchnfqNPJ9JRNaPtA0Fy6inMwf7nTzP1Gi3Y5HiyZoRy65K
	9yeB6QslSQTRvqwQ6kbEP3+CujXUcRSIG6tQciA1UKFMq9n5MZ4tR5bdTLaTSdrF/qlOB/wZ/z1Pq
	HxtVlAiJQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lLjS0-00FN4d-Q1; Mon, 15 Mar 2021 09:23:48 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lLjRr-00FN3M-Ao
 for barebox@lists.infradead.org; Mon, 15 Mar 2021 09:23:41 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lLjRq-000149-Nt; Mon, 15 Mar 2021 10:23:38 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lLjRq-0002sA-EM; Mon, 15 Mar 2021 10:23:38 +0100
Date: Mon, 15 Mar 2021 10:23:38 +0100
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, barebox@lists.infradead.org
Message-ID: <20210315092338.GO23724@pengutronix.de>
References: <20210315082803.52984-1-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210315082803.52984-1-antonynpavlov@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 10:23:28 up 25 days, 12:47, 81 users,  load average: 2.06, 0.99, 0.54
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210315_092340_042034_03E293C1 
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] bootm: add RISC-V image type
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Mar 15, 2021 at 11:28:03AM +0300, Antony Pavlov wrote:
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
>  include/image.h | 2 ++
>  1 file changed, 2 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/include/image.h b/include/image.h
> index fa06476845..b593ae30ef 100644
> --- a/include/image.h
> +++ b/include/image.h
> @@ -129,6 +129,8 @@ enum {
>  #define IH_ARCH IH_ARCH_AVR32
>  #elif defined(CONFIG_SANDBOX)
>  #define IH_ARCH IH_ARCH_SANDBOX
> +#elif defined(__riscv)
> +#define IH_ARCH IH_ARCH_RISCV
>  #else
>  #define IH_ARCH IH_ARCH_INVALID
>  #endif
> -- 
> 2.30.1
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

