Delivery-date: Thu, 23 Nov 2023 08:21:47 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r641z-005TzC-0T
	for lore@lore.pengutronix.de;
	Thu, 23 Nov 2023 08:21:47 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r641z-0006C9-6O
	for lore@pengutronix.de; Thu, 23 Nov 2023 08:21:47 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=RJuJyTbf9LQndeGUTrUcydfiMxw5dUM0gFxdL+nvr94=; b=AHTJi4YfDWEDSZtrW7OJtkF4mm
	8g2VqtdXrsubj9mAoJtiDccz2YnIAihm6G/0keVbQhyc4ewPZEa/p9vqXJMZHGjhE57LTo88M1GOH
	AB5ty/D3lJf+4rPUwZwqJQUjM5a5hhVYy1jBe1GbTqDV1JxcNRUrkhY4RQzpMX+oKYoPdG+wipFbt
	booNymOnxTdfQgxWgVSvDzJTw+A32IW9SCd8IxC2OdNIxHVkieE03VoCLbrCPW1KkdR1qnOYyUu+x
	MN1zQh42LQ9j5/KmY6ucmg3+ovsoLn1EfzFT5xXJ67JWc2qxQtrxzLtIvUa66cCNYXWhd3Xtwv6Vh
	7xLZuy7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r640L-0040aK-0U;
	Thu, 23 Nov 2023 07:20:05 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r640G-0040ZR-15
	for barebox@lists.infradead.org;
	Thu, 23 Nov 2023 07:20:02 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1r640B-0005uS-Js; Thu, 23 Nov 2023 08:19:55 +0100
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1r640B-00AzOx-7b; Thu, 23 Nov 2023 08:19:55 +0100
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1r640B-003QBt-5V; Thu, 23 Nov 2023 08:19:55 +0100
Date: Thu, 23 Nov 2023 08:19:55 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20231123071955.GC3359458@pengutronix.de>
References: <20231122155443.1446732-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231122155443.1446732-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231122_232000_376672_37871FA3 
X-CRM114-Status: GOOD (  22.63  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] fixup! test: self: add JSON Web Token tests
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Wed, Nov 22, 2023 at 04:54:43PM +0100, Ahmad Fatoum wrote:
> test: self: jwt: use barebox_set_loglevel
> 
> For CONFIG_CONSOLE_SIMPLE or CONFIG_CONSOLE_FULL, this is equivalent,
> but for CONFIG_CONSOLE_NONE, this fixes a linker error as
> barebox_loglevel isn't defined in that case.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
> v1 -> v2:
>   - send as fixup instead of a patch as fixed commit is still in next
> ---
>  test/self/jwt.c | 5 ++---
>  1 file changed, 2 insertions(+), 3 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/test/self/jwt.c b/test/self/jwt.c
> index f37b44be22b8..015a0e436736 100644
> --- a/test/self/jwt.c
> +++ b/test/self/jwt.c
> @@ -97,8 +97,7 @@ static void test_jwt(void)
>  	 * noisy, so we decrease logging a bit during their run
>  	 */
>  
> -	old_loglevel = barebox_loglevel;
> -	barebox_loglevel = MSG_CRIT;
> +	old_loglevel = barebox_set_loglevel(MSG_CRIT);
>  
>  	jwt_rs256_mangled = strdup(jwt_rs256);
>  	ch = &jwt_rs256_mangled[strlen(jwt_rs256_mangled) - 1];
> @@ -152,6 +151,6 @@ static void test_jwt(void)
>  		jwt_free(jwt);
>  	}
>  
> -	barebox_loglevel = old_loglevel;
> +	barebox_set_loglevel(old_loglevel);
>  }
>  bselftest(parser, test_jwt);
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


