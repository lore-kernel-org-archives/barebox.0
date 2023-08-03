Delivery-date: Thu, 03 Aug 2023 12:44:30 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qRVok-004w2A-ML
	for lore@lore.pengutronix.de; Thu, 03 Aug 2023 12:44:30 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qRVoi-0000Ff-UT
	for lore@pengutronix.de; Thu, 03 Aug 2023 12:44:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=H556yaGgi+8dAT2Zbojp/WorRLhteJn+s0ZFW2lo45o=; b=T+ZO5eGomcXX379esfmf/EnIQe
	6sxHY7SmlSG8MCELd6e6alN5cQn285lgzPauByWAgpKvcNBYDYvVZL1EXRnJheVltHAuWg++1/ebW
	JtNlTaZH28ixP7AdBzRqNqtJMYSM0TY5fvV1zrwXKZgrCbHmHOgxVwi9vWZUfJYncPCIMcbePY2re
	A4dXA6d4DqcvzjGOE/RO25VRVvsdBiBr9HMTaoX3/kVMspr/88CnqW3/Guq+GvcWsP2eaBrx34/wh
	hayjSqfECeexpmnYJso3hMWGKrUFKpxyDm+DjAWvuLT1bKbwr1kBsWUmlODLElq5rd8o7bAr0dXkl
	LYq4ZQUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qRVni-007S5X-2f;
	Thu, 03 Aug 2023 10:43:26 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qRVna-007S2n-3A
	for barebox@lists.infradead.org;
	Thu, 03 Aug 2023 10:43:23 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1qRVnZ-0008Pf-Nx; Thu, 03 Aug 2023 12:43:17 +0200
Message-ID: <11e8b1e6-3206-630f-575d-f3932b8f565c@pengutronix.de>
Date: Thu, 3 Aug 2023 12:43:17 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: Alexander Shiyan <eagle.alexander923@gmail.com>
Cc: barebox@lists.infradead.org
References: <20230802162108.1738676-1-a.fatoum@pengutronix.de>
 <CAP1tNvQE=22Hbo2e2t=TzUbWfaqpUo4y-Xsfx5-owJtEi3TXqA@mail.gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <CAP1tNvQE=22Hbo2e2t=TzUbWfaqpUo4y-Xsfx5-owJtEi3TXqA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230803_034319_025203_20C20861 
X-CRM114-Status: GOOD (  20.16  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH master] scripts: fix pkg-config use for rsatoc/rkimage
 hosttools
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Alexander,

On 03.08.23 07:18, Alexander Shiyan wrote:
> Hello.
> Looks like I did pretty much the same for buildroot:
> https://git.busybox.net/buildroot/commit/boot/barebox?id=624d50b20cf4bf4a67ad6274263f85927660f8c4

I had something similar in my Yocto BSP as well, so pkg-config --libs works.
It worked fine until I tried to build rsatoc inside a Ubuntu 18.04 docker container
that had no OpenSSL3 preinstalled. and I found out that pkg-config --cflags
had no effect for these two utilities. This is fixed by this patch.

Cheers,
Ahmad

> 
> ср, 2 авг. 2023 г. в 19:22, Ahmad Fatoum <a.fatoum@pengutronix.de>:
>>
>> Source files built for running on the build host can be given extra
>> argument via the HOSTCFLAGS variable. This is evaluates in
>> scripts/Makefile.host and results in adding $(HOSTCFLAGS_$(target-stem).o)
>> during each HOSTCC invocation.
>>
>> We do that correctly at all places, except for two: rsatoc and rkimage
>> both use openssl, but they only have HOSTLDLIBS_rsatoc correctly set for
>> linking against openssl. HOSTCFLAGS_ however was incorrectly set for
>> the targets without the .o suffix and compiling these files only worked,
>> because OpenSSL was installed into a directory that's in the default
>> include search path. This is not a given, e.g. when building barebox
>> through OpenEmbedded inside a container without openssl headers, so
>> let's ensure pkg-config is correctly used.
>>
>> Fixes: 128ad3cbe043 ("scripts: Add rsatoc tool")
>> Fixes: 63f612f9e0ea ("ARM: Rockchip: Add rkimage tool")
>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> ---
>>  scripts/Makefile | 4 ++--
>>  1 file changed, 2 insertions(+), 2 deletions(-)
>>
>> diff --git a/scripts/Makefile b/scripts/Makefile
>> index 01b21a61692c..b8dd15cbf798 100644
>> --- a/scripts/Makefile
>> +++ b/scripts/Makefile
>> @@ -12,7 +12,7 @@ hostprogs-always-y                                    += bareboxcrc32
>>  hostprogs-always-y                                     += kernel-install
>>  hostprogs-always-$(CONFIG_QOICONV)                     += qoiconv
>>  hostprogs-always-$(CONFIG_CRYPTO_RSA_BUILTIN_KEYS)     += rsatoc
>> -HOSTCFLAGS_rsatoc = `$(PKG_CONFIG) --cflags openssl`
>> +HOSTCFLAGS_rsatoc.o = `$(PKG_CONFIG) --cflags openssl`
>>  HOSTLDLIBS_rsatoc = `$(PKG_CONFIG) --libs openssl`
>>  hostprogs-always-$(CONFIG_IMD)                         += bareboximd
>>  hostprogs-always-$(CONFIG_KALLSYMS)                    += kallsyms
>> @@ -28,7 +28,7 @@ hostprogs-always-$(CONFIG_LAYERSCAPE_PBLIMAGE)                += pblimage
>>  hostprogs-always-$(CONFIG_STM32_IMAGE)                 += stm32image
>>  hostprogs-always-$(CONFIG_RISCV)                       += prelink-riscv
>>  hostprogs-always-$(CONFIG_RK_IMAGE)                    += rkimage
>> -HOSTCFLAGS_rkimage = `$(PKG_CONFIG) --cflags openssl`
>> +HOSTCFLAGS_rkimage.o = `$(PKG_CONFIG) --cflags openssl`
>>  HOSTLDLIBS_rkimage = `$(PKG_CONFIG) --libs openssl`
>>  KBUILD_HOSTCFLAGS += -I$(srctree)/scripts/include/
>>  HOSTLDLIBS_mxsimage  = `$(PKG_CONFIG) --libs openssl`
>> --
>> 2.39.2
>>
>>
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



