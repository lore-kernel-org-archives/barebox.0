Delivery-date: Fri, 03 Jun 2022 08:52:49 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nx1Av-001WXT-SE
	for lore@lore.pengutronix.de; Fri, 03 Jun 2022 08:52:49 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nx1Au-0003b2-Lg
	for lore@pengutronix.de; Fri, 03 Jun 2022 08:52:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=tXdBpnXBiJgNIjLEeAfUoozK/xA7rawGzD65TLDjhYQ=; b=iu1YiE0/kf2moeIC5/+2duwLKi
	n3n3TcncFrGffnhp/KCpddZRPfz9lWGT5/IvQ5zBp9GWOxahmBgshDYBzj5fjqlqpooyaXrLNdHc2
	pjmz/TP5zMuN4D0QgmHOIw51rriCzP1ByKP/LOOyeu3hVtwd2IeAfYdTvnnw9LaDJZIi9esiLj18p
	upzXdnVLnfQi6iWYOH48/j0UpR7N1UKkYw521VaoB9WPLxCX5O6/wCBn28hOAJDDS46XmHqFe2qjh
	SoaD8agAX+zfhjWswtcxl6R6kmLYhp6h/8laVdRxxlbMAesvC8s9kQVOdNyz2fZR7qdnHyVdgLVpE
	gHdHeKAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nx19B-00671T-Lr; Fri, 03 Jun 2022 06:51:01 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nx196-0066zM-DF
	for barebox@lists.infradead.org; Fri, 03 Jun 2022 06:50:58 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1nx18z-00037b-8a; Fri, 03 Jun 2022 08:50:49 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1nx18y-0004Xc-Un; Fri, 03 Jun 2022 08:50:48 +0200
Date: Fri, 3 Jun 2022 08:50:48 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220603065048.GG1615@pengutronix.de>
References: <20220602102850.3421547-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220602102850.3421547-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220602_235056_484695_00D6D5DE 
X-CRM114-Status: GOOD (  21.03  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: cpuinfo: print exception level
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Jun 02, 2022 at 12:28:50PM +0200, Ahmad Fatoum wrote:
> barebox boot on ARMv8 usually involves switching exception level, but
> nevertheless during bring up, it can be useful to query exception level
> from the command line. Thus add it to cpuinfo output. There's no
> straight equivalent for ARMv7, so we #ifdef it out for non-v8.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  arch/arm/cpu/cpuinfo.c | 4 ++++
>  1 file changed, 4 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/cpu/cpuinfo.c b/arch/arm/cpu/cpuinfo.c
> index 8a92432e904f..aea50e80d194 100644
> --- a/arch/arm/cpu/cpuinfo.c
> +++ b/arch/arm/cpu/cpuinfo.c
> @@ -230,6 +230,10 @@ static int do_cpuinfo(int argc, char *argv[])
>  			printf("core: %s r%up%u\n", part, major, minor);
>  	}
>  
> +#ifdef CONFIG_CPU_64v8
> +	printf("exception level: %u\n", current_el());
> +#endif
> +
>  	if (cache & (1 << 24)) {
>  		/* separate I/D cache */
>  		printf("I-cache: ");
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

