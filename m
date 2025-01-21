Delivery-date: Tue, 21 Jan 2025 09:05:38 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ta9GU-002ZYh-0M
	for lore@lore.pengutronix.de;
	Tue, 21 Jan 2025 09:05:38 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ta9GU-0004jz-78
	for lore@pengutronix.de; Tue, 21 Jan 2025 09:05:38 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wMpFkS5hp4XGsK5wn8rezLpwcDqHGXlDCA0FzA4DjTM=; b=1rmiAijtHt2hTNoLeLCbifQOW+
	1If5k4F3OqvOLbzjQfNdQh/5OXBLEX3q707i4tz8+FFHw0MfZ3h4pRnY8spXaj5ixCVB0XROo1uEn
	8MK4yE4RADwO4XK9/vX8mO//nIQPe7gStgC7hchFeg30UviuEEN5kXduvY/MyhtncrdujaMPS0yQ5
	MERM65y7sil8l056MFZWnXC7RxW2YZuNOK5YOX1iIuWGJebsDHyEQ4cJCY3ajeFn+XmrKyYvTgEhG
	KCI4IBJFPMauVxahKWZN/lDEH/fpEEVS/apJllPdEPbiATHSYXAGC/5T9HyFfS2G+UBQrhGLLexn9
	vcHGHxyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1ta9G2-00000007Cl9-08Bo;
	Tue, 21 Jan 2025 08:05:10 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1ta9AE-00000007C1I-2lXi
	for barebox@lists.infradead.org;
	Tue, 21 Jan 2025 07:59:11 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1ta9AD-0003aP-5l; Tue, 21 Jan 2025 08:59:09 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1ta9AC-0014S0-39;
	Tue, 21 Jan 2025 08:59:08 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1ta9AC-005oTF-2r;
	Tue, 21 Jan 2025 08:59:08 +0100
Date: Tue, 21 Jan 2025 08:59:08 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <Z49TzGipR45EDrCf@pengutronix.de>
References: <20250116140752.298077-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250116140752.298077-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250120_235910_694517_E3A5B621 
X-CRM114-Status: GOOD (  26.90  )
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
X-Spam-Status: No, score=-6.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] dmesg: restrict output to default log level by default
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Thu, Jan 16, 2025 at 03:07:52PM +0100, Ahmad Fatoum wrote:
> When loglevel is set to debug, dmesg shows a torrent of messages,
> because by default it shows all messages logged regardless of the
> default log level.
> 
> To make it more convenient to use, change this to only print the same
> messages that are synchronously printed by default.
> 
> Users wanting to see more can specify a log level via an extra argument
> to the dmesg command.

The default behaviour of the Linux command is to display all messages. I
would prefer the same behaviour for the barebox command. I think it's too
easy to forget that we could get more information by passing -l.

Also with this patch applied there is no easy way to restore the current
behaviour (unless CONFIG_DEFAULT_LOGLEVEL is 8 already). You would have
to do a

dmesg -l vdebug,debug,info,notice,warn,err,crit,alert,emerg

(I wonder why at least the Linux command doesn't support passing "all"
or "info+" as loglevel string)

Sascha

> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  commands/dmesg.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/commands/dmesg.c b/commands/dmesg.c
> index 8a60f075076e..99675b6c2804 100644
> --- a/commands/dmesg.c
> +++ b/commands/dmesg.c
> @@ -78,7 +78,7 @@ static int do_dmesg(int argc, char *argv[])
>  {
>  	int opt, ret, i;
>  	int delete_buf = 0, emit = 0;
> -	unsigned flags = 0, levels = 0;
> +	unsigned flags = 0, levels = GENMASK(CONFIG_DEFAULT_LOGLEVEL, 0);
>  	char *set = NULL;
>  
>  	while ((opt = getopt(argc, argv, "ctderl:n:")) > 0) {
> -- 
> 2.39.5
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


