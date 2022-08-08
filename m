Delivery-date: Mon, 08 Aug 2022 15:09:00 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oL2V8-00GClv-DU
	for lore@lore.pengutronix.de; Mon, 08 Aug 2022 15:09:00 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oL2V8-0007sz-Tn
	for lore@pengutronix.de; Mon, 08 Aug 2022 15:08:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=KEUoI2IXayfhray0aUKxLYZe09v9X9biwST2A+qu+Rc=; b=riiPgXv3LZtgy2bHZtKlc6WWHu
	RjAlJoZhtfYStlSiFNJ6xY4d2JQPl8/MJ+5N9vvGi9IgGYuAXgV20/aw/+ElWYK+6nB+Wgo7DIAMu
	xlGCAVboTXYkJuz7Wn3C5DNlRFqyYOcvg/QoRSJxDeBnuM3zaUwUeCqVcKI1jQaQCQo1l8QfgzecR
	vjSMzBPvhz/z1Q98QRTLZ0nyvYyA5aFajr62zuBLQCg3eTD541XX7W3Y6VwybMh1mKDbvESh6I5XW
	98yPCXzTU9XzUP4FqLdphlQN9R1rluwrk3briAOjbNX195ftS7HJtQGBFSdYJBEJzfxe3rBsuEDZb
	P1FhFrcQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oL2Tx-00Dwoa-Al; Mon, 08 Aug 2022 13:07:45 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oL2Tp-00Dwmi-62
	for barebox@lists.infradead.org; Mon, 08 Aug 2022 13:07:40 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oL2Tn-0007hm-Tv; Mon, 08 Aug 2022 15:07:35 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oL2Tn-000333-Kd; Mon, 08 Aug 2022 15:07:35 +0200
Date: Mon, 8 Aug 2022 15:07:35 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220808130735.GJ31528@pengutronix.de>
References: <20220804150139.3760886-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220804150139.3760886-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220808_060737_244777_CA86DAAD 
X-CRM114-Status: GOOD (  18.95  )
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
Subject: Re: [PATCH master] net: dsa: fix format string mismatch
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Aug 04, 2022 at 05:01:39PM +0200, Ahmad Fatoum wrote:
> ds->num_ports has type size_t, but is printed with %u. Fix this.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/net/dsa.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/net/dsa.c b/drivers/net/dsa.c
> index d9e629cefc53..7a64a7941223 100644
> --- a/drivers/net/dsa.c
> +++ b/drivers/net/dsa.c
> @@ -383,7 +383,7 @@ static int dsa_switch_parse_ports_of(struct dsa_switch *ds,
>  		}
>  
>  		if (reg >= ds->num_ports) {
> -			dev_err(ds->dev, "port %pOF index %u exceeds num_ports (%u)\n",
> +			dev_err(ds->dev, "port %pOF index %u exceeds num_ports (%zu)\n",
>  				port, reg, ds->num_ports);
>  			ret = -EINVAL;
>  			goto out_put_node;
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


