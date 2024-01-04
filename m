Delivery-date: Thu, 04 Jan 2024 14:05:06 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rLNPG-003XpC-1s
	for lore@lore.pengutronix.de;
	Thu, 04 Jan 2024 14:05:06 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rLNPF-0007xf-Cq
	for lore@pengutronix.de; Thu, 04 Jan 2024 14:05:06 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=w32LcTPOvNyIUwxLvigra33BXxUvCLXOK7w8Hokjnls=; b=ONur8rPxP8Xo+eMsM98vI1brys
	8WMe4MiBEuhKTemWwgk8LoNBmwM9aAtumRSXGqgUp0+l06l5loj2wRFR5mCrFiPB9O9SxJ/x0rq2s
	6O27DQDRO6snnzzAHVuQ/tf6X7WH3/zcovk8X3+n9RvtzVwOIdRgck+M7n7yYMoN4jABHewO9CPIj
	DZSvFNmhzh0jMIQ6de4n+vWPIvA8/VP0iyazWQ0J1Ns8hfQtXrHvS0RUs9Dp9Sbs38tfgm6lwa/s4
	I0zN6piUxHTxLa0FgWRKkllhVYTrJxOYTO8/rMvNj7js0MFQDpYDW29vlBo3Qs8j6aLKTxWYtccP9
	3wmGhb1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rLNO9-00E3z8-2d;
	Thu, 04 Jan 2024 13:03:57 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rLNO6-00E3xT-34
	for barebox@lists.infradead.org;
	Thu, 04 Jan 2024 13:03:56 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rLNO5-0007aC-P2; Thu, 04 Jan 2024 14:03:53 +0100
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rLNO5-000Lpo-Cb; Thu, 04 Jan 2024 14:03:53 +0100
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rLNO5-00ADPN-AU; Thu, 04 Jan 2024 14:03:53 +0100
Date: Thu, 4 Jan 2024 14:03:53 +0100
To: Holger Assmann <h.assmann@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20240104130353.GV1318922@pengutronix.de>
References: <20231214190125.1362776-1-h.assmann@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231214190125.1362776-1-h.assmann@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240104_050354_989211_55AFFD38 
X-CRM114-Status: GOOD (  32.99  )
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
X-Spam-Status: No, score=-6.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] bootchooser: add new value "reset" to reset boot
 attempts counter
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Thu, Dec 14, 2023 at 08:01:25PM +0100, Holger Assmann wrote:
> bootchooser provides a mechanism that allows for resetting the
> "remaining_attempts" counters of all enabled boot slots to their
> defaults.
> 
> The current possible trigger values to be stored in the defining
> variable $bootchooser.reset_attempts are "all-zero" (i.e. no attempts
> left at any boot slot) and "power-on" (i.e. $global.system.reset="POR").
> 
> We now want to add the option "reset" (i.e. $global.system.reset="RST")
> to that list, so that we do not have to perform an entire power cycle
> every time we need a counter reset.
> 
> By introducing the "reset" value as an option, we can deliberately cause
> the bootchooser to set the "remaining_attempts" values to their defaults
> when performing a generic restart. The restart handler of the main OS
> is hence responsible that the subsequent barebox run sees "RESET_RST" as
> reset reason instead of e.g. "RESET_WDG".
> 
> Signed-off-by: Holger Assmann <h.assmann@pengutronix.de>
> ---
>  Documentation/user/bootchooser.rst |  6 ++++++
>  common/bootchooser.c               | 11 +++++++++++
>  2 files changed, 17 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/Documentation/user/bootchooser.rst b/Documentation/user/bootchooser.rst
> index db0a4f8898..1a2ce70bb2 100644
> --- a/Documentation/user/bootchooser.rst
> +++ b/Documentation/user/bootchooser.rst
> @@ -92,6 +92,12 @@ list of space-separated flags. Possible values are:
>    (``$global.system.reset="POR"``) is detected, the ``remaining_attempts``
>    counters of all enabled targets are reset to their defaults.
>    This means after a power cycle all boot targets will be tried again for the configured number of retries.
> +- ``reset``: When the bootchooser starts and a generic reset
> +  (``$global.system.reset="RST"``) is detected, the ``remaining_attempts``
> +  counters of all enabled targets are reset to their defaults.
> +  This means that, if the systems reports a generic restart, the
> +  ``remaining_attempts`` counters of all enabled targets are reset to
> +  their defaults.
>  - ``all-zero``: When the bootchooser starts and the ``remaining_attempts``
>    counters of all enabled targets are zero, the ``remaining_attempts``
>    counters of all enabled targets are reset to their defaults.
> diff --git a/common/bootchooser.c b/common/bootchooser.c
> index eb3dda52ab..022e225165 100644
> --- a/common/bootchooser.c
> +++ b/common/bootchooser.c
> @@ -77,6 +77,7 @@ struct bootchooser_target {
>  enum reset_attempts {
>  	RESET_ATTEMPTS_POWER_ON,
>  	RESET_ATTEMPTS_ALL_ZERO,
> +	RESET_ATTEMPTS_SRC_RST,
>  };
>  
>  static unsigned long reset_attempts;
> @@ -439,6 +440,13 @@ struct bootchooser *bootchooser_get(void)
>  		attempts_resetted = 1;
>  	}
>  
> +	if (test_bit(RESET_ATTEMPTS_SRC_RST, &reset_attempts) &&
> +	    reset_source_get() == RESET_RST && !attempts_resetted) {
> +		pr_info("RST Reset, resetting remaining attempts\n");
> +		bootchooser_reset_attempts(bc);
> +		attempts_resetted = 1;
> +	}
> +
>  	if (test_bit(RESET_ATTEMPTS_ALL_ZERO, &reset_attempts)) {
>  		int attempts = 0;
>  
> @@ -915,6 +923,7 @@ static int bootchooser_add_entry(struct bootentries *entries, const char *name)
>  static const char * const reset_attempts_names[] = {
>  	[RESET_ATTEMPTS_POWER_ON] = "power-on",
>  	[RESET_ATTEMPTS_ALL_ZERO] = "all-zero",
> +	[RESET_ATTEMPTS_SRC_RST] = "reset",
>  };
>  
>  static const char * const reset_priorities_names[] = {
> @@ -951,6 +960,8 @@ BAREBOX_MAGICVAR(global.bootchooser.targets,
>  		 "bootchooser: Space separated list of target names");
>  BAREBOX_MAGICVAR(global.bootchooser.default_attempts,
>  		 "bootchooser: Default number of attempts for a target");
> +BAREBOX_MAGICVAR(global.bootchooser.reset_attempts,
> +		"bootchooser: Choose condition to reset number of attempts for all enabled targets ('power-on', 'all-zero', 'reset')");
>  BAREBOX_MAGICVAR(global.bootchooser.default_priority,
>  		 "bootchooser: Default priority for a target");
>  BAREBOX_MAGICVAR(global.bootchooser.state_prefix,
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


