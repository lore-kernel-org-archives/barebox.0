Delivery-date: Tue, 21 Jan 2025 09:21:28 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ta9Vn-002ZqV-1V
	for lore@lore.pengutronix.de;
	Tue, 21 Jan 2025 09:21:28 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ta9Vn-0007n2-FD
	for lore@pengutronix.de; Tue, 21 Jan 2025 09:21:28 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=lljEQiFclp+MRonos5uHzdTBgoyQke7gsS6LescNyi8=; b=LYe/7KQEuy7s5j5InL7MECMN7K
	M7KQqwsBDwgWA2GKf/SaW0TPX+JMRnWnNPHqEG4bCKLwlZPn5bEHerL/43Eb0+tZgJ0nN4w1FDiRA
	zgRBAJSVNKzhitTb0l51s6OY3NT8OWioTcg/e3a4tJZyUSjtbyY/o36raUNL8WTuEtS9wsJYxAXSD
	uTCCUSFNMEj26K0xDEhzppxqSPILG0cBO9bOr+meZv7pXWpnZW9SaTxwo7ehVefboNVYXBkZ6SMeY
	2h/MJN3bHuZxyQQ73mcpOdiFYTC6tCH4ZgWeJKO5Jl1nrWOkTLCQ9sSiKa0R2T0MQHS2N+X2w61gH
	GONswfkw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1ta9VM-00000007FPA-33gt;
	Tue, 21 Jan 2025 08:21:00 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1ta9VJ-00000007FNe-1j99
	for barebox@lists.infradead.org;
	Tue, 21 Jan 2025 08:20:58 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1ta9VH-0007gG-UT; Tue, 21 Jan 2025 09:20:55 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1ta9VH-0014l1-2Q;
	Tue, 21 Jan 2025 09:20:55 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1ta9VH-005p1M-29;
	Tue, 21 Jan 2025 09:20:55 +0100
Date: Tue, 21 Jan 2025 09:20:55 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <Z49Y5z7tSx5lv5xE@pengutronix.de>
References: <20250116140924.298889-1-a.fatoum@pengutronix.de>
 <20250116140924.298889-2-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250116140924.298889-2-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250121_002057_452839_35DB79EA 
X-CRM114-Status: GOOD (  22.83  )
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
X-Spam-Status: No, score=-6.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/2] kbuild: allow overriding compression tools
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Thu, Jan 16, 2025 at 03:09:24PM +0100, Ahmad Fatoum wrote:
> barebox proper is usually compressed and this introduces a dependency on
> an outside host tool depending on the chosen compression algo.
> 
> So far, we expected the utility to be in PATH, but to allow build
> systems to place it elsewhere, let's copy what Linux does and adopt a number
> of Make variable that can be overridden from the outside.

What about the recently introduced scripts/make_fit.py?

Sascha

> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  Makefile             |  6 ++++++
>  scripts/Makefile.lib | 12 ++++++------
>  scripts/xz_wrap.sh   |  5 +++--
>  3 files changed, 15 insertions(+), 8 deletions(-)
> 
> diff --git a/Makefile b/Makefile
> index 3487aba201b9..81cab701230e 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -440,6 +440,12 @@ PYTHON3		= python3
>  CHECK		= sparse
>  MKIMAGE		= mkimage
>  BASH		= bash
> +KGZIP		= gzip
> +KBZIP2		= bzip2
> +KLZOP		= lzop
> +LZMA		= lzma
> +LZ4		= lz4
> +XZ		= xz
>  
>  CHECKFLAGS     := -D__linux__ -Dlinux -D__STDC__ -Dunix -D__unix__ -Wbitwise $(CF)
>  CFLAGS_KERNEL	=
> diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
> index f195ddb7e885..d4f202bd48bd 100644
> --- a/scripts/Makefile.lib
> +++ b/scripts/Makefile.lib
> @@ -342,7 +342,7 @@ suffix_$(CONFIG_IMAGE_COMPRESSION_NONE) = comp_copy
>  # ---------------------------------------------------------------------------
>  
>  quiet_cmd_gzip = GZIP    $@
> -cmd_gzip = (cat $(filter-out FORCE,$^) | gzip -n -f -9 > $@) || \
> +cmd_gzip = (cat $(filter-out FORCE,$^) | $(KGZIP) -n -f -9 > $@) || \
>  	(rm -f $@ ; false)
>  
>  %.gz: %
> @@ -373,7 +373,7 @@ cmd_xzkern = (cat $(filter-out FORCE,$^) | \
>  
>  quiet_cmd_xzmisc = XZMISC  $@
>  cmd_xzmisc = (cat $(filter-out FORCE,$^) | \
> -	xz --check=crc32 --lzma2=dict=1MiB) > $@ || \
> +	$(XZ) --check=crc32 --lzma2=dict=1MiB) > $@ || \
>  	(rm -f $@ ; false)
>  
>  %.xzkern: %
> @@ -482,7 +482,7 @@ printf "%08x\n" $$dec_size |						\
>  
>  quiet_cmd_bzip2 = BZIP2   $@
>  cmd_bzip2 = (cat $(filter-out FORCE,$^) | \
> -	bzip2 -9 && $(call size_append, $(filter-out FORCE,$^))) > $@ || \
> +	$(KBZIP2) -9 && $(call size_append, $(filter-out FORCE,$^))) > $@ || \
>  	(rm -f $@ ; false)
>  
>  %.bz2: %
> @@ -493,7 +493,7 @@ cmd_bzip2 = (cat $(filter-out FORCE,$^) | \
>  
>  quiet_cmd_lzma = LZMA    $@
>  cmd_lzma = (cat $(filter-out FORCE,$^) | \
> -	lzma -9 && $(call size_append, $(filter-out FORCE,$^))) > $@ || \
> +	$(LZMA) -9 && $(call size_append, $(filter-out FORCE,$^))) > $@ || \
>  	(rm -f $@ ; false)
>  
>  %.lzma: %
> @@ -501,7 +501,7 @@ cmd_lzma = (cat $(filter-out FORCE,$^) | \
>  
>  quiet_cmd_lzo = LZO     $@
>  cmd_lzo = (cat $(filter-out FORCE,$^) | \
> -	lzop -9 && $(call size_append, $(filter-out FORCE,$^))) > $@ || \
> +	$(KLZOP) -9 && $(call size_append, $(filter-out FORCE,$^))) > $@ || \
>  	(rm -f $@ ; false)
>  
>  %.lzo: %
> @@ -512,7 +512,7 @@ cmd_lzo = (cat $(filter-out FORCE,$^) | \
>  
>  quiet_cmd_lz4 = LZ4     $@
>  cmd_lz4 = (cat $(filter-out FORCE,$^) | \
> -	lz4 -l --best stdin stdout && $(call size_append, $(filter-out FORCE,$^))) > $@ || \
> +	$(LZ4) -l --best stdin stdout && $(call size_append, $(filter-out FORCE,$^))) > $@ || \
>  	(rm -f $@ ; false)
>  
>  %.lz4: %
> diff --git a/scripts/xz_wrap.sh b/scripts/xz_wrap.sh
> index 02823bc1df18..a106b1a9e6d2 100755
> --- a/scripts/xz_wrap.sh
> +++ b/scripts/xz_wrap.sh
> @@ -11,6 +11,7 @@
>  
>  BCJ=
>  LZMA2OPTS=
> +XZ=${XZ:-xz}
>  
>  case $SRCARCH in
>  	x86)            BCJ=--x86 ;;
> @@ -26,7 +27,7 @@ fi
>  
>  # clear BCJ filter if unsupported
>  if [ -n "${BCJ}" ]; then
> -	xz -H | grep -q -- $BCJ || BCJ=
> +	$XZ -H | grep -q -- $BCJ || BCJ=
>  fi
>  
> -exec xz --check=crc32 $BCJ --lzma2=$LZMA2OPTS,dict=32MiB
> +exec $XZ --check=crc32 $BCJ --lzma2=$LZMA2OPTS,dict=32MiB
> -- 
> 2.39.5
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


