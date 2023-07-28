Delivery-date: Fri, 28 Jul 2023 08:42:19 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qPHB6-00D9Fs-Hv
	for lore@lore.pengutronix.de; Fri, 28 Jul 2023 08:42:19 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qPHB3-0006QL-Vm
	for lore@pengutronix.de; Fri, 28 Jul 2023 08:42:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3oKitfqlRVo0xgq0E0kVpKGXdLqg5AjLatPIKb3wVEg=; b=4R0UuhcFqiUMdr+EAcLXYbsOLM
	SZybSO9JMi0A6MlIs1tfpsMgH3znHWegCE8jm3Aw1O0HVl0rVsiOaqgfSovfwIIVoyboDSekWEC8k
	8Wi3vPE/4sVb+q0IXiP26LFgmgitnj/RXtjWHiQGrb8jD1A1w6MuD868Rao+H8E+M749O404R83Kw
	DGzuXTy409dciQaOu+rr4eolOBu9Qum2ZAKMPCGM3IFm3pUb+5qfM1Q3NQNklXq4DRjzk0daxFYn4
	leNC2+BHtquh1FJ2r6DkRxbEqTluQ37hCmol1hNJaqW6beCwAB74CLnvkzLUH0gpTMiNXi3SvQsfU
	51iwYfuw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qPH9y-001vEl-08;
	Fri, 28 Jul 2023 06:41:10 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qPH9r-001vB2-2X
	for barebox@lists.infradead.org;
	Fri, 28 Jul 2023 06:41:08 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qPH9p-0006Jm-6g; Fri, 28 Jul 2023 08:41:01 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qPH9o-0004yC-Vt; Fri, 28 Jul 2023 08:41:00 +0200
Date: Fri, 28 Jul 2023 08:41:00 +0200
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230728064100.GH18491@pengutronix.de>
References: <20230704121626.835344-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230704121626.835344-1-m.felsch@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230727_234103_819267_609DBB74 
X-CRM114-Status: GOOD (  20.97  )
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
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v3 1/2] commands: test: simplify argv handling
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Jul 04, 2023 at 02:16:25PM +0200, Marco Felsch wrote:
> Decrement argc first before check the closing ']' to avoid the
> *argv[argc - 1]. No functional change.
> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> ---
> v3:
> - no changes
> v2:
> - no changes
> 
>  commands/test.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/commands/test.c b/commands/test.c
> index c845cec017..c1b84c42ef 100644
> --- a/commands/test.c
> +++ b/commands/test.c
> @@ -75,11 +75,11 @@ static int do_test(int argc, char *argv[])
>  	struct stat statbuf;
>  
>  	if (*argv[0] == '[') {
> -		if (*argv[argc - 1] != ']') {
> +		argc--;
> +		if (*argv[argc] != ']') {
>  			printf("[: missing `]'\n");
>  			return 1;
>  		}
> -		argc--;
>  	}
>  
>  	/* args? */
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


