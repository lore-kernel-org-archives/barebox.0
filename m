Delivery-date: Wed, 26 Jul 2023 12:16:06 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qObYt-00Ag4o-Hf
	for lore@lore.pengutronix.de; Wed, 26 Jul 2023 12:16:06 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qObYq-0002S0-II
	for lore@pengutronix.de; Wed, 26 Jul 2023 12:16:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=JKmMGk15bmF1aWkTHJte+rkva1y3Y+aQKJmYCbvdeEw=; b=cgcEObjPv1rwY/LynSp9Pz0wS5
	bOs2aJVPHlMml9tNcScG2JJLQ0BzU6PyTyYK0c4/EyKLMGLeO/5Htld1CmNqWS7BtlyycuCCqT9t/
	Y2vFz+i/lX8i/AHewkAtJGuu2jDxkbvxLE5utjMa9hsLG4kjzjVlnVcQtWxNYqEFRWWCAkjxPM2JR
	NP/Yq5Pa71XjF4eBe4mFaWU4Yc9EUotD5h2J9jnqHVF9bY2CZdYbVkCC+j03BMqH6nrik7fFQnKSa
	zAsRZX47uQ+qYU6uJBW/zEB5xOP5Dr0/tC39p1jzpcyAVbKKCtt+hLOjrhrd0PCQfo0a8WizPpNRA
	qlrskznA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qObXo-009s7i-18;
	Wed, 26 Jul 2023 10:15:00 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qObXl-009s6l-2J
	for barebox@lists.infradead.org;
	Wed, 26 Jul 2023 10:14:59 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qObXj-0002B5-RS; Wed, 26 Jul 2023 12:14:55 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qObXj-0007kn-KG; Wed, 26 Jul 2023 12:14:55 +0200
Date: Wed, 26 Jul 2023 12:14:55 +0200
To: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230726101455.GJ18491@pengutronix.de>
References: <20230719134630.174215-1-r.czerwinski@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230719134630.174215-1-r.czerwinski@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230726_031457_760713_2EB540CE 
X-CRM114-Status: GOOD (  19.92  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] rsa: escape pkcs11 string passed to RSA command
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Jul 19, 2023 at 03:46:30PM +0200, Rouven Czerwinski wrote:
> Escape the pkcs11 string that can be passed to the rsatoc script.
> Otherwise the sh -c invocation for commands will interpret the pkcs11
> URI semicolon separator as the end of the command.
> 
> Fixes: b39100bcea12 ("rsa: Allow to directly compile in rsa public keys")
> 
> Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
> ---
>  scripts/Makefile.lib | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
> index f04c09f9e2..fe77c83ba2 100644
> --- a/scripts/Makefile.lib
> +++ b/scripts/Makefile.lib
> @@ -625,7 +625,7 @@ quiet_cmd_b64dec = B64DEC  $@
>  # target file.
>  quiet_cmd_rsa_keys = RSAKEY  $@
>  cmd_rsa_keys = \
> -	$(objtree)/scripts/rsatoc -o $@.tmp $(2) &&			\
> +	$(objtree)/scripts/rsatoc -o $@.tmp "$(2)" &&			\
>  	if cmp -s $@.tmp $@; then					\
>  		rm $@.tmp;						\
>  	else								\
> -- 
> 2.41.0
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


