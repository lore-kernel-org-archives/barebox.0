Delivery-date: Mon, 15 Mar 2021 09:07:04 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lLiFk-0000Xq-UN
	for lore@lore.pengutronix.de; Mon, 15 Mar 2021 09:07:04 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lLiFk-0007gd-3Q
	for lore@pengutronix.de; Mon, 15 Mar 2021 09:07:04 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=oJryWv2JADQCXYjvtJDh5CXdn8luwAOBUCzqaw8fp28=; b=CWUHCarnSl1CldKyXBPhgwdJH
	dRlKa07GjCNWErVhS63ln1ljGAXl8uT3SGRxLjHzb0XIgcNf1A3+zqA18X6f7HMb5IBjWIoBYHVVv
	96dZiXbnV5aM/ubXxvTBBdg0fdWG4vU60OAT3fg6H07vhkhEQZLHf0+2O4QHN1N3LdyqsMg9rztil
	eVDSM6o4wTOH0SzNxvMz/cPoz+dIq9P4YSnMLcY02ZWeTMoE8Znw+wszJWRcbGOskKdWVQaMuFBil
	JqXQeBsP9mJX/1ikQUIyKmR8ADHL2JhHT3h0nnQ54xvHfGy1iPihtWlmwfAMFi6OT//OEf/Sl0jRP
	5jwxik2rA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lLiE3-00FBwM-9X; Mon, 15 Mar 2021 08:05:19 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lLiDu-00FBvn-Gm
 for barebox@lists.infradead.org; Mon, 15 Mar 2021 08:05:15 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lLiDu-0007HX-2s; Mon, 15 Mar 2021 09:05:10 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lLiDt-0004vz-Q9; Mon, 15 Mar 2021 09:05:09 +0100
Date: Mon, 15 Mar 2021 09:05:09 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20210315080509.GG23724@pengutronix.de>
References: <20210312082218.17058-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210312082218.17058-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:04:58 up 25 days, 11:28, 72 users,  load average: 0.30, 0.46, 0.27
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210315_080510_880135_D632F5B3 
X-CRM114-Status: GOOD (  29.88  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH master] of: base: probe simple-pm-bus children as well
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Mar 12, 2021 at 09:22:18AM +0100, Ahmad Fatoum wrote:
> Upstream is migrating device trees like those of the am33xx to use
> simple-pm-bus, where applicable. These are buses that reference a clock
> or a power domain that needs to be enabled in order to use devices on it.
> 
> As we didn't yet support this binding, this broke the Beaglebone
> and all other am33xx board since v2021.02.0.
> 
> Fix this by adding simple-pm-bus to the of_default_bus_match_table.
> Note that this is only an adequate solution for when the power domain
> and clocks referenced are already enabled prior to barebox startup.
> 
> For all other cases, driver support must be available for the clock
> and power domains in questions and this driver must be extended to
> make use of them. For the am33xx, the relevant buses are powered
> and clocked on boot up, so we leave general support to another day..
> 
> Fixes: 6ea3de1b8ce7 ("dts: update to v5.11-rc1")
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/of/base.c | 2 ++
>  1 file changed, 2 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/drivers/of/base.c b/drivers/of/base.c
> index 8759099d7480..6fe02649ee53 100644
> --- a/drivers/of/base.c
> +++ b/drivers/of/base.c
> @@ -2272,6 +2272,8 @@ const char *of_get_model(void)
>  const struct of_device_id of_default_bus_match_table[] = {
>  	{
>  		.compatible = "simple-bus",
> +	}, {
> +		.compatible = "simple-pm-bus",
>  	}, {
>  		.compatible = "simple-mfd",
>  	}, {
> -- 
> 2.29.2
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

