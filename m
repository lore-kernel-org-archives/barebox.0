Delivery-date: Fri, 12 Dec 2025 15:05:30 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vU3ly-00AgqA-2w
	for lore@lore.pengutronix.de;
	Fri, 12 Dec 2025 15:05:30 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vU3ly-0004m5-9Z
	for lore@pengutronix.de; Fri, 12 Dec 2025 15:05:30 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=LozkmvUPAceb3zKMDKcty0iB/0idLFYxn7E/h9XLu5U=; b=Fk10a9GqPwaCW1Fgg5/F4EmT7u
	iTRILegvEdWU+6MIDosSkCzcdX8zlZIT5uILY/1IId4+SszFVYXliwRQShiNuyDTY/btG+pxpJPXa
	TFh6iV5GjENQofNR2cQ2qX8VTeMw6JZ0uVtuY5jCVgGNWxPdaUMctLBOTjziZeATZkJTMEeRAcEQW
	JpxIlv5Ka0qipte8WQIkvmWurRBKvj/YFHIF4qY4iX1C1OTJS/7yEWPpJ27H5iUzG8ZHWSGrTiyd1
	3zeTJXwn0jggW++ydGspEBUmCUwib9emwYn+lxAsGc2AjY2D9f4ywPsp2QQ6dEsAMnuJpa05MD2KO
	8j4GtiMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vU3lW-00000000bNC-27gN;
	Fri, 12 Dec 2025 14:05:02 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vU3lU-00000000bMX-0URk
	for barebox@lists.infradead.org;
	Fri, 12 Dec 2025 14:05:01 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1vU3lS-0004g5-Cp; Fri, 12 Dec 2025 15:04:58 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vU3lS-005IwW-0g;
	Fri, 12 Dec 2025 15:04:58 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vU3lS-003HWz-0I;
	Fri, 12 Dec 2025 15:04:58 +0100
Date: Fri, 12 Dec 2025 15:04:58 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <aTwhCprKWwc-buRp@pengutronix.de>
References: <20251211204836.2773298-1-a.fatoum@pengutronix.de>
 <20251211204836.2773298-2-a.fatoum@pengutronix.de>
 <aTviVda7CibKpvtz@pengutronix.de>
 <dc9f73c6-d5a5-4d07-bef3-c56d89e4126a@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <dc9f73c6-d5a5-4d07-bef3-c56d89e4126a@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251212_060500_161339_FFE001AC 
X-CRM114-Status: GOOD (  30.74  )
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

On Fri, Dec 12, 2025 at 02:25:54PM +0100, Ahmad Fatoum wrote:
> Hello Sascha,
> 
> On 12/12/25 10:37 AM, Sascha Hauer wrote:
> > On Thu, Dec 11, 2025 at 09:48:10PM +0100, Ahmad Fatoum wrote:
> >> nvvar_save will load the extenral environment before writing it back
> >> with nv changed, which we means we still end up parsing the environment
> >> in this case, even if we don't execute init scripts or import nv out of
> >> it.
> >>
> >> Fix this to only parse the environment when we actually loaded it
> >> before.
> >>
> >> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> >> ---
> >>  common/environment.c | 7 +++++++
> >>  common/globalvar.c   | 8 +++++++-
> >>  include/globalvar.h  | 1 +
> >>  3 files changed, 15 insertions(+), 1 deletion(-)
> >>
> >> diff --git a/common/environment.c b/common/environment.c
> >> index 0e551c90352e..ec14d0629a14 100644
> >> --- a/common/environment.c
> >> +++ b/common/environment.c
> >> @@ -453,6 +453,7 @@ int envfs_load(const char *filename, const char *dir, unsigned flags)
> >>  	int envfd;
> >>  	int ret = 0;
> >>  	size_t size, rsize;
> >> +	__maybe_unused const char *defenv_path;
> >>  
> >>  #ifdef __BAREBOX__
> >>  	if (!IS_ALLOWED(SCONFIG_ENVIRONMENT_LOAD))
> >> @@ -531,6 +532,12 @@ int envfs_load(const char *filename, const char *dir, unsigned flags)
> >>  
> >>  	ret = 0;
> >>  
> >> +#ifdef CONFIG_NVVAR
> >> +	defenv_path = default_environment_path_get();
> >> +	if (defenv_path && !strcmp(filename, defenv_path))
> >> +	    nv_var_set_persistable();
> >> +#endif
> >> +
> >>  out:
> >>  	close(envfd);
> >>  	free(buf);
> >> diff --git a/common/globalvar.c b/common/globalvar.c
> >> index 77af6733a6a0..1e06fb43775f 100644
> >> --- a/common/globalvar.c
> >> +++ b/common/globalvar.c
> >> @@ -15,6 +15,7 @@
> >>  #include <fnmatch.h>
> >>  
> >>  static int nv_dirty;
> >> +static bool nv_persistable;
> >>  
> >>  struct device global_device = {
> >>  	.name = "global",
> >> @@ -31,6 +32,11 @@ void nv_var_set_clean(void)
> >>  	nv_dirty = 0;
> >>  }
> >>  
> >> +void nv_var_set_persistable(void)
> >> +{
> >> +	nv_persistable = true;
> >> +}
> >> +
> >>  void globalvar_remove(const char *name)
> >>  {
> >>  	struct param_d *p, *tmp;
> >> @@ -713,7 +719,7 @@ int nvvar_save(void)
> >>  	const char *env = default_environment_path_get();
> >>  	int ret = 0;
> >>  #define TMPDIR "/.env.tmp"
> >> -	if (!nv_dirty || !env)
> >> +	if (!nv_dirty || !env || !nv_persistable)
> >>  		return 0;
> > 
> > With this "nv -s" or whatever calls this just silently does nothing.
> > This doesn't sound like a desired behaviour. At least a message would be
> > useful.
> > 
> > What's the purpose of this patch anyway?
> 
> In a later commit, we skip envfs_load if autoload_external_env() is
> disabled. I thought that it's strange for nv -s to still load the
> external environment to write variables into it.

Ok. I think a message for this would be good.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


