Delivery-date: Fri, 12 Dec 2025 10:38:06 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vTzbC-00Acob-1j
	for lore@lore.pengutronix.de;
	Fri, 12 Dec 2025 10:38:06 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vTzbB-0001xk-US
	for lore@pengutronix.de; Fri, 12 Dec 2025 10:38:06 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3Z5ZLta4L7kLMBpl3/JnvbPQJjtofdFBF4gpSuoaVGM=; b=ugTkwwegpSAiqN8wxHILPBcQcy
	/ua9j33pwSVO/zAi1dScgH0g/1nSEqtZUU6md0Kkx5PA40Cr92g0WSZOIcUmRptbDSA7TUHlxLoci
	hQZABR/pnPpsh7ynYeYo3O15WjQSXxG5sQK1EDtlXLLAg4bF8Z2drz2jCNat4TNPSflT86nxhrD8a
	kgr6L2L9MWCM3ZH6E3MGQ5r2Q3IxzGkS+/NsimCsrSfYnU3422vyce6C8xQrhq5z7OrR8yuwlLMkH
	7xfNJ2u3NWIhUtWvdnr5E4FqLSDLyCCVhzwodD8XhyGen4bgxYoThaiDOGKltmzUwpWQaBqkPQlsf
	j/HJCn/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTzac-00000000MgZ-25jL;
	Fri, 12 Dec 2025 09:37:30 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTzaZ-00000000Mfz-3ahi
	for barebox@lists.infradead.org;
	Fri, 12 Dec 2025 09:37:29 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1vTzaX-0001rA-PV; Fri, 12 Dec 2025 10:37:25 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vTzaX-005GyT-1w;
	Fri, 12 Dec 2025 10:37:25 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vTzaX-003Eqc-1X;
	Fri, 12 Dec 2025 10:37:25 +0100
Date: Fri, 12 Dec 2025 10:37:25 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <aTviVda7CibKpvtz@pengutronix.de>
References: <20251211204836.2773298-1-a.fatoum@pengutronix.de>
 <20251211204836.2773298-2-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251211204836.2773298-2-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251212_013727_896107_254E5B9E 
X-CRM114-Status: GOOD (  27.73  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 1/3] globalvar: suppress nvvar_save when no external
 environment was loaded
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Thu, Dec 11, 2025 at 09:48:10PM +0100, Ahmad Fatoum wrote:
> nvvar_save will load the extenral environment before writing it back
> with nv changed, which we means we still end up parsing the environment
> in this case, even if we don't execute init scripts or import nv out of
> it.
> 
> Fix this to only parse the environment when we actually loaded it
> before.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  common/environment.c | 7 +++++++
>  common/globalvar.c   | 8 +++++++-
>  include/globalvar.h  | 1 +
>  3 files changed, 15 insertions(+), 1 deletion(-)
> 
> diff --git a/common/environment.c b/common/environment.c
> index 0e551c90352e..ec14d0629a14 100644
> --- a/common/environment.c
> +++ b/common/environment.c
> @@ -453,6 +453,7 @@ int envfs_load(const char *filename, const char *dir, unsigned flags)
>  	int envfd;
>  	int ret = 0;
>  	size_t size, rsize;
> +	__maybe_unused const char *defenv_path;
>  
>  #ifdef __BAREBOX__
>  	if (!IS_ALLOWED(SCONFIG_ENVIRONMENT_LOAD))
> @@ -531,6 +532,12 @@ int envfs_load(const char *filename, const char *dir, unsigned flags)
>  
>  	ret = 0;
>  
> +#ifdef CONFIG_NVVAR
> +	defenv_path = default_environment_path_get();
> +	if (defenv_path && !strcmp(filename, defenv_path))
> +	    nv_var_set_persistable();
> +#endif
> +
>  out:
>  	close(envfd);
>  	free(buf);
> diff --git a/common/globalvar.c b/common/globalvar.c
> index 77af6733a6a0..1e06fb43775f 100644
> --- a/common/globalvar.c
> +++ b/common/globalvar.c
> @@ -15,6 +15,7 @@
>  #include <fnmatch.h>
>  
>  static int nv_dirty;
> +static bool nv_persistable;
>  
>  struct device global_device = {
>  	.name = "global",
> @@ -31,6 +32,11 @@ void nv_var_set_clean(void)
>  	nv_dirty = 0;
>  }
>  
> +void nv_var_set_persistable(void)
> +{
> +	nv_persistable = true;
> +}
> +
>  void globalvar_remove(const char *name)
>  {
>  	struct param_d *p, *tmp;
> @@ -713,7 +719,7 @@ int nvvar_save(void)
>  	const char *env = default_environment_path_get();
>  	int ret = 0;
>  #define TMPDIR "/.env.tmp"
> -	if (!nv_dirty || !env)
> +	if (!nv_dirty || !env || !nv_persistable)
>  		return 0;

With this "nv -s" or whatever calls this just silently does nothing.
This doesn't sound like a desired behaviour. At least a message would be
useful.

What's the purpose of this patch anyway?

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


