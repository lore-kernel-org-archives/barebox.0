Delivery-date: Mon, 28 Mar 2022 10:58:33 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nYlCn-008okB-TM
	for lore@lore.pengutronix.de; Mon, 28 Mar 2022 10:58:33 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nYlCq-0001St-Ed
	for lore@pengutronix.de; Mon, 28 Mar 2022 10:58:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=p3mlH7xuMjJAF2DulWCeBjq+59Hr1mtr/9rcFFve0zw=; b=kPnnzCJKcziGWHk4m3QCclJiHh
	WDAVonz54M08wwxjkXArQptcFNiAcJbasIn8D2CILrSRgqEyt0sNwvEIz1gZaONQEOzgZDS97vSyc
	rzBxE5EQ1cY3v8V7nvnU5+GmgDXZ06/V6+nCJodkv+2cAFNP4tFO318WZKdrewKWr4tjAq1OJfCDR
	/Wm984/llAIz1zKZnR3NDyl/8Q7AaMsIJh9f8M/Ez9qA0t4TBEc+qBzVaAytP+zoIXsRLu4jMBbTi
	SiFeQkcgZ/diR92TXrrTmKjTSXPmDV+A6HnmVwU18TeXjjIfTJEzasouhbgZjroyfOLpGLpRRe1v5
	fNBQED9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nYlBf-007wvl-6K; Mon, 28 Mar 2022 08:57:19 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nYlBZ-007wuA-05
 for barebox@lists.infradead.org; Mon, 28 Mar 2022 08:57:14 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nYlBX-00014n-Pb; Mon, 28 Mar 2022 10:57:11 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nYlBX-0005uq-H1; Mon, 28 Mar 2022 10:57:11 +0200
Date: Mon, 28 Mar 2022 10:57:11 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220328085711.GO12181@pengutronix.de>
References: <20220318152851.729901-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220318152851.729901-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 10:57:00 up 107 days, 17:42, 85 users,  load average: 0.27, 0.29,
 0.23
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220328_015713_067976_28D43EE4 
X-CRM114-Status: GOOD (  20.07  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] scripts: remove non-existent bareboxstate binaries from
 .gitignore
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Mar 18, 2022 at 04:28:51PM +0100, Ahmad Fatoum wrote:
> barebox builds no tools with these names. The normal barebox-state
> utility comes from dt-utils, so drop the unnecessary entries.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  scripts/.gitignore | 2 --
>  1 file changed, 2 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/scripts/.gitignore b/scripts/.gitignore
> index 6ef43640b79f..f78793eab7da 100644
> --- a/scripts/.gitignore
> +++ b/scripts/.gitignore
> @@ -22,8 +22,6 @@ bareboxenv-target
>  kernel-install-target
>  bareboxcrc32-target
>  bareboximd-target
> -bareboxstate
> -bareboxstate-target
>  mk-am35xx-spi-image
>  mxsimage
>  mxsboot
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

