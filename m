Delivery-date: Tue, 13 Aug 2024 08:29:04 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sdl1k-0096mY-14
	for lore@lore.pengutronix.de;
	Tue, 13 Aug 2024 08:29:04 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sdl1j-0002JW-LO
	for lore@pengutronix.de; Tue, 13 Aug 2024 08:29:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=YMIvSG+eH9+cd2OwGNBfTYxTVSJfUlWfPlleq48iAPA=; b=JYVISyYlwxdH9fJvqS6FkqODpe
	54RFoWD3O5fJzqwYYLK+3/RNQQ+ConIfKNSkgg7SkbaupZCHXiYKB9xrEelwrFvAwep3ywxxZ4jNH
	lRakEXer5WZC2MfXnrZ4A1pht/DH/0FCQ8NfUPutWiwBACuLpFuwoK19Km1sK10r4UKP5XtkMEfIt
	JNtzcfh54nfy4zJeoSRr1KlqJ0QpOZbn9EvLmZ+GUQxZPfOhXuHzh12AX75I0Tspgxa+oeRyt5xll
	IEqt0zJkQ45SCYCcHBdY5H1Jn7tFS1HFm7g67w+YcRdDeyn4Rp/k4+jxaP77oqo3PdlgZHKGPDkvz
	i/N6R62g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sdl1I-00000002ZxP-1LE9;
	Tue, 13 Aug 2024 06:28:36 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sdl1E-00000002ZwL-3bNN
	for barebox@lists.infradead.org;
	Tue, 13 Aug 2024 06:28:34 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sdl1D-0002GS-Kd; Tue, 13 Aug 2024 08:28:31 +0200
Message-ID: <520a960f-7adb-403b-a2c5-ee608177b7ff@pengutronix.de>
Date: Tue, 13 Aug 2024 08:28:31 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Yann Sionneau <ysionneau@kalrayinc.com>, barebox@lists.infradead.org
Cc: jvetter@kalrayinc.com, jborne@kalrayinc.com
References: <20240812144150.27707-1-ysionneau@kalrayinc.com>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240812144150.27707-1-ysionneau@kalrayinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240812_232832_931686_0F1F1AB9 
X-CRM114-Status: GOOD (  14.67  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 1/3] kvx: add qemu dts
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Yann,

On 12.08.24 16:41, Yann Sionneau wrote:
> Add qemu dts that will mostly be used to run test in CI.

Thanks for your patch.

> Signed-off-by: Yann Sionneau <ysionneau@kalrayinc.com>
> ---


>  obj-$(CONFIG_BOARD_K200) += k200.dtb.o
> +obj-$(CONFIG_BOARD_QEMU) += qemu.dtb.o

Given that you pass in the device tree externally anyway, how
about yo make this obj- an extra-y and drop the Kconfig change.
That way, the device tree is always generated alongside the
normal image.

>  
>  clean-files := *.dtb *.dtb.S .*.dtc .*.pre .*.dts *.dtb.z
> diff --git a/arch/kvx/dts/qemu.dts b/arch/kvx/dts/qemu.dts
> new file mode 100644
> index 0000000000..68d242c113
> --- /dev/null
> +++ b/arch/kvx/dts/qemu.dts
> @@ -0,0 +1,269 @@
> +/dts-v1/;
> +
> +/ {
> +	model = "Kalray Coolidge processor (QEMU)";
> +	#address-cells = <0x02>;
> +	#size-cells = <0x02>;
> +	compatible = "kalray,coolidge\0kalray,iss";

Is this a decompiled device tree?

Cheers,
Ahmad

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


