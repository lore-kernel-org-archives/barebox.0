Delivery-date: Tue, 04 Jul 2023 09:42:34 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qGagF-00EWNL-VW
	for lore@lore.pengutronix.de; Tue, 04 Jul 2023 09:42:34 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qGagD-0006Xd-ND
	for lore@pengutronix.de; Tue, 04 Jul 2023 09:42:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=PvYmOH96ZYJa297Z5UI4B8jj8Z6hUu0YcfAbxTTshuU=; b=h2qrGctXz1o4Af8l+61cWR7kb/
	9noNE0FsmA+HFr88IxH/TCqjhBxm0hXajk+f2VaP9PX5/i89eOwNf/Z6DEdHmQ01J6UMHmtKTdgXi
	Vo4q2DZntUTDhvHA5j6+b/aiDHK7kubEiC6u0jM2k7B176V/9tW8krlEvS5007fYSlTz4swIviX2q
	aQzk2fX4HR3pqZDmC7Bg+mS/bVgROu2YTOPAF22JOTrGbN+/2yXSyzypTXO0kqmMCvHmamAiQrQRT
	cEXGW544bOi5Yt/fR3ZW8hMxWukydf4+CGx2I6r3NwHxilHitOf6VdQd75/+wkofYz7WTJSrqT2aa
	rQwdilFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qGafW-00CScL-0I;
	Tue, 04 Jul 2023 07:41:50 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qGafS-00CSbh-0l
	for barebox@lists.infradead.org;
	Tue, 04 Jul 2023 07:41:47 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qGafQ-0006UT-AD; Tue, 04 Jul 2023 09:41:44 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qGafQ-0002tm-2l; Tue, 04 Jul 2023 09:41:44 +0200
Date: Tue, 4 Jul 2023 09:41:44 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230704074144.GU18491@pengutronix.de>
References: <20230703185515.1146362-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230703185515.1146362-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230704_004146_276336_61D7B08D 
X-CRM114-Status: GOOD (  22.72  )
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
Subject: Re: [PATCH v2] firmware: use portable newline escape
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Jul 03, 2023 at 08:55:15PM +0200, Ahmad Fatoum wrote:
> We want to print `\n' literally into the *.gen.S file, so gas turns it
> into a literal new line character. Depending on shell, the current
> scheme might not work:
> 
>   $ dash -c echo\ '\\\\n'
>   \n
>   $ bash -c echo\ '\\\\n'
>   \\n
> 
> Fix this by using printf instead. This fixes a cosmetic issue of non-escaped
> `\n' making it into the missing section when building without bash, e.g. on
> NixOS.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
> v1 -> v2:
>   - use printf instead of echo with single quotes as the later behaves
>     differently between bash and dash. Edited commit message
>     appropriately.
> ---
>  firmware/Makefile | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/firmware/Makefile b/firmware/Makefile
> index d7f35853a404..5853950dfe4e 100644
> --- a/firmware/Makefile
> +++ b/firmware/Makefile
> @@ -62,7 +62,7 @@ filechk_fwbin = { \
>  	echo "\#ifdef __PBL__"					;\
>  	echo "    .section .missing_fw,\"a\""			;\
>  	echo "_fwname_$(FWSTR):"				;\
> -	echo ".ascii \"firmware/$(FWNAME)\\\\n\""		;\
> +	printf '.ascii "%s"\n' 'firmware/$(FWNAME)\n'		;\
>  	echo "\#endif" 						;\
>  }
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


