Delivery-date: Tue, 13 Jun 2023 08:42:05 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q8xjC-004pUG-Gx
	for lore@lore.pengutronix.de; Tue, 13 Jun 2023 08:42:05 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q8xj9-0002Sp-Ji
	for lore@pengutronix.de; Tue, 13 Jun 2023 08:42:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=5fDHg/jtqLlwkjCg8XlQxrsr9nq+AD6QwlNgE12pD/U=; b=qyFvXDnP16e5Gz1VIL05qt9NPa
	s8RIZHeKVhPKLJhHPCvFzrGGWt6xROLx/jZn7nJtjSpU2socGZIj+mwM3qpBFjswaqMQ34r5HEZEG
	NjIKZmlFFwP3fkOpzDI24irPIZbWkY29ElBWps0t3ZdNGWVk2ACDrmhdQLKux/2wwF0Z2+JOujFav
	VLnK7Hgiucn6UMvRYwtTZ/8u9Q9ooE4RRhJoLYPElAVrK8/80IAp4FKxX8I9njhJ25BOu7Y42iLfM
	t9+LgY9xRYiE4sl+eC5obY3HeK2puCPgNkTQpXDsT/leaDhau7DcqCfdGbhV4E7MlaIe9zIrdcpI/
	f/gnB9pw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q8xi0-0076IT-0G;
	Tue, 13 Jun 2023 06:40:52 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q8xhx-0076Hq-1H
	for barebox@lists.infradead.org;
	Tue, 13 Jun 2023 06:40:50 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1q8xhv-0002H9-E8; Tue, 13 Jun 2023 08:40:47 +0200
Received: from mfe by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1q8xhv-0004fH-79; Tue, 13 Jun 2023 08:40:47 +0200
Date: Tue, 13 Jun 2023 08:40:47 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <20230613064047.kenrrynwa663iy52@pengutronix.de>
References: <20230612123232.3071957-1-s.hauer@pengutronix.de>
 <20230612123232.3071957-6-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230612123232.3071957-6-s.hauer@pengutronix.de>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230612_234049_433470_73C689A1 
X-CRM114-Status: GOOD (  17.73  )
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
Subject: Re: [PATCH 5/5] dmesg: udpate help
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Sascha,

On 23-06-12, Sascha Hauer wrote:
> Now that there are two options which take a loglevel as argument
> describe the available loglevels in the command description and
> not in the argument description.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  commands/dmesg.c | 8 +++++++-
>  1 file changed, 7 insertions(+), 1 deletion(-)
> 
> diff --git a/commands/dmesg.c b/commands/dmesg.c
> index 953bdb2068..ae85d98c1a 100644
> --- a/commands/dmesg.c
> +++ b/commands/dmesg.c
> @@ -154,12 +154,18 @@ static int do_dmesg(int argc, char *argv[])
>  	return 0;
>  }
>  
> +

Not required newline, with that fixed:

Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>

>  BAREBOX_CMD_HELP_START(dmesg)
> +BAREBOX_CMD_HELP_TEXT("print or control the barebox message buffer")
> +BAREBOX_CMD_HELP_TEXT("Loglevels can be specified as number (0=emerg, 7=vdebug)")
> +BAREBOX_CMD_HELP_TEXT("Known debug loglevels are: emerg, alert, crit, err, warn, notice, info, debug,")
> +BAREBOX_CMD_HELP_TEXT("vdebug")
> +BAREBOX_CMD_HELP_TEXT("")
>  BAREBOX_CMD_HELP_TEXT("Options:")
>  BAREBOX_CMD_HELP_OPT ("-c",		"Delete messages after printing them")
>  BAREBOX_CMD_HELP_OPT ("-d",		"Show a time delta to the last message")
>  BAREBOX_CMD_HELP_OPT ("-e <msg>",	"Emit a log message")
> -BAREBOX_CMD_HELP_OPT ("-l <vdebug|debug|info|notice|warn|err|crit|alert|emerg>", "Restrict output to the given (comma-separated) list of levels")
> +BAREBOX_CMD_HELP_OPT ("-l <loglevel>", "Restrict output to the given (comma-separated) list of levels")
>  BAREBOX_CMD_HELP_OPT ("-n <loglevel>", "Set level at which printing of messages is done to the console")
>  BAREBOX_CMD_HELP_OPT ("-r",		"Print timestamp and log-level prefixes.")
>  BAREBOX_CMD_HELP_OPT ("-t",		"Show timestamp informations")
> -- 
> 2.39.2
> 
> 
> 


