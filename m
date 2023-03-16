Delivery-date: Thu, 16 Mar 2023 09:43:18 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pcjCf-002Xu3-Ph
	for lore@lore.pengutronix.de; Thu, 16 Mar 2023 09:43:18 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pcjCf-0003EK-Kb
	for lore@pengutronix.de; Thu, 16 Mar 2023 09:43:18 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vPqaBw4YjGeIfk8JFDmRllWcJsKKZv0r3YLUyTTSsUM=; b=Qs+hq076bmF2QkwHsXX/VeSbDY
	1mEUVbQ7FkTjwwEKnjrCulPhiEqvdXc6k0qtoUdtptnTBRak95oW3xS1r1qVT8X1PsqSNpLjmvaGz
	iE6cOsuFQq00UtfqbrSvMlvXlAlwuWylCK0dkw/q3jOD/u9MgVra5Ltw+gzMY5oPmbvbvthvEH+5I
	hixVCcMU+IKZpN4f3N+owMuByI/mNbE2WvuBQt+jV8f2eVHyhqCPp2My2M1XlxfElGQ3sLwEjUO6s
	YBOkqbJgGH0t+SVMa/UxtaF0V5XabFpM+Qv9Tumbp7JD9440atJ59vH2mq82rRpyhBPfbQioiqmIE
	dgQzfK4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pcjBV-00Fhd4-1d;
	Thu, 16 Mar 2023 08:42:05 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pcjBT-00Fhbj-08
	for barebox@lists.infradead.org;
	Thu, 16 Mar 2023 08:42:04 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pcjBR-0002P8-Os; Thu, 16 Mar 2023 09:42:01 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pcjBR-0004OP-HN; Thu, 16 Mar 2023 09:42:01 +0100
Date: Thu, 16 Mar 2023 09:42:01 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230316084201.GP7446@pengutronix.de>
References: <20230315143522.1512531-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230315143522.1512531-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230316_014203_078138_277A46BD 
X-CRM114-Status: GOOD (  21.69  )
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
Subject: Re: [PATCH master] net: dsa: abort registration when master is
 unresolvable
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Mar 15, 2023 at 03:35:22PM +0100, Ahmad Fatoum wrote:
> ds->edev_master is used in a lot places and if we can't populate,
> because the Ethernet device wasn't found, we should abort instead of
> crashing later on.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/net/dsa.c | 7 +++++--
>  1 file changed, 5 insertions(+), 2 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/net/dsa.c b/drivers/net/dsa.c
> index 793bbbb4f18f..6a3b829e15a4 100644
> --- a/drivers/net/dsa.c
> +++ b/drivers/net/dsa.c
> @@ -400,8 +400,11 @@ static int dsa_switch_parse_ports_of(struct dsa_switch *ds,
>  		}
>  
>  		master = of_parse_phandle(port, "ethernet", 0);
> -		if (master)
> -			dsa_switch_register_master(ds, port, master, reg);
> +		if (master) {
> +			ret = dsa_switch_register_master(ds, port, master, reg);
> +			if (ret)
> +				return ret;
> +		}
>  	}
>  
>  	/* Now we can register regular switch ports  */
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


