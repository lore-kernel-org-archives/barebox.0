Delivery-date: Fri, 19 Aug 2022 09:33:33 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oOwVZ-003qgX-U8
	for lore@lore.pengutronix.de; Fri, 19 Aug 2022 09:33:33 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oOwVX-0005j3-Gv
	for lore@pengutronix.de; Fri, 19 Aug 2022 09:33:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=YlEYyY6sBv/h9yFvtlQxGsf+5l+fyExjNi4hab6/qvk=; b=PInk7mO+rgmjRid7AhGzNze2RU
	gx8XsU09HQXuziyBEp+eJbMBD3AQoCqEWH2/oNTlxJ3nopibMDGSRgr+xxzqIljhni17hrFnn2mXR
	oqtCVTrPv/UCukcF/Ddjaxe4fLTqy7wgroEiAw4rSA9Nnb8sqwqIAUNSF95Zd035Fc9uimatbpmi9
	IW39J2HvXMzDDpiq92z89JEyT63sExDWZinA2DH9pcrZoCKz3EGhc4rUt8vF3Mb6EYhCDniRK4UEx
	IKaV5FDEypUM0e6B1SaAshuZFlqsLfp4cstTbRFFuw4SB9z9HPNq2uR8Of1LAb3p/2bvv/2XpnWrS
	02q6Y7tg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOwU9-003PRL-1D; Fri, 19 Aug 2022 07:32:05 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOwTt-003P9a-AT
	for barebox@lists.infradead.org; Fri, 19 Aug 2022 07:31:52 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oOwTr-0005HF-Cm; Fri, 19 Aug 2022 09:31:47 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oOwTr-0006qg-3r; Fri, 19 Aug 2022 09:31:47 +0200
Date: Fri, 19 Aug 2022 09:31:47 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220819073147.GB17485@pengutronix.de>
References: <20220818050447.2072932-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220818050447.2072932-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220819_003149_426862_0C643EBF 
X-CRM114-Status: GOOD (  20.97  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2 1/4] kbuild: make sha256sum command available generally
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Aug 18, 2022 at 07:04:44AM +0200, Ahmad Fatoum wrote:
> We currently use the command only for generation a SHA256 sum of the
> barebox proper binary. In preparation for using it in othe Makefiles
> as well, move it to a central location and use the occasion to give
> it a short comment.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
> v1 -> v2:
>   - no change
> ---
>  images/Makefile      |  7 -------
>  scripts/Makefile.lib | 11 +++++++++++
>  2 files changed, 11 insertions(+), 7 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/images/Makefile b/images/Makefile
> index 7a8bb94fe0df..218a24ff1ddd 100644
> --- a/images/Makefile
> +++ b/images/Makefile
> @@ -112,13 +112,6 @@ $(obj)/piggy.o: $(obj)/barebox.z FORCE
>  
>  $(obj)/sha_sum.o: $(obj)/barebox.sha.bin FORCE
>  
> -quiet_cmd_sha256bin ?= SHA-BIN $@
> -      cmd_sha256bin = printf "$(shell sed 's/ .*$$//;s/../0x&\n/g;s/\n$$//' $(obj)/barebox.sum | \
> -			while read -r byte; do printf '\%o' $$byte; done)" > $@
> -
> -quiet_cmd_sha256sum ?= SHA     $@
> -      cmd_sha256sum ?= sha256sum $(obj)/barebox.z > $@
> -
>  $(obj)/barebox.sha.bin: $(obj)/barebox.sum FORCE
>  	$(call if_changed,sha256bin)
>  
> diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
> index 46042dab3c8f..16308497b845 100644
> --- a/scripts/Makefile.lib
> +++ b/scripts/Makefile.lib
> @@ -272,6 +272,17 @@ cmd_ld = $(LD) $(KBUILD_LDFLAGS) $(EXTRA_LDFLAGS) $(LDFLAGS_$(@F)) \
>  quiet_cmd_objcopy = OBJCOPY $@
>  cmd_objcopy = $(OBJCOPY) $(OBJCOPYFLAGS) $(OBJCOPYFLAGS_$(@F)) $< $@
>  
> +# Hashing
> +# ---------------------------------------------------------------------------
> +# POSIX printf (e.g. dash's) doesn't support \xHH, but octal sequences are fine
> +
> +quiet_cmd_sha256bin ?= SHA-BIN $@
> +      cmd_sha256bin = printf "$(shell sed 's/ .*$$//;s/../0x&\n/g;s/\n$$//' $< | \
> +			while read -r byte; do printf '\%o' $$byte; done)" > $@
> +
> +quiet_cmd_sha256sum ?= SHA     $@
> +      cmd_sha256sum ?= sha256sum $< > $@
> +
>  # Decompressor for barebox proper binary when using PBL
>  # ---------------------------------------------------------------------------
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


