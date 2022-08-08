Delivery-date: Mon, 08 Aug 2022 13:21:38 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oL0pE-00G5lt-71
	for lore@lore.pengutronix.de; Mon, 08 Aug 2022 13:21:38 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oL0pF-00017L-4c
	for lore@pengutronix.de; Mon, 08 Aug 2022 13:21:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wlEN7Cc0z++EP9Ye2kArtTz0voCyqutg1tkNyV0q7b0=; b=ytfI1VzBfqo0a8jKeDWQxnjcEs
	vGnQU4N8WaYMA4BR41QbuoZ49hpDw5E3HIXVs9AI03jsZ5h+h85S1dZ3mu2MNjHSo8bfdmwNFMROf
	HvPzlFkfo3mfWHUiKMEqCth6d17HZneQ04S5pBM9+YodrcVs19HW2UPLhNzRBhunmALVXabgJddDt
	Wcy5aLGf0xgLxxd+0EF77OVxDniaR04Ea46rGRy4H/I0kR/uUB8tdbCccrLt+H1dDAY2V9Xo62xaT
	JYoQcuEIAAi7k1QHTqM/NKNKECiUjQLuqDh9DQz3mmWn7Yd/rd4xtNMyYnsFn476PumN5q2RN/RC2
	zaaORQBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oL0o4-00DBXC-M1; Mon, 08 Aug 2022 11:20:24 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oL0o0-00DBWC-PF
	for barebox@lists.infradead.org; Mon, 08 Aug 2022 11:20:22 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oL0nz-0000nI-HL; Mon, 08 Aug 2022 13:20:19 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oL0nz-0005Pj-8H; Mon, 08 Aug 2022 13:20:19 +0200
Date: Mon, 8 Aug 2022 13:20:19 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220808112019.GF7333@pengutronix.de>
References: <20220808062028.391120-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220808062028.391120-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220808_042020_835532_266E2FF5 
X-CRM114-Status: GOOD (  24.23  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] string: implement str_has_prefix
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Aug 08, 2022 at 08:20:28AM +0200, Ahmad Fatoum wrote:
> In addition to strstarts which we already have, Linux also defines
> str_has_prefix(), which returns the length of the prefix on success and
> zero otherwise. This allows writing straight-forward code to skip over
> a prefix in case it exists. Port it over.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  include/linux/string.h | 21 +++++++++++++++++++++
>  1 file changed, 21 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/include/linux/string.h b/include/linux/string.h
> index ae5e5bca8d24..0c79d3e5cf3e 100644
> --- a/include/linux/string.h
> +++ b/include/linux/string.h
> @@ -155,4 +155,25 @@ static inline bool strstarts(const char *str, const char *prefix)
>  	return strncmp(str, prefix, strlen(prefix)) == 0;
>  }
>  
> +/**
> + * str_has_prefix - Test if a string has a given prefix
> + * @str: The string to test
> + * @prefix: The string to see if @str starts with
> + *
> + * A common way to test a prefix of a string is to do:
> + *  strncmp(str, prefix, sizeof(prefix) - 1)
> + *
> + * But this can lead to bugs due to typos, or if prefix is a pointer
> + * and not a constant. Instead use str_has_prefix().
> + *
> + * Returns:
> + * * strlen(@prefix) if @str starts with @prefix
> + * * 0 if @str does not start with @prefix
> + */
> +static __always_inline size_t str_has_prefix(const char *str, const char *prefix)
> +{
> +	size_t len = strlen(prefix);
> +	return strncmp(str, prefix, len) == 0 ? len : 0;
> +}
> +
>  #endif /* _LINUX_STRING_H_ */
> -- 
> 2.30.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


