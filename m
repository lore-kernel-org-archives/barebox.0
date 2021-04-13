Delivery-date: Tue, 13 Apr 2021 08:12:01 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lWCHJ-0006ve-TQ
	for lore@lore.pengutronix.de; Tue, 13 Apr 2021 08:12:01 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lWCHJ-0001ja-1h
	for lore@pengutronix.de; Tue, 13 Apr 2021 08:12:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=+qGMmsQWgMykE6ojJQr0FIlTl43mDRYBtDXYdmko4w4=; b=p5JvI08VCmvkm1pog+xyzVVm9
	3RI1ftXkyuoZ8HmzUwIdt/h3ESfrZ2OKXqyd0zVuHhfnMyf745XDXewXahToHEm8cOObyuaFkrha3
	955m8XnMwiA0OEMwWFvHhq8UfPzCHF6oM9wGvTOJJds51r/FofCrbKgJnGySfQmaisQ0OHbqwdDtI
	PAXFApVSK3qIb899xpXTeHaE2m8/tB+MlQ+0mbrBsn86JnEHMhn2HXZ8kejjfzi+y5LxA5WBfVXb8
	KL5WrN5Gu0jAKkRjKft70IG4l7caT/JDap+oYp7zdHRS1ygHRfFr/caTiTeUDYwS6CYv6OHqoQwNK
	MxB4L7TNQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lWCG9-008MEK-H0; Tue, 13 Apr 2021 06:10:49 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWCFF-008MBJ-Qx
 for barebox@desiato.infradead.org; Tue, 13 Apr 2021 06:10:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=From:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=QKCdq/X+57mW9kZjPxS1ZYGP9TMsQt6/Lok6QT3MdcI=; b=RCZsqa17cFHzbCnL5i6wEV9jwU
 dn3A0GfqYC8yCqJZtDnclO1+Lq/VOsntxYMcdWyJYr6Gw1piIX9jHLXmWG7b3yOYTxKbbLKZ5U2ok
 UsVnpjdTODFrcUqtNeB3PtEHZfRD3ErgToTwEte2XAkgobA4uMS4NtwNsd6mlM1Z6Kx43ru/Cn+u/
 4FgpO/UzegB7QTTRMY+hX/moeD2yqCzaeqIv3PFlZVcOus3/JQt6tCq20FchFYUI53TyoIutFyjRf
 qK4xfRwD6Tu37FVngQnhiOilYh01AuB+RIgqV7YMpePWiVEyOzKM6m15b1APLBu7oui5sBEmyM+eO
 v/SBLzqQ==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWCFC-006lFL-W7
 for barebox@lists.infradead.org; Tue, 13 Apr 2021 06:09:52 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lWCFB-0001Jo-4t; Tue, 13 Apr 2021 08:09:49 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lWCFA-0007A2-Ew; Tue, 13 Apr 2021 08:09:48 +0200
