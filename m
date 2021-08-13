Delivery-date: Fri, 13 Aug 2021 10:40:24 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mESjo-0007xk-ST
	for lore@lore.pengutronix.de; Fri, 13 Aug 2021 10:40:24 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mESjl-0002RR-4W
	for lore@pengutronix.de; Fri, 13 Aug 2021 10:40:24 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Cpw5NxaXCbIwSTfCmfOwazDoKPW3HwXWeEIp5VAWLps=; b=jF0idStYX1Ydkh9OatAT+t5XCu
	advc1p/JeZwQtMlxxRVfM8HEah18D7t5intHDhKGt8dBo2SZlxRBphPCSW9T6tQdJPkhewkn+cWQL
	wgCnTZjo6gh1pPoNd1iD6VaXr0YO8RL2XHxFSijAThOW6BFqPhdhG166qrmh0DcHaiE4oeSI/NfJk
	rn0p/tKg46e5GQmvple4yqiiPRgJMVYagFkj0z9sWW/39bSEe76hx7fRv8ZARYZ1E3jlKQppZqBJ+
	/WixLe8NnIiH4es+KzHSl2FTSVPcXXmFSwBmkoaqZ+fGoZEiyVHcCtY/nF/gmeCb/R7Pk05wI477H
	iuN90/RA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mESi8-00CEyk-Nk; Fri, 13 Aug 2021 08:38:40 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mESi1-00CEy4-7A
 for barebox@lists.infradead.org; Fri, 13 Aug 2021 08:38:37 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[127.0.0.1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1mEShz-0002Fc-MQ; Fri, 13 Aug 2021 10:38:31 +0200
To: Marco Felsch <m.felsch@pengutronix.de>, barebox@lists.infradead.org
References: <20210813083221.31763-1-m.felsch@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <ab106998-cb7b-16cc-ad30-29fd29831075@pengutronix.de>
Date: Fri, 13 Aug 2021 10:38:28 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <20210813083221.31763-1-m.felsch@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210813_013833_318943_5E27CE87 
X-CRM114-Status: GOOD (  23.65  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] fastboot net: add setter for global.fastboot.net.autostart
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 13.08.21 10:32, Marco Felsch wrote:
> Without this change the only possible way to start the
> fastboot.net.autostart mechanism is by using the nv storage. Split
> fastboot_on_boot() into two functions:
>  - a globalvar setter fastboot_net_autostart_set() and
>  - a the globalvar init function fastboot_net_init_globalvar().
> This allows init scripts to start the autostart mechanism as well.
> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  net/fastboot.c | 19 +++++++++++++------
>  1 file changed, 13 insertions(+), 6 deletions(-)
> 
> diff --git a/net/fastboot.c b/net/fastboot.c
> index df388adc89..aa483f57a7 100644
> --- a/net/fastboot.c
> +++ b/net/fastboot.c
> @@ -547,14 +547,12 @@ fail_generic_init:
>  static struct fastboot_net *fastboot_net_obj;
>  static int fastboot_net_autostart;
>  
> -static int fastboot_on_boot(void)
> +static int fastboot_net_autostart_set(struct param_d *p, void * priv)
>  {
>  	struct fastboot_net *fbn;
> +	static bool started;
>  
> -	globalvar_add_simple_bool("fastboot.net.autostart",
> -				  &fastboot_net_autostart);
> -
> -	if (!fastboot_net_autostart)
> +	if (!fastboot_net_autostart || started)
>  		return 0;
>  
>  	ifup_all(0);
> @@ -564,16 +562,25 @@ static int fastboot_on_boot(void)
>  		return PTR_ERR(fbn);
>  
>  	fastboot_net_obj = fbn;
> +	started = true;
> +
>  	return 0;
>  }
>  
> +static int fastboot_net_init_globalvar(void)
> +{
> +	return globalvar_add_bool("fastboot.net.autostart",
> +				  fastboot_net_autostart_set,
> +				  &fastboot_net_autostart, NULL);
> +}
> +
>  static void fastboot_net_exit(void)
>  {
>  	if (fastboot_net_obj)
>  		fastboot_net_free(fastboot_net_obj);
>  }
>  
> -postenvironment_initcall(fastboot_on_boot);
> +postenvironment_initcall(fastboot_net_init_globalvar);
>  predevshutdown_exitcall(fastboot_net_exit);
>  
>  BAREBOX_MAGICVAR(global.fastboot.net.autostart,
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

