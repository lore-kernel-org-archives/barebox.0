Delivery-date: Wed, 26 Jul 2023 15:32:15 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qOeci-00Atkj-Ov
	for lore@lore.pengutronix.de; Wed, 26 Jul 2023 15:32:15 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qOecf-00045b-SO
	for lore@pengutronix.de; Wed, 26 Jul 2023 15:32:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ik9qbRyVri4MG6awO7J21hSdmxRxDwcfqfw9AOIKghU=; b=ut+Et/5O4s/+LpnnhdAPmEJ52B
	iTj2+dVHHJY3ZRVjbiDQLslZNe0X0gupmTxwPoyqZmau3m1oAnP/O2LH5eHKYE7Bm8aIyvIPRgOxf
	Ip1djXjB4DdhUC4+z5au6IpXO9CJvfURt3EUUyhQ2ghfqihfegTufk1AsyieGMfM3fU6JVLNSKTek
	yTBkLqjI4fgYKUot694aXRkjbfPHfnfiZ0784QeWowurqpFE1I62Iz1lc8+ywna5LkhPtAHYOCB1L
	CIJj/rUDUriVF0pUcHmqf6MXkBAh8tGFABaA74neZ2hoHlpoAS+Aht4m8S6GvIDTGhrKC5u3cUy3x
	3mA6FB+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qOebV-00AYDm-2e;
	Wed, 26 Jul 2023 13:31:01 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qOebS-00AYCc-2W
	for barebox@lists.infradead.org;
	Wed, 26 Jul 2023 13:31:00 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qOebQ-0003vZ-TE; Wed, 26 Jul 2023 15:30:56 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qOebQ-0000q9-NE; Wed, 26 Jul 2023 15:30:56 +0200
Date: Wed, 26 Jul 2023 15:30:56 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230726133056.GU18491@pengutronix.de>
References: <20230707081814.2564713-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230707081814.2564713-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230726_063058_821524_7B043787 
X-CRM114-Status: GOOD (  23.45  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] commands: rm: add -f option to ignore nonexistent files
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Jul 07, 2023 at 10:18:14AM +0200, Ahmad Fatoum wrote:
> rm supports multiple arguments, but will stop at the first nonexistent
> file and print an error message that can't be silenced. Mimic other
> implementations and implement -f for silently ignoring nonexistent files.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  commands/Kconfig |  3 ++-
>  commands/rm.c    | 12 ++++++++----
>  2 files changed, 10 insertions(+), 5 deletions(-)
> 
> diff --git a/commands/Kconfig b/commands/Kconfig
> index 7ca7b56fa54e..d6db312ced42 100644
> --- a/commands/Kconfig
> +++ b/commands/Kconfig
> @@ -1028,10 +1028,11 @@ config CMD_RM
>  	help
>  	  Remove files
>  
> -	  Usage: rm [-r] FILES...
> +	  Usage: rm [-rf] FILES...
>  
>  	  Options:
>  		  -r	remove directories and their contents recursively
> +		  -f	ignore nonexistent files
>  
>  config CMD_RMDIR
>  	tristate
> diff --git a/commands/rm.c b/commands/rm.c
> index be5c19222141..d23c84e0c012 100644
> --- a/commands/rm.c
> +++ b/commands/rm.c
> @@ -12,13 +12,16 @@
>  
>  static int do_rm(int argc, char *argv[])
>  {
> -	int i, opt, recursive = 0;
> +	int i, opt, recursive = 0, force = 0;
>  
> -	while ((opt = getopt(argc, argv, "r")) > 0) {
> +	while ((opt = getopt(argc, argv, "rf")) > 0) {
>  		switch (opt) {
>  		case 'r':
>  			recursive = 1;
>  			break;
> +		case 'f':
> +			force = 1;
> +			break;
>  		default:
>  			return COMMAND_ERROR_USAGE;
>  		}
> @@ -36,7 +39,7 @@ static int do_rm(int argc, char *argv[])
>  			ret = unlink_recursive(argv[i], NULL);
>  		else
>  			ret = unlink(argv[i]);
> -		if (ret) {
> +		if (ret && !force) {
>  			printf("could not remove %s: %m\n", argv[i]);
>  			return 1;
>  		}

To align better with standard rm this should rather be like:

		if (ret) {
			if (!force || ret != -ENOENT)
				printf("could not remove '%s': %m\n", argv[i]);
			if (!force)
				return 1;
		}

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