Date: Tue, 13 Apr 2021 08:09:48 +0200
To: Ahmad Fatoum <ahmad@a3f.at>
Cc: barebox@lists.infradead.org
Message-ID: <20210413060948.GB19819@pengutronix.de>
References: <20210410104505.2076790-1-ahmad@a3f.at>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210410104505.2076790-1-ahmad@a3f.at>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 08:09:37 up 54 days,  9:33, 84 users,  load average: 0.17, 0.19, 0.17
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210412_230951_058316_1B79F18B 
X-CRM114-Status: GOOD (  28.43  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] common: add option for shipping KCONFIG_CONFIG as
 /env/data/config
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Sat, Apr 10, 2021 at 12:45:05PM +0200, Ahmad Fatoum wrote:
> Add a new option that enables access to the barebox configuration
> file through /env/data/config. This can be useful in environments
> where a fatter barebox can be tolerated (like on an EFI system
> partition). It could also be used to conditionally skip tests
> on disabled functionality in the future.
> 
> Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
> ---
>  Makefile                | 2 ++
>  common/Kconfig          | 7 +++++++
>  defaultenv/Makefile     | 7 +++++++
>  defaultenv/defaultenv.c | 2 ++
>  scripts/Makefile.lib    | 3 +++
>  5 files changed, 21 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/Makefile b/Makefile
> index a36608819da5..c13f3274c18c 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -358,6 +358,8 @@ endif
>  
>  KCONFIG_CONFIG	?= .config
>  
> +export KCONFIG_CONFIG
> +
>  # Default file for 'make defconfig'. This may be overridden by arch-Makefile.
>  export KBUILD_DEFCONFIG := defconfig
>  
> diff --git a/common/Kconfig b/common/Kconfig
> index 342817bbcbb4..2872c80dbf13 100644
> --- a/common/Kconfig
> +++ b/common/Kconfig
> @@ -941,6 +941,13 @@ config DEFAULT_ENVIRONMENT_GENERIC_NEW_REBOOT_MODE
>  	depends on DEFAULT_ENVIRONMENT_GENERIC_NEW
>  	depends on REBOOT_MODE
>  
> +config DEFAULT_ENVIRONMENT_GENERIC_NEW_IKCONFIG
> +	bool "Ship .config as /env/data/config"
> +	help
> +	  This option embeds the used barebox Kconfig .config file into the
> +	  environment as /env/data/config. This will increases barebox image
> +	  size. If unsure, say n here.
> +
>  config DEFAULT_ENVIRONMENT_PATH
>  	string
>  	depends on DEFAULT_ENVIRONMENT
> diff --git a/defaultenv/Makefile b/defaultenv/Makefile
> index 91293567c0d3..68790321187d 100644
> --- a/defaultenv/Makefile
> +++ b/defaultenv/Makefile
> @@ -32,3 +32,10 @@ cmd_env_zero = ($(objtree)/scripts/bareboxenv -z $(CONFIG_DEFAULT_ENVIRONMENT_PA
>  
>  $(obj)/barebox_zero_env: FORCE
>  	$(call if_changed,env_zero)
> +
> +bbenv-$(CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW_IKCONFIG) += defaultenv-2-ikconfig
> +
> +defaultenv/defaultenv-2-ikconfig.bbenv$(DEFAULT_COMPRESSION_SUFFIX): $(KCONFIG_CONFIG)
> +	@mkdir -p defaultenv/defaultenv-2-ikconfig/data
> +	@cp $(KCONFIG_CONFIG) defaultenv/defaultenv-2-ikconfig/data/config
> +	$(call cmd,envgen,defaultenv/defaultenv-2-ikconfig)
> diff --git a/defaultenv/defaultenv.c b/defaultenv/defaultenv.c
> index d69446c8937a..055475eb4756 100644
> --- a/defaultenv/defaultenv.c
> +++ b/defaultenv/defaultenv.c
> @@ -47,6 +47,8 @@ static void defaultenv_add_base(void)
>  		defaultenv_append_directory(defaultenv_2_dfu);
>  	if (IS_ENABLED(CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW_REBOOT_MODE))
>  		defaultenv_append_directory(defaultenv_2_reboot_mode);
> +	if (IS_ENABLED(CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW_IKCONFIG))
> +		defaultenv_append_directory(defaultenv_2_ikconfig);
>  	if (IS_ENABLED(CONFIG_DEFAULT_ENVIRONMENT_GENERIC))
>  		defaultenv_append_directory(defaultenv_1);
>  }
> diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
> index 319ac19975ed..80d76b177c0a 100644
> --- a/scripts/Makefile.lib
> +++ b/scripts/Makefile.lib
> @@ -365,6 +365,9 @@ cmd_env_S =							\
>  $(obj)/%.bbenv$(DEFAULT_COMPRESSION_SUFFIX).S: $(src)/%.bbenv$(DEFAULT_COMPRESSION_SUFFIX) FORCE
>  	$(call if_changed,env_S)
>  
> +quiet_cmd_envgen = ENVGEN  $@
> +cmd_envgen=$(srctree)/scripts/genenv $(objtree) $(objtree) $@ $2
> +
>  quiet_cmd_env = ENV     $@
>  cmd_env=$(srctree)/scripts/genenv $(srctree) $(objtree) $@ $<
>  
> -- 
> 2.30.0
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

