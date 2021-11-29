Delivery-date: Mon, 29 Nov 2021 09:10:10 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mrbjm-0004CN-AO
	for lore@lore.pengutronix.de; Mon, 29 Nov 2021 09:10:10 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mrbjk-0005MK-Sa
	for lore@pengutronix.de; Mon, 29 Nov 2021 09:10:10 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=dGv3VtRmG1wzbyI8oKwE59FJHPx7QEQv/xsLhLoW4zw=; b=RG8QdN76aygBmohTXHC0Ec6N3H
	AeoeU3YQfC7eCUULAVfUvmGg3hp3qgkI4ofAVcHsGTLU+mzJfa/nXbEGaSIL74w/whpKcVW6iuGQ9
	KKnKlA+cvKvZ3Sw9ClZtLBqao5CfPOSzoAZK82cchmV6KA1DTtyYIrmIZsFVZ3Zdow4FF8aCI/e+/
	q+BD1G/nCLsZPTOxCJpPkI3e8wMK82N8dqkNlNThJWnDl7sYGTlRzBeX33kAjvB10mFIIwzdN51UX
	7zVDNfZ92osZdJauAx6inwkvwKOvY4fAjM2k0Hs8pKvC5x6dcI7AIilJaxWdAIUxVQBVXC91kWBJ8
	+jyDVKWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mrbhX-0004ev-JG; Mon, 29 Nov 2021 08:07:51 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mrbhS-0004dt-PA
 for barebox@lists.infradead.org; Mon, 29 Nov 2021 08:07:48 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1mrbhF-0005H9-C4; Mon, 29 Nov 2021 09:07:33 +0100
To: Ahmad Fatoum <ahmad@a3f.at>, barebox@lists.infradead.org
References: <20211129071542.2014668-1-ahmad@a3f.at>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <64da1ffd-3034-c42b-9e5c-bdafbde4b537@pengutronix.de>
Date: Mon, 29 Nov 2021 09:07:33 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <20211129071542.2014668-1-ahmad@a3f.at>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211129_000746_855898_DAF6C324 
X-CRM114-Status: GOOD (  18.60  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] devinfo: Omit parent if direct descendent of bus
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 29.11.21 08:15, Ahmad Fatoum wrote:
> In that case parentage adds no extra info, so we can just omit it.
> 
> Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
> ---

Please dismiss. Sent out a (misnamed) v2 just now.

>  commands/devinfo.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/commands/devinfo.c b/commands/devinfo.c
> index 2e2e48e42cc5..b4894cc9272d 100644
> --- a/commands/devinfo.c
> +++ b/commands/devinfo.c
> @@ -85,7 +85,7 @@ static int do_devinfo(int argc, char *argv[])
>  		if (dev->info)
>  			dev->info(dev);
>  
> -		if (dev->parent)
> +		if (dev->parent && dev->parent != dev->bus->dev)
>  			printf("Parent: %s\n", dev_name(dev->parent));
>  
>  		first = true;
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

