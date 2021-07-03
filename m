Delivery-date: Sat, 03 Jul 2021 22:43:42 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lzmUI-0003bf-Ct
	for lore@lore.pengutronix.de; Sat, 03 Jul 2021 22:43:42 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lzmUH-0006TJ-Ea
	for lore@pengutronix.de; Sat, 03 Jul 2021 22:43:42 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=6A4rf74arrQMtfgXFZzSi44hwjPo+1tpJerivBNixrU=; b=jl5RL+Q+uZXAYVEZ22A2g3WrBO
	hG3j0ZeeCq0blhYMUh0/6jQHf+8etioLZTLWDfWRC7c6LqIkxRZWrjIfofqUxAuwC0A6wQ3uDIY26
	1T1dUFSLfycmTx0Djsgpgb8ShnlZE7u0sZP8/JDheUFyQXu2T0fF7M0lPXrHYgffnuZXaOPqYINmf
	M0M3BHX98G4BTWcUkLisw+b3+x6iX1ejgOjiuxtbYgQ0Ig9MXEuNhUbITPL0iDUHxQHsjSuU+F7wE
	SVNj+MFgLIEKQsw7rQbFFtH5shnC0ldIaFMtPZFMO6+8yy4OQ+GSq5UWyrelJFUnY2kquQ2tuCD7E
	AEi7IgQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lzmSp-005KIm-PC; Sat, 03 Jul 2021 20:42:11 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lzmSk-005KIS-PZ
 for barebox@lists.infradead.org; Sat, 03 Jul 2021 20:42:08 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lzmSj-0006J1-7D; Sat, 03 Jul 2021 22:42:05 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lzmSi-0007T4-FW; Sat, 03 Jul 2021 22:42:04 +0200
Date: Sat, 3 Jul 2021 22:42:04 +0200
To: Michael Riesch <michael.riesch@wolfvision.net>
Cc: barebox@lists.infradead.org
Message-ID: <20210703204204.GZ9782@pengutronix.de>
References: <d9f643320cc9af6c1ad3fb8170cdd8f6de0dcfb6.camel@phytec.de>
 <20210629120445.10441-1-michael.riesch@wolfvision.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210629120445.10441-1-michael.riesch@wolfvision.net>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 22:41:30 up 136 days, 5 min, 103 users,  load average: 0.30, 0.14,
 0.12
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210703_134206_861186_708A06FB 
X-CRM114-Status: GOOD (  21.50  )
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
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] fixup! commands: of_property: Extend command usage on
 external dtb
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Jun 29, 2021 at 02:04:45PM +0200, Michael Riesch wrote:
> ---
>  commands/of_property.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Thanks for catching this. I had already fixed that up.

Sascha

> 
> diff --git a/commands/of_property.c b/commands/of_property.c
> index 41bb5f71b..063e97775 100644
> --- a/commands/of_property.c
> +++ b/commands/of_property.c
> @@ -346,7 +346,7 @@ static int do_of_property(int argc, char *argv[])
>  			return -errno;
>  		}
>  
> -		root = of_unflatten_dtb(fdt);
> +		root = of_unflatten_dtb(fdt, size);
>  
>  		free(fdt);
>  	}
> -- 
> 2.20.1
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

