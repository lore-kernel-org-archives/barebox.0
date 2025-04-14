Delivery-date: Mon, 14 Apr 2025 11:39:38 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u4GHy-000aOT-1j
	for lore@lore.pengutronix.de;
	Mon, 14 Apr 2025 11:39:38 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u4GHx-0001z2-T8
	for lore@pengutronix.de; Mon, 14 Apr 2025 11:39:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8uRrbEHoyROvbScAckoZjq2GVTGY+Uza9mimx+JbIEM=; b=xkYO6Obisy87vApGANt125RE7o
	z4wrLHfgYwW/P3ebY1hvcKLO6D3qHIDo5BNJJofrdEjb/KY6HPa4tFnzGuhse5Fzqgdt71dDm3ITC
	xsAtAtcscPZorqJK44N4+TFXfgI2CL6XKxRd5UU8/TIFhuVW/JTbG6Onj9UQtLGs3CAUqJ/bTESdy
	rkOSzmssxGuLQ7f8AL+26eWwMeTyTWrowpceXdyZv9qW8U6MaK7jqm5v+IHwZ8UDVWB/GFQML/czX
	LAjLfZIm9xc7ccHNKu083gjxwpasjjc7Y7/kC/xrYLTIfga1nNJoIzn52+TmW3n/uUur14PFQYdiI
	EVcrEJ2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4GHT-00000001IYX-35KV;
	Mon, 14 Apr 2025 09:39:07 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4Fx8-00000001Feu-0Ocg
	for barebox@lists.infradead.org;
	Mon, 14 Apr 2025 09:18:07 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1u4Fx6-0003Lr-Jz; Mon, 14 Apr 2025 11:18:04 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1u4Fx6-000E5X-1M;
	Mon, 14 Apr 2025 11:18:04 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1u4Fx6-000ErP-14;
	Mon, 14 Apr 2025 11:18:04 +0200
Date: Mon, 14 Apr 2025 11:18:04 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <Z_zSzCCsVHcs9uGc@pengutronix.de>
References: <20250414062419.2724359-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250414062419.2724359-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250414_021806_130143_4651DAFF 
X-CRM114-Status: GOOD (  26.80  )
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
Subject: Re: [PATCH] commands: saveenv: mention where environment is saved to
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, Apr 14, 2025 at 08:24:19AM +0200, Ahmad Fatoum wrote:
> We already mention it on loadenv, but it makes sense to do it on saveenv
> too to assist with debugging.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  commands/saveenv.c | 9 +++++++--
>  1 file changed, 7 insertions(+), 2 deletions(-)
> 
> diff --git a/commands/saveenv.c b/commands/saveenv.c
> index 203729efbb1a..d8aeb31f051c 100644
> --- a/commands/saveenv.c
> +++ b/commands/saveenv.c
> @@ -13,9 +13,8 @@ static int do_saveenv(int argc, char *argv[])
>  {
>  	int ret, opt;
>  	unsigned envfs_flags = 0;
> -	char *filename = NULL, *dirname = NULL;
> +	const char *filename = NULL, *dirname = NULL;
>  
> -	printf("saving environment\n");
>  	while ((opt = getopt(argc, argv, "z")) > 0) {
>  		switch (opt) {
>  		case 'z':
> @@ -33,6 +32,12 @@ static int do_saveenv(int argc, char *argv[])
>  	/* destination only given? */
>  	if (argc - optind > 0)
>  		filename = argv[optind];
> +	if (!filename)
> +		filename = default_environment_path_get();
> +	if (!filename)
> +		return -ENOENT;

default_environment_path_get() will never return a NULL pointer unless
the static inline wrapper is used. The saveenv command depends on
CONFIG_ENV_HANDLING, so when won't get here with CONFIG_ENV_HANDLING
disabled.

I think we can safely remove this last check, or if we think we need it,
then we should have an error message here as well.

> +
> +	printf("saving environment to %s\n", filename);
>  
>  	ret = envfs_save(filename, dirname, envfs_flags);

Now that we always pass a filename to envfs_save(), should we remove
the check for !filename from the function?

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


