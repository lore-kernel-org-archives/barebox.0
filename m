Delivery-date: Wed, 11 Aug 2021 20:24:18 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mDstm-00064y-AG
	for lore@lore.pengutronix.de; Wed, 11 Aug 2021 20:24:18 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mDstj-0003iw-G5
	for lore@pengutronix.de; Wed, 11 Aug 2021 20:24:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=kKvwJiCwQOJVX5moE9f7iJD7tRqbENAYBKXmlHe4FZM=; b=2AAv5ERosV53PjyA2j6ZtpeaP9
	JEphXKgQTR42wKmfESjSs6IZjTtTTVMoA/I8fenyeAYNh8IkEt8sGl9bqsEaQNmLsb9CyVlN1wjV3
	TdJd5wzL8Wws5IKDPxavd8HRqyCU4yWWsPXWQKP4vdSY5mY9o8ymjeQ3epG1DGXPalhWUxUygMQpl
	IBVF13Qzry0Da58iQpOnee9AvB/yGV+qLohwpNc2Ag/TOd3tdzrmjF1Hrdw8Ww8yGryKJXfPsR/xw
	KhYXHEW2j+ieFUvDMXcVFFdWM2S4eEn46W+AiAvTlf7UYcqPULF3paEe4AjuonppB/gv0dXeiXL7x
	g8AnFy0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mDsry-007sc5-Nh; Wed, 11 Aug 2021 18:22:26 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mDsrq-007sbh-Vn
 for barebox@lists.infradead.org; Wed, 11 Aug 2021 18:22:23 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[127.0.0.1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1mDsrp-0003eI-CG; Wed, 11 Aug 2021 20:22:17 +0200
To: Marco Felsch <m.felsch@pengutronix.de>, barebox@lists.infradead.org
References: <20210811172504.11396-1-m.felsch@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <9e266302-92a1-a577-d38c-fc240177b169@pengutronix.de>
Date: Wed, 11 Aug 2021 20:22:15 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <20210811172504.11396-1-m.felsch@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210811_112219_295806_0DA3ABB9 
X-CRM114-Status: GOOD (  23.39  )
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
Subject: Re: [PATCH] fastboot net: add global.fastboot.net.autostart early
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 11.08.21 19:25, Marco Felsch wrote:
> Split adding the fastboot.net.autostart to the global device and make
> use of it. With this change it is possible to set it e.g. during
> environment_initcall() and the later on followed fastboot_on_boot() can
> use it to start fastboot it automatically during boot.

So what you fix here is use of global fastboot.net.autostart from within
init scripts, or what is your use case?

> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> ---
>  net/fastboot.c | 11 ++++++++---
>  1 file changed, 8 insertions(+), 3 deletions(-)
> 
> diff --git a/net/fastboot.c b/net/fastboot.c
> index df388adc89..a5a7caf526 100644
> --- a/net/fastboot.c
> +++ b/net/fastboot.c
> @@ -547,12 +547,16 @@ fail_generic_init:
>  static struct fastboot_net *fastboot_net_obj;
>  static int fastboot_net_autostart;
>  
> -static int fastboot_on_boot(void)
> +static int fastboot_net_globalvars_init(void)
>  {
> -	struct fastboot_net *fbn;
> -
>  	globalvar_add_simple_bool("fastboot.net.autostart",
>  				  &fastboot_net_autostart);
> +	return 0;
> +}
> +
> +static int fastboot_on_boot(void)
> +{
> +	struct fastboot_net *fbn;
>  
>  	if (!fastboot_net_autostart)
>  		return 0;
> @@ -573,6 +577,7 @@ static void fastboot_net_exit(void)
>  		fastboot_net_free(fastboot_net_obj);
>  }
>  
> +device_initcall(fastboot_net_globalvars_init);
>  postenvironment_initcall(fastboot_on_boot);
>  predevshutdown_exitcall(fastboot_net_exit);
>  
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

