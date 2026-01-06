Delivery-date: Tue, 06 Jan 2026 14:12:22 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vd6rG-001u0p-1g
	for lore@lore.pengutronix.de;
	Tue, 06 Jan 2026 14:12:22 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vd6rF-0005fq-Vn
	for lore@pengutronix.de; Tue, 06 Jan 2026 14:12:22 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=G9ESPXEcAbLAfisTBtRNpO3zE0qa/UR5AdCuSdaQyVs=; b=Sj4FTJrdxX4b7TCNePx4xzymOs
	g1+0Q9wCh4J1+AJQPM1MyGjp7g3l5emsQaB0WqJhQNRxqHaLrwHlogtJkrUJO0uTJSQbEsZMP8/Cp
	m34dLJhJPM2OCrS3U/Y4XpGSsopVgRlj7nrE1pDmK2SOJf7Dl398iv7mAXWf8qUGfRmi4KXXkRa78
	5SFBgJaIHbeTbE4dyxtgOhRWBcGIevJsz2y1MrsvMxdbmdmbB21tLpeUzLZvmcnCyBsBhNiR2qSyq
	0FK2VIP0OayOEsydsQ7n4Nt4vNnxbYuJgzChqOHBcfjrw1xTbxmYsu/s6c7TkOrLukPOv19SdWSoe
	11EtzKkA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd6qu-0000000D4LP-0J5m;
	Tue, 06 Jan 2026 13:12:00 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd6qt-0000000D4L4-2OnS
	for barebox@bombadil.infradead.org;
	Tue, 06 Jan 2026 13:11:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=G9ESPXEcAbLAfisTBtRNpO3zE0qa/UR5AdCuSdaQyVs=; b=bNyaMS5UksSJs/02uUwcHOds0i
	7xlHA2XtPf+Tvo0miTk65ErvFWVT8NvDU5wLAH+Hnc44zwpgAS6OEzyBHEKMzXorjRWsw7208E+dE
	JwkP85IgwvCDYZ2Fh1PUESWVBPDeQ8H0zPar2jyy37IhOpr97kPeV3+S2CGcdqhd99X9yPYVjrveX
	OaDlsRQTqzXlH58FEVNZGuP+VzOhEgsV4gPgqeGGtk7OaJ0sq14wIflOJUIab5e8r5HkPVlIYpgpb
	Gnr1wCi8KtbK0+QbFQQYqDzQ/gIwtEXhc1PmUZcD34YCaOhWsjdbFkx4y7rBAr22WjSEK7DUY1D97
	mkF93s6g==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd6qq-00000009k69-30T0
	for barebox@lists.infradead.org;
	Tue, 06 Jan 2026 13:11:58 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vd6qq-0005Ut-7l; Tue, 06 Jan 2026 14:11:56 +0100
Message-ID: <23363b31-361d-432a-b78e-e32613378025@pengutronix.de>
Date: Tue, 6 Jan 2026 14:11:55 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
Cc: "Claude Sonnet 4.5" <noreply@anthropic.com>,
 Marco Felsch <m.felsch@pengutronix.de>
References: <20260106-pbl-load-elf-v2-0-487bc760f045@pengutronix.de>
 <20260106-pbl-load-elf-v2-20-487bc760f045@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260106-pbl-load-elf-v2-20-487bc760f045@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260106_131156_810687_B2B404F6 
X-CRM114-Status: GOOD (  16.69  )
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
Subject: Re: [PATCH v2 20/21] riscv: Allwinner D1: Drop M-Mode
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)



On 1/6/26 1:53 PM, Sascha Hauer wrote:
> The Allwinner D1 selects both RISCV_M_MODE and RISCV_S_MODE. The board
> code uses barebox_riscv_machine_entry() and not barebox_riscv_machine_entry()
> which indicates RISCV_M_MODE was only selected by accident. Remove it.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  arch/riscv/Kconfig.socs | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/arch/riscv/Kconfig.socs b/arch/riscv/Kconfig.socs
> index 4a3b56b5fff48c86901ed0346be490a6847ac14e..0d9984dd2888e6cab81939e3ee97ef83851362a0 100644
> --- a/arch/riscv/Kconfig.socs
> +++ b/arch/riscv/Kconfig.socs
> @@ -123,7 +123,6 @@ if SOC_ALLWINNER_SUN20I
>  config BOARD_ALLWINNER_D1
>  	bool "Allwinner D1 Nezha"
>  	select RISCV_S_MODE
> -	select RISCV_M_MODE
>  	def_bool y
>  
>  endif
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



