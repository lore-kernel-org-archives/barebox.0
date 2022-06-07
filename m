Delivery-date: Tue, 07 Jun 2022 09:06:57 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nyTIn-0066pA-49
	for lore@lore.pengutronix.de; Tue, 07 Jun 2022 09:06:57 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nyTIl-0001a1-4P
	for lore@pengutronix.de; Tue, 07 Jun 2022 09:06:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=WEeFd6+Kt2WUNhzJTUNzTixPHw+hen7ELdv+MagI8s4=; b=WOSHYY/57SDOldKUKumOq5uE4S
	2bhSNeqgwrf/ZaR4G4RdN2t29LOTPvaTCOVwcXOj+ceFyD66I4R0zsTeuKaT6i9zK3toiZPT6BncW
	OPR/w3U2drVBVuR9vxBAq4RwtTbDmf6erOLhIZTEy3aMWC26TMUQoveEWxQFvneHEjEUPBulxEt8c
	QYnlk/zDCA0LPVpQIeXjVTNhBMTCsYtiG0oM1E55PLwPjjRayMMPyloBjiQ4eE6HRo5ff63u7kjC7
	DF/DF8EFpHmMaXTOT8m2onCupJ2UJysTbZIjUO5oNOW3rVGlxiP2sacfmHeLr113+MOK3OzBDNLPo
	aT27UWGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nyTH7-005Iun-JG; Tue, 07 Jun 2022 07:05:14 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nyTFZ-005IKJ-Qh
	for barebox@lists.infradead.org; Tue, 07 Jun 2022 07:03:39 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1nyTFW-0000sO-1k; Tue, 07 Jun 2022 09:03:34 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1nyTFV-0008Oo-Ow; Tue, 07 Jun 2022 09:03:33 +0200
Date: Tue, 7 Jun 2022 09:03:33 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220607070333.GI1615@pengutronix.de>
References: <20220602195916.9061-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220602195916.9061-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220607_000337_953334_0C8DB00E 
X-CRM114-Status: GOOD (  25.62  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.2 required=4.0 tests=AWL,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 1/2] commands: ls: explicitly check for directories
 with S_ISDIR
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Jun 02, 2022 at 09:59:15PM +0200, Ahmad Fatoum wrote:
> S_ISDIR(mode) is implemented as (mode & S_IFMT) == S_IFDIR, which
> accounts for file modes setting multiple bits. So far, this was not the
> case, but upcoming S_IFBLK equals (S_IFCHR | S_IFDIR), which would fail
> the existing checks, so prepare for that by fixing them.
> 
> No functional change. There are no other instances of this elsewhere in
> the code base.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---

Applied, thanks

Sascha

> v1 -> v2:
>   - new patch
> ---
>  commands/ls.c | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
> 
> diff --git a/commands/ls.c b/commands/ls.c
> index bedf2e1c4288..1192aed971cf 100644
> --- a/commands/ls.c
> +++ b/commands/ls.c
> @@ -63,10 +63,10 @@ int ls(const char *path, ulong flags)
>  	if (stat(path, &s))
>  		return -errno;
>  
> -	if (flags & LS_SHOWARG && s.st_mode & S_IFDIR)
> +	if (flags & LS_SHOWARG && S_ISDIR(s.st_mode))
>  		printf("%s:\n", path);
>  
> -	if (!(s.st_mode & S_IFDIR)) {
> +	if (!S_ISDIR(s.st_mode)) {
>  		ls_one(path, path);
>  		return 0;
>  	}
> @@ -112,7 +112,7 @@ int ls(const char *path, ulong flags)
>  			continue;
>  		}
>  
> -		if (s.st_mode & S_IFDIR)
> +		if (S_ISDIR(s.st_mode))
>  			ls(tmp, flags);
>  	}
>  
> @@ -171,7 +171,7 @@ static int do_ls(int argc, char *argv[])
>  			continue;
>  		}
>  
> -		if (!(s.st_mode & S_IFDIR)) {
> +		if (!S_ISDIR(s.st_mode)) {
>  			if (flags & LS_COLUMN)
>  				string_list_add_sorted(&sl, argv[o]);
>  			else
> @@ -197,7 +197,7 @@ static int do_ls(int argc, char *argv[])
>  			continue;
>  		}
>  
> -		if (s.st_mode & S_IFDIR) {
> +		if (S_ISDIR(s.st_mode)) {
>  			ret = ls(argv[o], flags);
>  			if (ret) {
>  				perror("ls");
> -- 
> 2.30.2
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
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

