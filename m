Delivery-date: Wed, 14 Dec 2022 11:26:34 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p5Oy9-003XWn-HW
	for lore@lore.pengutronix.de; Wed, 14 Dec 2022 11:26:34 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p5Oy8-0001Em-Sm
	for lore@pengutronix.de; Wed, 14 Dec 2022 11:26:33 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3cMf1PwsYPhc+3cgDDKa5OEvlEPHn/3CD7GwBkrOfSE=; b=vd/5uej0SQgIDJ0MxFlx9x4qmq
	ycIsqYJXN3AOwhbjujwVQCIa4eqxGFO07dfzQRbA4FkYu8hrc7xMChQBhzN8/DKkTImJNjMS/ej2E
	r4wqBW7hZ04Q2Gwn4GRNyDJTNsGBEzHvQh5CIjq3qCikNFyU3giMOGDLMRUEGUdC3Qr0od6Qbe0PC
	MXBxrEwQ+ETwTuxrgvoAdgJMJH/KzNlpUdbNB3UgA9APvnAmysjaQHMULu+4e0zydoEuJXoMzM2ZP
	NfMqKg8FpmTDSUgv3lNx7gScVIa2ch3j+8ZSi5xH20Ni1ZUDGEsM9pg8QFAAl8+zEMDtlHJY5i7yi
	pqeB0FsA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p5Owp-00FYbR-AB; Wed, 14 Dec 2022 10:25:11 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p5Owl-00FYYP-0R
	for barebox@lists.infradead.org; Wed, 14 Dec 2022 10:25:08 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1p5Owj-0000s1-3q; Wed, 14 Dec 2022 11:25:05 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1p5Owi-0003G8-S3; Wed, 14 Dec 2022 11:25:04 +0100
Date: Wed, 14 Dec 2022 11:25:04 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20221214102504.GA11668@pengutronix.de>
References: <20221212164212.2358450-1-a.fatoum@pengutronix.de>
 <20221212164212.2358450-3-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221212164212.2358450-3-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221214_022507_072732_B5FE462C 
X-CRM114-Status: GOOD (  24.62  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 3/3] pbl: define DEBUG globally when
 CONFIG_INITCALL_DEBUG=y
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Dec 12, 2022 at 05:42:12PM +0100, Ahmad Fatoum wrote:
> CONFIG_INITCALL_DEBUG=y is a very useful tool for debugging barebox
> hangs, but it's not so useful if the hang happens very early.
> Define a new CONFIG_PBL_DEBUG symbol that will define DEBUG globally
> in PBL to get more insight into boot hangs.

s/CONFIG_PBL_DEBUG/CONFIG_DEBUG_PBL/

Fixed that and adjusted to subject to the updated patch while applying.

Sascha

> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
> v1 -> v2:
>   - changed into separate config option instead of piggy backing
>     CONFIG_DEBUG_INITCALLS (Sascha)
> ---
>  common/Kconfig       | 9 +++++++++
>  scripts/Makefile.lib | 4 ++++
>  2 files changed, 13 insertions(+)
> 
> diff --git a/common/Kconfig b/common/Kconfig
> index 19cd79311016..46675dfe2ea7 100644
> --- a/common/Kconfig
> +++ b/common/Kconfig
> @@ -1566,6 +1566,15 @@ config DEBUG_INITCALLS
>  	help
>  	  If enabled this will print initcall traces.
>  
> +config DEBUG_PBL
> +	bool "Print PBL debugging information"
> +	depends on PBL_CONSOLE || DEBUG_LL
> +	help
> +	  If enabled this will enable all debug prints in the prebootloader.
> +	  For this to work, a console needs to be configured in the
> +	  board-specific entry point and configured for either DEBUG_LL
> +	  or PBL_CONSOLE.
> +
>  config DEBUG_PROBES
>  	bool "Trace driver probes/removes"
>  	help
> diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
> index 85d18f07a2b6..6e0d92cf756d 100644
> --- a/scripts/Makefile.lib
> +++ b/scripts/Makefile.lib
> @@ -156,6 +156,10 @@ _c_flags       += $(if $(patsubst n%,, \
>  PBL_CPPFLAGS   += $(call cc-option,-fno-sanitize=all)
>  endif
>  
> +ifeq ($(CONFIG_DEBUG_PBL),y)
> +PBL_CPPFLAGS   += -DDEBUG
> +endif
> +
>  # If building barebox in a separate objtree expand all occurrences
>  # of -Idir to -I$(srctree)/dir except for absolute paths (starting with '/').
>  
> -- 
> 2.30.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


