Delivery-date: Tue, 10 Oct 2023 16:27:03 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qqDhQ-003AzV-Ar
	for lore@lore.pengutronix.de; Tue, 10 Oct 2023 16:27:03 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qqDhO-0006PW-Cg
	for lore@pengutronix.de; Tue, 10 Oct 2023 16:27:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=PA9xLhFlBs3z2ZdHWc9Dds71dAeyzf2p52TozwCEfsE=; b=tnim4H5xC0ijql8uP4uv94aavA
	mBxI8yBUF77UBm6yfs3Rxx/WIIKIcb/jfnTA+s0Uud9MHzsxSvNRtGJ44ot3oHdY0wOhBzM9X4AfS
	UVciH0tirZA7Q3lUO5TS+cod+2F6WK8yLlLs3qWTcXVqI2qFjzNsAz1ioL2f3jn2Ae0hHBpYgRTYT
	UlPqHiBNtsP137Z7Dh1fNBfgl9LYNOKExAtLPa7Yy2b4O+nT1lVrwgaSI6cWh1WQnvMza96d4wsdy
	N+iizH6xLB+vNVBOXukz8Z4pzekn1iGnKK8v2bab9g587gVc7h1KDW9NK0UpBb5y4klRkTMm/oknU
	bPUFkcOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qqDfi-00DYfQ-2N;
	Tue, 10 Oct 2023 14:25:18 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qqDff-00DYds-1z
	for barebox@lists.infradead.org;
	Tue, 10 Oct 2023 14:25:17 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qqDfd-00064o-Ia; Tue, 10 Oct 2023 16:25:13 +0200
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qqDfd-000gXQ-6E; Tue, 10 Oct 2023 16:25:13 +0200
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qqDfd-00DkvN-3z; Tue, 10 Oct 2023 16:25:13 +0200
Date: Tue, 10 Oct 2023 16:25:13 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20231010142513.GE3114228@pengutronix.de>
References: <20231010115906.3297847-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231010115906.3297847-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231010_072515_657924_0031A660 
X-CRM114-Status: GOOD (  21.76  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] common: version: remove trailing new line from
 version_string
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Tue, Oct 10, 2023 at 01:59:06PM +0200, Ahmad Fatoum wrote:
> For determining the barebox version, the variables version_string,
> release_string and buildsystem_version_string are exported for general
> use. Only version_string is given a trailing new line though.
> 
> The trailing new line can be unexpected and is something that should
> be added by code that requires it, so drop it from the variable
> definition itself.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  commands/version.c | 2 +-
>  common/version.c   | 4 ++--
>  2 files changed, 3 insertions(+), 3 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/commands/version.c b/commands/version.c
> index 764c20876703..0ad8e587de87 100644
> --- a/commands/version.c
> +++ b/commands/version.c
> @@ -7,7 +7,7 @@
>  
>  static int do_version(int argc, char *argv[])
>  {
> -	printf ("\n%s\n", version_string);
> +	printf ("\n%s\n\n", version_string);
>  	return 0;
>  }
>  
> diff --git a/common/version.c b/common/version.c
> index 15f03c2a00ff..465e22c7f52e 100644
> --- a/common/version.c
> +++ b/common/version.c
> @@ -5,7 +5,7 @@
>  #include <generated/utsrelease.h>
>  
>  const char version_string[] =
> -	"barebox " UTS_RELEASE " " UTS_VERSION "\n";
> +	"barebox " UTS_RELEASE " " UTS_VERSION;
>  EXPORT_SYMBOL(version_string);
>  
>  const char release_string[] =
> @@ -20,7 +20,7 @@ EXPORT_SYMBOL(buildsystem_version_string);
>  void barebox_banner (void)
>  {
>  	printf("\n\n");
> -	pr_info("%s", version_string);
> +	pr_info("%s\n", version_string);
>  	if (strlen(buildsystem_version_string) > 0)
>  		pr_info("Buildsystem version: %s", buildsystem_version_string);
>  	printf("\n\n");
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


