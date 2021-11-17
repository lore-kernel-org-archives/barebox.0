Delivery-date: Wed, 17 Nov 2021 08:23:03 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mnFHb-0004kn-KH
	for lore@lore.pengutronix.de; Wed, 17 Nov 2021 08:23:03 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mnFHa-00020m-FN
	for lore@pengutronix.de; Wed, 17 Nov 2021 08:23:03 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=NiDGjlqLAQyjWTPraHv4RVxrLnLfw24WPwTJ5jwP8iQ=; b=HG4+BT6m+b79sVF2BnLbxL9oy0
	jhwIcof221Ovj5LYZBuEkhOAYX0zakwlqmP9LYoLdK3IWUUmwWwJltcdx5pkkF75Ft0EQZfV6pm+w
	K16H2LXmsgshfOsKbI2IfAU9bmSWcnUHcxPq6B32kE4Ed+gX4PfH2XEWG0o+OTh4CEkWtXJtzCf0C
	dkadKFt3Bhm7K9MeHDdhi+BI8PLweAA1TSg6pZSPrujuo5e0TtgjaNpgNbdZw6CEihON5aqNQ+G0n
	I1gOag7b7vKZh3I/oNY7DFBZYMfPuIEWfZK4R2yEwpXVWUNbQgxXOhVYDA4AwTW8c+jTZlQnrGRLs
	cdytqfPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mnFG7-003kJI-RQ; Wed, 17 Nov 2021 07:21:32 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mnFFw-003kHd-BF
 for barebox@lists.infradead.org; Wed, 17 Nov 2021 07:21:21 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mnFFu-0001mE-LJ; Wed, 17 Nov 2021 08:21:18 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mnFFu-0005SQ-6f; Wed, 17 Nov 2021 08:21:18 +0100
Date: Wed, 17 Nov 2021 08:21:18 +0100
To: Andrej Picej <andrej.picej@norik.com>
Cc: barebox@lists.infradead.org, Y.Bas@phytec.de, s.riedmueller@phytec.de
Message-ID: <20211117072118.GH6556@pengutronix.de>
References: <20211115130208.619443-1-andrej.picej@norik.com>
 <20211115130208.619443-4-andrej.picej@norik.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211115130208.619443-4-andrej.picej@norik.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 08:12:05 up 272 days, 10:35, 117 users,  load average: 0.07, 0.27,
 0.29
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211116_232120_435218_C8DCC5FD 
X-CRM114-Status: GOOD (  27.49  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 3/5] regulator: allow use of dummy regulator
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Nov 15, 2021 at 02:02:06PM +0100, Andrej Picej wrote:
> It is quite common for users to delete power supply nodes of regulators
> which aren't yet supported.
> The idea of a function call or devicetree property which allows use of
> dummy regulator is not new. This implementation uses barebox specific
> devicetree property "barebox,allow-dummy-supply" to allow switching to
> dummy power regulator.
> Basically just catch the regulators ensure_probed error, if this
> property is set.
> 
> Signed-off-by: Andrej Picej <andrej.picej@norik.com>
> ---
>  drivers/regulator/core.c | 9 ++++++++-
>  1 file changed, 8 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/regulator/core.c b/drivers/regulator/core.c
> index 097f7d779..1c58932e1 100644
> --- a/drivers/regulator/core.c
> +++ b/drivers/regulator/core.c
> @@ -231,8 +231,15 @@ static struct regulator_internal *of_regulator_get(struct device_d *dev, const c
>  	}
>  
>  	ret = of_device_ensure_probed(node);
> -	if (ret)
> +	if (ret) {
> +		if (of_get_property(dev->device_node, "barebox,allow-dummy-supply", NULL)) {
> +			dev_dbg(dev, "Allow use of dummy regulator for " \
> +				"%s-supply\n", supply);
> +			ri = NULL;
> +			goto out;
> +		}
>  		return ERR_PTR(ret);

I wonder if we should rather add a property on the producer side than on
the consumer side, i.e. Add a barebox,status = "disabled" property to
the regulator node. We had the same discussion with phys recently, maybe
we can use the same approach for both issues.

Sascha


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

