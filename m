Delivery-date: Tue, 04 Apr 2023 12:47:44 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pjeCV-009cir-TV
	for lore@lore.pengutronix.de; Tue, 04 Apr 2023 12:47:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pjeCV-0006h2-Qg
	for lore@pengutronix.de; Tue, 04 Apr 2023 12:47:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tT0UixUzf7iD1Ps+rsfxkZjjdwK9CBfeCYZU5dsGr4g=; b=0i/dnwv0YfSHyVOZ0pSWv6eBWg
	qMtz1RB2cj1ZTf29KAt8S8d/2TCLH+WD6xPnoDU4VI3OIfE52hIQKRM6V9AL4kW3A7QQbk0PscxbF
	t+g54RykRJ/EE3eXU3xPHQT3QOkBuOcQ2WhM9FQ2qeqaq7p+1+iEa8zERYMbTD328RqlwiphIiwak
	Pl4/PZb2KLdMKiwTaR+GE1sbVA7kVMeyQ5jajLGnoH9wWF4OSiwFe9Aa0Jm9ADacCEp4i6xZV+xkT
	6F0uLi+4qiV3maRhWet1LSVFxcY+s2zv4M3HA/7XQWCCP6dvlQuHBkKZZyeFOOp/RilpNcqK2qbS8
	i/odN/6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pjeBX-000vvx-2G;
	Tue, 04 Apr 2023 10:46:43 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pjeBU-000vur-0c
	for barebox@lists.infradead.org;
	Tue, 04 Apr 2023 10:46:41 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pjeBS-0006Rd-U2; Tue, 04 Apr 2023 12:46:38 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pjeBS-00047l-M6; Tue, 04 Apr 2023 12:46:38 +0200
Date: Tue, 4 Apr 2023 12:46:38 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, g@pengutronix.de
Cc: barebox@lists.infradead.org
Message-ID: <20230404104638.GY19113@pengutronix.de>
References: <20230404090542.1820785-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230404090542.1820785-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230404_034640_227664_DC581678 
X-CRM114-Status: GOOD (  19.90  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] hush: pacify clang -Wparentheses-equality warning
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Apr 04, 2023 at 11:05:42AM +0200, Ahmad Fatoum wrote:
> Code is fine, but clang's -Wparentheses-equality warns when using double
> parentheses in conditionals that don't do assignment. This aligns with
> our code style as well, so change it to silence the warning.
> 
> No functional change.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  common/hush.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/common/hush.c b/common/hush.c
> index 5138a1a45ae9..608c0e4937c1 100644
> --- a/common/hush.c
> +++ b/common/hush.c
> @@ -1837,7 +1837,7 @@ static char **make_list_in(char **inp, char *name)
>  		p3 = insert_var_value(inp[i]);
>  		p1 = p3;
>  		while (*p1) {
> -			if ((*p1 == ' ')) {
> +			if (*p1 == ' ') {
>  				p1++;
>  				continue;
>  			}
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


