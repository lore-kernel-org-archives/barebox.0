Delivery-date: Tue, 01 Mar 2022 09:50:12 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nOyCy-00ECPT-CH
	for lore@lore.pengutronix.de; Tue, 01 Mar 2022 09:50:12 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nOyCw-0007MG-My
	for lore@pengutronix.de; Tue, 01 Mar 2022 09:50:11 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=XDhS4EYp23BzMf2fc6vrqrqF7byMD3hLyFAVM7BcEaM=; b=3kmjS5XrDyi6K74+pk5opHU5Kn
	D6SeCRoBHRnSqX/2ROaar2tnme9N5YCLts3mKIacL4qUMmjM48JF7ykGp+sIFXjuV0/bRS9gfrcsu
	ITHbMCV2u6RAfZDTQkjss7mW3UlLUtGvyOTFTfslqphcwBYSuarP4fgajg5YEuV1dV9YP41rN+zoV
	THKcL9ff7xCC7tzHi0H2Y19ZP/HJxLmnOllGEIScmgoAzNXYxsDgD7G9NGXRHLhuEHPoPBVocgW2t
	9cyZJqI1g1H2jbEeMM1BaTxnVn58j0Q3o9vyvFrZshEvAYS64u87dtwrkKbHD1IYJUzgM/KhFbMaN
	MjKZ7mkw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nOyBh-00FgFZ-Ow; Tue, 01 Mar 2022 08:48:53 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nOyBd-00FgEk-LI
 for barebox@lists.infradead.org; Tue, 01 Mar 2022 08:48:51 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nOyBc-00079K-Bd; Tue, 01 Mar 2022 09:48:48 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nOyBc-0004BP-2p; Tue, 01 Mar 2022 09:48:48 +0100
Date: Tue, 1 Mar 2022 09:48:48 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, ejo@pengutronix.de
Message-ID: <20220301084848.GQ19585@pengutronix.de>
References: <20220228145612.867073-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220228145612.867073-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:48:40 up 80 days, 17:34, 81 users,  load average: 0.18, 0.21, 0.29
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220301_004849_723847_A5C1936D 
X-CRM114-Status: GOOD (  24.12  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH master] regulator: fix enabling of always-on regulators
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Feb 28, 2022 at 03:56:12PM +0100, Ahmad Fatoum wrote:
> We need to enable on either case, not if both are given.
> 
> Fixes: 9f542bd73948 ("regulator: respect "regulator-always-on" property")
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/regulator/core.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/regulator/core.c b/drivers/regulator/core.c
> index 997b986d5f07..ecee4203187c 100644
> --- a/drivers/regulator/core.c
> +++ b/drivers/regulator/core.c
> @@ -130,7 +130,7 @@ static struct regulator_internal * __regulator_register(struct regulator_dev *rd
>  	if (name)
>  		ri->name = xstrdup(name);
>  
> -	if (rd->boot_on && rd->always_on) {
> +	if (rd->boot_on || rd->always_on) {
>  		ret = regulator_enable_internal(ri);
>  		if (ret && ret != -ENOSYS)
>  			goto err;
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

