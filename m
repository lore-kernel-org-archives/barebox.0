Delivery-date: Mon, 13 Dec 2021 23:40:36 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mwtzo-005izo-A8
	for lore@lore.pengutronix.de; Mon, 13 Dec 2021 23:40:36 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mwtzm-0004L6-Hb
	for lore@pengutronix.de; Mon, 13 Dec 2021 23:40:35 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Qlm+GyYmCwwbpJYnpzwkLfgNp5RVEJtacbFXdU9TfyU=; b=f8DwU/j/An8MO2AKva7dNJ6XOG
	gH8mQgXRZN62eOyAUziyVdD53Y9S8pjNRrxPuS5gUws43mELAgoENGzvp8ELMb4lsaR66b45IwOCj
	a3hM50yt3X/3nmSAZp8i7AiOl9M9NQyyxud7jd7mKa7X+J67Js3CPBNAG+3g9jNZ+p5Xzx5fMZBwA
	XBg/8O1Q+akg3NRWOIDYlClQ6RbOHibaA8CAZMf6pqGxfoe9gEm3j9YA3HMeK6ZcB2f7JMXgLyTrF
	go5uggpUhDA3of7vFJ6l9pbVYec/hP/pgFh8S819f8Yz6nonY2KC1I70I2AU0ozbnXURIdDdPLb4N
	7WGGS9Qg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mwtyI-00Bnfi-Kc; Mon, 13 Dec 2021 22:39:03 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mwtfj-00Bggn-Om
 for barebox@lists.infradead.org; Mon, 13 Dec 2021 22:19:53 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mwtfi-0001rS-EP; Mon, 13 Dec 2021 23:19:50 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mwtfi-00049f-61; Mon, 13 Dec 2021 23:19:50 +0100
Date: Mon, 13 Dec 2021 23:19:50 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20211213221950.GI6003@pengutronix.de>
References: <20211209105841.3518522-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211209105841.3518522-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 23:19:40 up 3 days, 7:05, 33 users, load average: 0.13, 0.08, 0.09
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211213_141951_874651_FAEB2104 
X-CRM114-Status: GOOD (  23.27  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] fixup! vsprintf: add optional support for %ls format
 modifier
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Dec 09, 2021 at 11:58:41AM +0100, Ahmad Fatoum wrote:
> -- has higher operator precedence than *, so instead of decreasing
> field_width, the pointer was decremented. This lead to misalignment,
> e.g. when doing of_dump. Fix this up.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  lib/vsprintf.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/lib/vsprintf.c b/lib/vsprintf.c
> index ce92787c58ef..9a94a1bbe84e 100644
> --- a/lib/vsprintf.c
> +++ b/lib/vsprintf.c
> @@ -153,7 +153,7 @@ static char *leading_spaces(char *buf, const char *end,
>  			    int len, int *field_width, int flags)
>  {
>  	if (!(flags & LEFT)) {
> -		while (len < *field_width--) {
> +		while (len < (*field_width)--) {
>  			if (buf < end)
>  				*buf = ' ';
>  			++buf;
> @@ -166,7 +166,7 @@ static char *leading_spaces(char *buf, const char *end,
>  static char *trailing_spaces(char *buf, const char *end,
>  			     int len, int *field_width, int flags)
>  {
> -	while (len < *field_width--) {
> +	while (len < (*field_width)--) {
>  		if (buf < end)
>  			*buf = ' ';
>  		++buf;
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

