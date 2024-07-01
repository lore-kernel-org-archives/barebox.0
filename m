Delivery-date: Mon, 01 Jul 2024 12:09:09 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sODy9-000SuF-03
	for lore@lore.pengutronix.de;
	Mon, 01 Jul 2024 12:09:09 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sODy8-0006Sg-CO
	for lore@pengutronix.de; Mon, 01 Jul 2024 12:09:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0R+fUWUh/GIA/zTBR9P1olvrdewHR27SzqNr6s12yuM=; b=mls7eGHQ7ofH3ey1qqlwp7MVOd
	hv83GyJU8XYfM+FUMSSifL/YKV7nTgY49gL+aGnPm3xCLMRjl1NE7QmzBU+KRXXvuy+gzOJ2VEoGv
	JCNV9WCkMmC+BRe6SBw5R1dTOrinC4N4Jw4ZlPJqyu1k1LX8tOX8rYrUSHpLEDZjldfTXNJvs0ODF
	Vh9PtnlTZk2F0409JjiSvJ8YiNlehq8K1J3xoXMS+R+8Wu/+zekSy5tkJkBErsxlbfXh2NlDAZnRs
	U6mNaMLYlSE0f3S3YgpKMjOB4tsxiFasn2HAsG+N/M6F1Is3hl+MKas/3F8KZdrm7UdjXChjfLMc3
	IhY9j1aA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sODxb-00000002ZSg-10si;
	Mon, 01 Jul 2024 10:08:35 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sODxY-00000002ZRg-2an2
	for barebox@lists.infradead.org;
	Mon, 01 Jul 2024 10:08:34 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1sODxX-0006EE-1T; Mon, 01 Jul 2024 12:08:31 +0200
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1sODxW-006LTw-L3; Mon, 01 Jul 2024 12:08:30 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1sODxW-008O9Y-1p;
	Mon, 01 Jul 2024 12:08:30 +0200
Date: Mon, 1 Jul 2024 12:08:30 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <ZoKAHmX1_V3quUnA@pengutronix.de>
References: <20240701071455.138644-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240701071455.138644-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240701_030832_680544_AC9C40D7 
X-CRM114-Status: GOOD (  25.34  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] bbu: command: update via TFTP if no image given
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, Jul 01, 2024 at 09:14:55AM +0200, Ahmad Fatoum wrote:
> Booting barebox over TFTP is a common operation that even has a default
> boot target: `boot bnet`.
> 
> Once, a chainloaded barebox was tested to work, it may need to be
> persisted, which needs a cumbersome:
> 
>   barebox_update /mnt/tftp/${global.user}-barebox-${global.hostname}
> 
> Make this more straight-forward by interpreting barebox_update called
> without any non-option argument to mean just that.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  commands/barebox-update.c | 11 ++++++++---
>  1 file changed, 8 insertions(+), 3 deletions(-)
> 
> diff --git a/commands/barebox-update.c b/commands/barebox-update.c
> index 4b23433e84f2..59db315e5650 100644
> --- a/commands/barebox-update.c
> +++ b/commands/barebox-update.c
> @@ -6,6 +6,7 @@
>  #include <common.h>
>  #include <command.h>
>  #include <libfile.h>
> +#include <globalvar.h>
>  #include <getopt.h>
>  #include <malloc.h>
>  #include <errno.h>
> @@ -20,6 +21,7 @@ static void print_handlers_list(void)
>  
>  static int do_barebox_update(int argc, char *argv[])
>  {
> +	char pathbuf[PATH_MAX];

Do we really want to allocate 1KiB on the stack?

sascha

>  	int opt, ret, repair = 0;
>  	struct bbu_data data = {};
>  	struct bbu_handler *handler;
> @@ -82,14 +84,17 @@ static int do_barebox_update(int argc, char *argv[])
>  
>  	if (argc - optind > 0) {
>  		data.imagefile = argv[optind];
> +	} else if (!repair) {
> +		snprintf(pathbuf, sizeof(pathbuf), "/mnt/tftp/%s-barebox-%s",
> +			 globalvar_get("user"), globalvar_get("hostname"));
> +		data.imagefile = pathbuf;
> +	}
>  
> +	if (data.imagefile) {
>  		image = read_file(data.imagefile, &data.len);
>  		if (!image)
>  			return -errno;
>  		data.image = image;
> -	} else {
> -		if (!repair)
> -			return COMMAND_ERROR_USAGE;
>  	}
>  
>  	ret = barebox_update(&data, handler);
> -- 
> 2.39.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


