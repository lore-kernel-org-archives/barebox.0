Delivery-date: Wed, 02 Nov 2022 13:56:41 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oqDIP-00CN9k-Bd
	for lore@lore.pengutronix.de; Wed, 02 Nov 2022 13:56:41 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oqDIN-0000Ed-8e
	for lore@pengutronix.de; Wed, 02 Nov 2022 13:56:39 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=O4vYvP0FHAyTMM3/0Yabcsqg0I0t1b+sfEcOwFYrbb8=; b=ywSvLcRI0kMqFtVr5b522JAWW+
	LQOcVvAldzF4eNdVjkeEq+dgygvE9v54tRX/2DrXgJLCHyHpkpmBdKTJQNk+5OCAh4/bE7vw2Im0n
	HALdXIhNcC2HmTG9jUj5gMDcAmSg8PwlXmeNKyO4qLB+TsiZXzEpXQUCmEeW+jBcJ9JhBI14jxMCS
	EkKM7H6Hv+TBSonIrTUkdSbMlCDdVSVtHMnil/VGDrDbLVTxI2i8Zfnryd5wuPxQofy7zHs0WyYDh
	PmxCPyKQniikHTaVBUkQtEcR+jJykrPihDPltQyUjLp2O8yGoZdPo2B8u7Uc/gb1qqO1O/t5UricH
	dWD5liyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oqDH4-00B6tq-M8; Wed, 02 Nov 2022 12:55:18 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oqDGy-00B6qH-JR
	for barebox@lists.infradead.org; Wed, 02 Nov 2022 12:55:15 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1oqDGr-0008DL-Mg; Wed, 02 Nov 2022 13:55:05 +0100
Message-ID: <59a5ac67-c503-cf43-d847-1f83d69bf98a@pengutronix.de>
Date: Wed, 2 Nov 2022 13:55:04 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Content-Language: en-US
To: Ahmad Fatoum <ahmad@a3f.at>, barebox@lists.infradead.org
Cc: Christian Melki <christian.melki@t2data.com>
References: <20221102124842.2520783-1-ahmad@a3f.at>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20221102124842.2520783-1-ahmad@a3f.at>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221102_055512_672643_D50DD4D5 
X-CRM114-Status: GOOD (  19.40  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] Kbuild: link barebox with -z noexecstack
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 02.11.22 13:48, Ahmad Fatoum wrote:
> We don't care for permission of ELF segments, but GNU ld (BFD)
> does and now with binutils 2.39+, it reports:
> 
>   ld: warning: defaultenv/defaultenv-2-menu.bbenv.o: missing
>   .note.GNU-stack section implies executable stack
> 
>   ld: NOTE: This behaviour is deprecated and will be removed in a future
>   version of the linker
> 
> Instead of touching all assembly objects and scripts creating them to
> add the section, just set -z noexecstack at link-time. This is already
> the LLVM linker (lld) default.
> 
> Reported-by: Christian Melki <christian.melki@t2data.com>
> Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
> ---

Please dismiss. I think we should just add it to KBUILD_LDFLAGS globally.

>  Makefile | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/Makefile b/Makefile
> index 26a0999a2e20..e57b8a4a1364 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -450,7 +450,7 @@ KBUILD_CFLAGS_KERNEL :=
>  KBUILD_AFLAGS_MODULE := -DMODULE
>  KBUILD_CFLAGS_MODULE := -DMODULE
>  
> -LDFLAGS_barebox	:= -Map barebox.map
> +LDFLAGS_barebox	:= -Map barebox.map -z noexecstack
>  
>  # Avoid 'Not enough room for program headers' error on binutils 2.28 onwards.
>  LDFLAGS_barebox += $(call ld-option, --no-dynamic-linker)

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



