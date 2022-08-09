Delivery-date: Tue, 09 Aug 2022 09:34:03 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oLJkX-00H4LA-EI
	for lore@lore.pengutronix.de; Tue, 09 Aug 2022 09:34:03 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oLJkX-0006o9-US
	for lore@pengutronix.de; Tue, 09 Aug 2022 09:34:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=DdRqzUlCcs8cIhAo1DA8iBRTONaOpQ8+RNOi6HEzyV4=; b=dnwaGYxpvtFa/eBiT/q7vcg5yE
	VZa4Wbv2ArIFu5ySQLyCxfgdxRXSJwO2iC26Qugu6klgT990km71ddTAae4j0PjcksCu5+aeD8wus
	G1RhXLZPVWToTELzfnJVkMsQo1Qwv9HEXfmklKL5CM7EyjcZN5ySTrL+C8mVtTviSd74TJhmP+bMI
	NayhrKrgrzZ9LvmM5De/jRWht6VWREmkWzbgieKsiAPm4u4BUT4B/cPfTH8hOtYhh1FyPZzNiFM69
	5XXFTfxyRYNxbao7fZdvKXmgSLlPFRFZqtncfLLXjkY57wtjYe1p1Vs+I4xxDwjcet4HVX509uCt2
	FFcjBAAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oLJj9-002PWJ-CT; Tue, 09 Aug 2022 07:32:35 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oLJiv-002PR0-5F
	for barebox@bombadil.infradead.org; Tue, 09 Aug 2022 07:32:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=From:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=DdRqzUlCcs8cIhAo1DA8iBRTONaOpQ8+RNOi6HEzyV4=; b=MZrozuqwXgiB1+0ffIty8BhG+f
	7+fpkx3/+j71+a9F3a3lnliVFd8afubFQyZhXgKXXrStu8lPuPO8ykXrafAm28MjCM5CJCJMtHadu
	wecUd8/j1QTdsjiZE0T3CawIM2FehFgDbiUiZRpNUUWYkKWlTO91rQlWVS+4TvzbJds/ffYiPbojO
	dXx8ZI4rUWC/uVxPpQg4yQijdOfyCppd/BgT3UF9oTfzVkU8iKjiQgA73iq8yQ0uHKGzBwHfNYqh4
	Lvfhx1gLSJSx60zqhQ70Sz87CIfV99nOK4boBGQAb22kRON1DoRhl3SoE/KI22w7F9uXMVup95lJV
	AEvli7kg==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oLJJk-000QNE-Fe
	for barebox@lists.infradead.org; Tue, 09 Aug 2022 07:06:26 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oLJJg-0003Xp-4I; Tue, 09 Aug 2022 09:06:16 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oLJJf-0001r6-JQ; Tue, 09 Aug 2022 09:06:15 +0200
Date: Tue, 9 Aug 2022 09:06:15 +0200
To: Stefano Manni <stefano.manni@gmail.com>
Cc: barebox@lists.infradead.org
Message-ID: <20220809070615.GG31528@pengutronix.de>
References: <02bcbd486b7f41e5dc86bf9d228dcbf6e1fe9957.camel@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <02bcbd486b7f41e5dc86bf9d228dcbf6e1fe9957.camel@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220809_080622_260007_BC248A28 
X-CRM114-Status: GOOD (  25.79  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] kbuild: make FIT public key overwritable
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Jul 20, 2022 at 12:15:22PM +0200, Stefano Manni wrote:
> The path to the public key used to verify FIT images can be
> specified with Kconfig variable. For a better build system
> integration we also want to be able to specify the path in
> environment variables.
> 
> Signed-off-by: Stefano Manni <stefano.manni@gmail.com>
> ---
>  common/Kconfig       | 17 +++++++++++++++++
>  scripts/Makefile.lib |  8 +++++++-
>  2 files changed, 24 insertions(+), 1 deletion(-)

Nice. This makes it more consistent to the way the HABv4 files can be
specified as well.

Applied, thanks

Sascha


> 
> diff --git a/common/Kconfig b/common/Kconfig
> index 658437f..ceacf28 100644
> --- a/common/Kconfig
> +++ b/common/Kconfig
> @@ -643,6 +643,21 @@ config BOOTM_FITIMAGE_SIGNATURE
>  	  Additionally the barebox device tree needs a /signature node with the
>  	  public key with which the image has been signed.
>  
> +config BOOTM_FITIMAGE_PUBKEY_ENV
> +	bool "Specify path to public key in environment"
> +	depends on BOOTM_FITIMAGE_SIGNATURE
> +	help
> +	  If this option is enabled the path to the public key for verifying
> +	  FIT images signature is taken from environment which allows for
> +	  better integration with build systems.
> +
> +	  The environment variable has the same name as the corresponding
> +	  Kconfig variable:
> +
> +	  CONFIG_BOOTM_FITIMAGE_PUBKEY
> +
> +if BOOTM_FITIMAGE_SIGNATURE && !BOOTM_FITIMAGE_PUBKEY_ENV
> +
>  config BOOTM_FITIMAGE_PUBKEY
>  	string "Path to dtsi containing pubkey"
>  	default "../fit/pubkey.dtsi"
> @@ -652,6 +667,8 @@ config BOOTM_FITIMAGE_PUBKEY
>  	  snippet can then be included in a device tree with
>  	  "#include CONFIG_BOOTM_FITIMAGE_PUBKEY".
>  
> +endif
> +
>  config BOOTM_FORCE_SIGNED_IMAGES
>  	bool
>  	prompt "Force booting of signed images"
> diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
> index 3799e77..891b8dd 100644
> --- a/scripts/Makefile.lib
> +++ b/scripts/Makefile.lib
> @@ -479,6 +479,11 @@ overwrite-hab-env = $(shell set -e; \
>        test -n "$$$(1)"; \
>        echo -D$(1)=\\\"$(shell echo $$$(1))\\\")
>  
> +overwrite-fit-env = $(shell set -e; \
> +      test -n "$(CONFIG_BOOTM_FITIMAGE_PUBKEY_ENV)"; \
> +      test -n "$$$(1)"; \
> +      echo -D$(1)=\\\"$(shell echo $$$(1))\\\")
> +
>  imxcfg_cpp_flags  = -Wp,-MD,$(depfile) -nostdinc -x assembler-with-cpp \
>        -I $(srctree)/include -I $(srctree)/arch/arm/mach-imx/include \
>        -include include/generated/autoconf.h \
> @@ -487,7 +492,8 @@ imxcfg_cpp_flags  = -Wp,-MD,$(depfile) -nostdinc -x assembler-with-cpp \
>        $(call overwrite-hab-env,CONFIG_HABV3_IMG_CRT_DER) \
>        $(call overwrite-hab-env,CONFIG_HABV4_TABLE_BIN) \
>        $(call overwrite-hab-env,CONFIG_HABV4_CSF_CRT_PEM) \
> -      $(call overwrite-hab-env,CONFIG_HABV4_IMG_CRT_PEM)
> +      $(call overwrite-hab-env,CONFIG_HABV4_IMG_CRT_PEM) \
> +      $(call overwrite-fit-env,CONFIG_BOOTM_FITIMAGE_PUBKEY) \
>  
>  dcd-tmp = $(subst $(comma),_,$(dot-target).dcd.tmp)
>  
> -- 
> 2.7.4
> 
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


