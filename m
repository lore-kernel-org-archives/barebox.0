Delivery-date: Mon, 12 Jan 2026 14:09:17 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vfHfa-000X1s-11
	for lore@lore.pengutronix.de;
	Mon, 12 Jan 2026 14:09:17 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vfHfZ-0004cJ-9l
	for lore@pengutronix.de; Mon, 12 Jan 2026 14:09:17 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=PvyG2lLJG4QnAmsmptXSgr29M5K1kDUk1rtzZCkXx5A=; b=xfkDG+91T51dg7wP3Px14vEKuF
	+lGU3ek2dtYI2RymswUeowZdrZrPRUqxkMV+6FPRZoulSDCDquyaMVNeWtzvVcXaokrOM2J4EjnZt
	9Pbyb0w5oTy6lZM0k4jTavg36iXCf/pyX9TTKZNhDfbuDmDa7RNJ4IoJvd1AO2wTWBiG+JS0Envh5
	4bk0mESbWYCxcq2X5xsh+XyxnwO9+WlfGOaobbVcUOuCnlllvBtkpyTNjBuNn8nknakuPLth0S0vl
	q3hZLlxQbJuuidOXBDYslSs7sR5QZHgPUToG+jNFAcojq8z80Fq9558rRu8Rk3ZoHpuxFuco4Er5s
	n9a8Y4Tw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfHf3-00000005Na1-3WT8;
	Mon, 12 Jan 2026 13:08:45 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfHf1-00000005NZY-1y7w
	for barebox@lists.infradead.org;
	Mon, 12 Jan 2026 13:08:44 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vfHez-0004N1-Vr; Mon, 12 Jan 2026 14:08:42 +0100
Message-ID: <e99b8969-f034-4048-a690-8712a7fb95bc@pengutronix.de>
Date: Mon, 12 Jan 2026 14:08:41 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
Cc: "Claude Sonnet 4.5" <noreply@anthropic.com>
References: <20260108-pbl-load-elf-v3-0-e28c931fc179@pengutronix.de>
 <20260108-pbl-load-elf-v3-10-e28c931fc179@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20260108-pbl-load-elf-v3-10-e28c931fc179@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260112_050843_511462_8C169D38 
X-CRM114-Status: GOOD (  16.52  )
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
Subject: Re: [PATCH v3 10/23] Makefile: add vmbarebox build target
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)



On 1/8/26 4:50 PM, Sascha Hauer wrote:
> Add a build target to create vmbarebox, which provides an ELF format
> version of barebox that will be used later to link into the PBL
> 
> Co-Authored-By: Claude Sonnet 4.5 <noreply@anthropic.com>
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

But see nitpick below

> ---
>  Makefile | 11 ++++++++++-
>  1 file changed, 10 insertions(+), 1 deletion(-)
> 
> diff --git a/Makefile b/Makefile
> index 3b31cecc22c431a063b8d2d3c387da487b698e74..9d8fe242411422163cb800c0b2dd1eb9f0709f47 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -1096,6 +1096,15 @@ barebox.fit: images/barebox-$(CONFIG_ARCH_LINUX_NAME).fit
>  barebox.srec: barebox
>  	$(OBJCOPY) -O srec $< $@
>  
> +OBJCOPYFLAGS_vmbarebox = $(call objcopy-option,--strip-section-headers,--strip-all)  \
> +			 --remove-section=.comment \
> +			 --remove-section=.note* \
> +			 --remove-section=.note.gnu.build-id \

Should be covered by above line.

> +			 --remove-section=.gnu.hash
> +
> +vmbarebox: barebox FORCE
> +	$(call if_changed,objcopy)
> +
>  quiet_cmd_barebox_proper__ = CC      $@
>        cmd_barebox_proper__ = $(CC) -r -o $@ -Wl,--whole-archive $(BAREBOX_OBJS)
>  
> @@ -1378,7 +1387,7 @@ CLEAN_FILES +=	barebox System.map include/generated/barebox_default_env.h \
>                  .tmp_version .tmp_barebox* barebox.bin barebox.map \
>  		.tmp_kallsyms* compile_commands.json \
>  		.tmp_barebox.o barebox.o barebox-flash-image \
> -		barebox.srec barebox.efi
> +		barebox.srec barebox.efi vmbarebox
>  
>  CLEAN_FILES +=	scripts/bareboxenv-target scripts/kernel-install-target \
>  		scripts/bareboxcrc32-target scripts/bareboximd-target \
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



