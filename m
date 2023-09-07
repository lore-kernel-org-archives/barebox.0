Delivery-date: Thu, 07 Sep 2023 10:54:49 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qeAmo-006vX1-Tn
	for lore@lore.pengutronix.de; Thu, 07 Sep 2023 10:54:49 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qeAmm-0007ht-IN
	for lore@pengutronix.de; Thu, 07 Sep 2023 10:54:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Tt23jLbQpfW/qTG6fqJHh7HcCKsq8FnA/AtglRlMDeY=; b=CElnm1NDce7ve/YAttth9Mp/Wg
	RkPkhNeXXwe9rZ/A6T24S5c+JKxeIXWVKm/z8vhqMJcX+fTxFw4pow94S7aQovpcl6J2+qMVZq2rg
	m3QrniX6zQGPnJYVDzpgFFKMTTrlNujgEEwB/kiBIriFmbaWgVHkmXkNbyFG5U0BU82oKXrTMScUL
	lomG9QtLUAxA/Fq/un2po611WwY0CPKu8njzVlRBcoOSB7UT77i6ppxJRHp7NPg7dz8Sz5btR2zbO
	EoTjpkhUxcL/JSpowHV0T5H1H2oUKHnyi7JqGdGS6vKg+mkGtEnXMs+Is/F6iqSar6h40BJ9ydQG+
	rPySVAYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qeAla-00Bccy-0r;
	Thu, 07 Sep 2023 08:53:34 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qeAlW-00BccK-2l
	for barebox@lists.infradead.org;
	Thu, 07 Sep 2023 08:53:32 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1qeAlU-0007FF-UM; Thu, 07 Sep 2023 10:53:28 +0200
Message-ID: <9acd4227-891f-4809-553e-94ccf9c9bac5@pengutronix.de>
Date: Thu, 7 Sep 2023 10:53:28 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: Jules Maselbas <jmaselbas@zdiv.net>, barebox@lists.infradead.org
References: <20230906150857.32035-1-jmaselbas@zdiv.net>
 <20230906150857.32035-3-jmaselbas@zdiv.net>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230906150857.32035-3-jmaselbas@zdiv.net>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230907_015330_895961_EC4D7755 
X-CRM114-Status: GOOD (  24.46  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 3/3] kbuild: remove duplicated xz compressions target
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 06.09.23 17:08, Jules Maselbas wrote:
> Both cmd_xzkern and cmd_xzmisc where already defined in the same file
> 
> Signed-off-by: Jules Maselbas <jmaselbas@zdiv.net>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  scripts/Makefile.lib | 28 ----------------------------
>  1 file changed, 28 deletions(-)
> 
> diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
> index f04c09f9e2..6baa618f15 100644
> --- a/scripts/Makefile.lib
> +++ b/scripts/Makefile.lib
> @@ -470,34 +470,6 @@ cmd_lzo = (cat $(filter-out FORCE,$^) | \
>  %.lzo: %
>  	$(call if_changed,lzo)
>  
> -# XZ
> -# ---------------------------------------------------------------------------
> -# Use xzkern to compress the kernel image and xzmisc to compress other things.
> -#
> -# xzkern uses a big LZMA2 dictionary since it doesn't increase memory usage
> -# of the kernel decompressor. A BCJ filter is used if it is available for
> -# the target architecture. xzkern also appends uncompressed size of the data
> -# using size_append. The .xz format has the size information available at
> -# the end of the file too, but it's in more complex format and it's good to
> -# avoid changing the part of the boot code that reads the uncompressed size.
> -# Note that the bytes added by size_append will make the xz tool think that
> -# the file is corrupt. This is expected.
> -#
> -# xzmisc doesn't use size_append, so it can be used to create normal .xz
> -# files. xzmisc uses smaller LZMA2 dictionary than xzkern, because a very
> -# big dictionary would increase the memory usage too much in the multi-call
> -# decompression mode. A BCJ filter isn't used either.
> -quiet_cmd_xzkern = XZKERN  $@
> -cmd_xzkern = (cat $(filter-out FORCE,$^) | \
> -	sh $(srctree)/scripts/xz_wrap.sh && \
> -	$(call size_append, $(filter-out FORCE,$^))) > $@ || \
> -	(rm -f $@ ; false)
> -
> -quiet_cmd_xzmisc = XZMISC  $@
> -cmd_xzmisc = (cat $(filter-out FORCE,$^) | \
> -	xz --check=crc32 --lzma2=dict=1MiB) > $@ || \
> -	(rm -f $@ ; false)
> -
>  # lz4
>  # ---------------------------------------------------------------------------
>  

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



