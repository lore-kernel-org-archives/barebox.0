Delivery-date: Mon, 15 Mar 2021 08:49:45 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lLhyz-0000W6-2N
	for lore@lore.pengutronix.de; Mon, 15 Mar 2021 08:49:45 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lLhyy-0005Dr-BB
	for lore@pengutronix.de; Mon, 15 Mar 2021 08:49:44 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=XOZ4bwDOfJ+jZeP4NFWekLfz0V7oqLTLkaq7/CJkZRg=; b=ZzX1UO2km/mTw0JhylOYjmb/L
	VJlB3Vnvj3zsVQPDC/7mi5eLPPGw/N01b35aS40V2AuZ9uSkkWI/KVC9l4VxLxvsFHy0+G18Gjdik
	s4g02ROkPPcFJU0BJFo6jHKNokqVsn46vGdcuOuuRrfTq5+HPsybVbEJM/1Md9t95rioveO1Pbh1/
	v8vhIxbTLSrdGXOebFel5DHvxgfuwtWWwTYqauNTRaqsh4tnfpW8rfhZtgTaYLw+RpP4/4glHP/af
	crFwGMMa5uU234+nZ/cdI162PZxU87azyX0r/DRh5IR5FeUjn31jVYIS2Uq72TEsrBkiOz8JLITwq
	eN41M75og==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lLhxn-00FABA-Tx; Mon, 15 Mar 2021 07:48:32 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lLhxg-00FAAk-UR
 for barebox@lists.infradead.org; Mon, 15 Mar 2021 07:48:27 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lLhxf-00053B-Hq; Mon, 15 Mar 2021 08:48:23 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lLhxf-000390-6l; Mon, 15 Mar 2021 08:48:23 +0100
Date: Mon, 15 Mar 2021 08:48:23 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20210315074823.GD23724@pengutronix.de>
References: <20210311103157.897-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210311103157.897-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 08:48:12 up 25 days, 11:12, 68 users,  load average: 0.07, 0.06, 0.07
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210315_074825_242333_9578B18E 
X-CRM114-Status: GOOD (  21.16  )
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
Subject: Re: [PATCH] param: drop unused left-over struct members
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Mar 11, 2021 at 11:31:57AM +0100, Ahmad Fatoum wrote:
> Both seem to be a copy-paste left-over from the int param. They are
> unused anywhere, so it's safe to just drop them.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  lib/parameter.c | 2 --
>  1 file changed, 2 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/lib/parameter.c b/lib/parameter.c
> index 1f768ab65ede..adc3c7cdea70 100644
> --- a/lib/parameter.c
> +++ b/lib/parameter.c
> @@ -749,7 +749,6 @@ struct param_d *dev_add_param_bitmask(struct device_d *dev, const char *name,
>  struct param_ip {
>  	struct param_d param;
>  	IPaddr_t *ip;
> -	const char *format;
>  	int (*set)(struct param_d *p, void *priv);
>  	int (*get)(struct param_d *p, void *priv);
>  };
> @@ -828,7 +827,6 @@ struct param_mac {
>  	struct param_d param;
>  	char *mac;
>  	u8 mac_str[sizeof("xx:xx:xx:xx:xx:xx")];
> -	const char *format;
>  	int (*set)(struct param_d *p, void *priv);
>  	int (*get)(struct param_d *p, void *priv);
>  };
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

