Delivery-date: Tue, 13 Jun 2023 08:36:26 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q8xdk-004p9d-3R
	for lore@lore.pengutronix.de; Tue, 13 Jun 2023 08:36:26 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q8xdh-0001o0-La
	for lore@pengutronix.de; Tue, 13 Jun 2023 08:36:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=mJALohaECaCmkn8SZaYUzcYpmiHmdLdyiWkksg1QWJ0=; b=C2fTkLcHicWQhmBHVZc+1ZRn2h
	T/jbo0HGYMSc/VyWYreyVcDiilOIZ3Q08CA+akWayRADqZZ2h44Xykl219cz7/NpL+Uar67S5YkSM
	2sE1GhyYXLnbK3r0gSdkAeVquCZlUE8HRSF1tl2yTNl4WOz9QB8uupIhGfV05OsqH6Y3dSk1zxLsk
	9RDRhxVK9Cj/hP5f+vk9vrrgMnaudAxPMmFkoAnHlULbaBU9k86Fp7ijR6HrWLXWjPLK0t51vsAeU
	OPHpqGs9QUI5YHnniF2agykawBKuR+UJUDLJ1ucuXfq62z8sookDgJsqnYPcJkqD6adniZdipAke1
	UhehtfNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q8xc9-0075Vl-22;
	Tue, 13 Jun 2023 06:34:49 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q8xc6-0075Ub-2e
	for barebox@lists.infradead.org;
	Tue, 13 Jun 2023 06:34:48 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1q8xbz-0001NN-Vw; Tue, 13 Jun 2023 08:34:39 +0200
Received: from mfe by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1q8xbz-0004MV-P7; Tue, 13 Jun 2023 08:34:39 +0200
Date: Tue, 13 Jun 2023 08:34:39 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <20230613063439.qrzzbp55m3333lp2@pengutronix.de>
References: <20230612123232.3071957-1-s.hauer@pengutronix.de>
 <20230612123232.3071957-3-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230612123232.3071957-3-s.hauer@pengutronix.de>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230612_233446_861316_298313F9 
X-CRM114-Status: GOOD (  17.51  )
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
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 2/5] dmesg: error out on unknown loglevels
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Sascha,

On 23-06-12, Sascha Hauer wrote:
> The user deserves an error when an unknown loglevel is given, so
> print an error instead of silently ignoring unknown loglevels.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  commands/dmesg.c | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
> 
> diff --git a/commands/dmesg.c b/commands/dmesg.c
> index 339910bb76..2a36710b98 100644
> --- a/commands/dmesg.c
> +++ b/commands/dmesg.c
> @@ -32,6 +32,8 @@ static int str_to_loglevel(const char *str)
>  	if (!strcmp(str, "emerg"))
>  		return MSG_EMERG;
>  
> +	printf("dmesg: unknown loglevel %s\n", str);
> +
>  	return -EINVAL;
>  }
>  
> @@ -51,6 +53,8 @@ static unsigned dmesg_get_levels(const char *__args)
>  		level = str_to_loglevel(str);
>  		if (level >= 0)
>  			flags |= BIT(level);
> +		else
> +			return 0;

This is more explicit but wouldn't be required since we initialized
'flags = 0'.

>  	}
>  
>  	free(args);
> @@ -81,7 +85,7 @@ static int do_dmesg(int argc, char *argv[])
>  		case 'l':
>  			levels = dmesg_get_levels(optarg);
>  			if (!levels)
> -				return COMMAND_ERROR_USAGE;
> +				return COMMAND_ERROR;

Out of curiosity what's the difference between COMMAND_ERROR and
COMMAND_ERROR_USAGE?

Regards,
  Marco

>  			break;
>  		case 'r':
>  			flags |= BAREBOX_LOG_PRINT_RAW | BAREBOX_LOG_PRINT_TIME;
> -- 
> 2.39.2
> 
> 
> 


