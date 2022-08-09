Delivery-date: Tue, 09 Aug 2022 07:26:45 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oLHlL-00Gw5q-Fy
	for lore@lore.pengutronix.de; Tue, 09 Aug 2022 07:26:45 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oLHlM-0008DX-BS
	for lore@pengutronix.de; Tue, 09 Aug 2022 07:26:45 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
	Subject:Cc:To:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=O0ZDLw4b7ppgntx2oM3KGgk1h1jprWYdv0XX9PmcRN8=; b=BIsQBLc1ImBsIn+tnjOp7KUvQ6
	p/nmJKxCaeq8VLeYfvlbxWJYieBFRAvubehGa3VxF6AYJPTnL6P8WNMtUBxl4mfgvEwPCmOYbxkAP
	pzNJl7VW8WRYkt7+IORZ8rJMZAdsXQloyfjUktyE1E4YXmT36JPQTigWTl1zaWLl5uGypmK1L5CvW
	ThLwtaJ0aS8IBNUZVq9a1eLmu0UJuLBROFykNpqlNlgqhMgsN29xB+/gXPaKtY08Ssk6PXLZXNSSN
	PJ928OAfgc3IQUdySvSNH7wWuEDconTyJ0XxmbmMTbuGwzgcin7AaJVQdJp2aIGWZ0IXBGwYMvQ8r
	xqnEmZBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oLHk9-001WQq-C8; Tue, 09 Aug 2022 05:25:29 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oLHk2-001WOR-Jh
	for barebox@lists.infradead.org; Tue, 09 Aug 2022 05:25:24 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oLHk1-0007sa-Bn; Tue, 09 Aug 2022 07:25:21 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oLHk1-0004bu-2w; Tue, 09 Aug 2022 07:25:21 +0200
Date: Tue, 9 Aug 2022 07:25:21 +0200
To: Ulrich =?iso-8859-15?Q?=D6lmann?= <u.oelmann@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <20220809052521.GC31528@pengutronix.de>
References: <20220722101823.2585924-1-u.oelmann@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-15
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220722101823.2585924-1-u.oelmann@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220808_222522_673621_4189C121 
X-CRM114-Status: GOOD (  18.45  )
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
Subject: Re: [PATCH] doc: bootchooser: fix typo
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Jul 22, 2022 at 12:18:23PM +0200, Ulrich Ölmann wrote:
> Signed-off-by: Ulrich Ölmann <u.oelmann@pengutronix.de>
> ---
>  Documentation/user/bootchooser.rst | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/Documentation/user/bootchooser.rst b/Documentation/user/bootchooser.rst
> index 8456e118230b..db0a4f8898d5 100644
> --- a/Documentation/user/bootchooser.rst
> +++ b/Documentation/user/bootchooser.rst
> @@ -83,7 +83,7 @@ The bootchooser algorithm aborts when all enabled targets (priority > 0) have
>  no remaining attempts left.
>  
>  To prevent ending up in an unbootable system after a number of failed boot
> -attempts, there is a also a built-in mechanism to reset the counters to their defaults,
> +attempts, there is also a built-in mechanism to reset the counters to their defaults,
>  controlled by the ``global.bootchooser.reset_attempts`` variable. It holds a
>  list of space-separated flags. Possible values are:
>  
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


