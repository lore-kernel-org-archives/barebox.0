Delivery-date: Tue, 06 Jun 2023 10:07:33 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q6Rj4-00Cntg-EK
	for lore@lore.pengutronix.de; Tue, 06 Jun 2023 10:07:33 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q6Rj1-00016u-HQ
	for lore@pengutronix.de; Tue, 06 Jun 2023 10:07:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6Zw1LAw7KUZHx/xB98YlABCfy1HxZ71haUDqTD3AvdU=; b=NOYdyISrI04qux8TAhmsmc7g4+
	E9b/wHcvaENDR5+Ef0vzBYmg3w4xEgfEKS+UKmgHB2QikdSmHWLZuSeqfgB8whbfpeIwg/nknOXn0
	WaFOA2nHHjikwCNjG4ktFR4lKQ+9MJZ6nbjijIMtiiV9Bv4RXisaPNL5pESqoT+52qcIDn6s1Zqf5
	bspAp7ChRAD9FmFeWQFH2IpzE7pX+G6tLpy6XVvWadXRvw682Ipff1iiscpxoY9jY3Q/ajrU+lrXX
	Zly4FwYzfCYExeo+nnnaYSv8w6HBMTLHYJ3zeo/zdrfkWQkgd0stGRmrMyA1I0/YJ78P/b/S4CYFc
	1JgHIvDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q6Rhu-000jJl-13;
	Tue, 06 Jun 2023 08:06:22 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q6Rhq-000jIS-2g
	for barebox@lists.infradead.org;
	Tue, 06 Jun 2023 08:06:21 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1q6Rhp-0000v8-E7; Tue, 06 Jun 2023 10:06:17 +0200
Message-ID: <92765423-cd04-6074-1103-76cabec0ec69@pengutronix.de>
Date: Tue, 6 Jun 2023 10:06:15 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.1
Content-Language: en-US
To: Denis Orlov <denorl2009@gmail.com>, barebox@lists.infradead.org
References: <20230605202634.42175-1-denorl2009@gmail.com>
 <20230605202634.42175-2-denorl2009@gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230605202634.42175-2-denorl2009@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230606_010618_866043_FDA60F54 
X-CRM114-Status: GOOD (  15.92  )
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
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 01/17] MIPS: malta: allow to choose MIPS64 target CPU in
 config
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 05.06.23 22:10, Denis Orlov wrote:
> QEMU is able to emulate malta machine with a variety of MIPS CPUs,
> including MIPS64 ones, so allow to compile barebox for such
> configurations.
> 
> Signed-off-by: Denis Orlov <denorl2009@gmail.com>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  arch/mips/Kconfig | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/arch/mips/Kconfig b/arch/mips/Kconfig
> index 70d85690da..ab8c8cf176 100644
> --- a/arch/mips/Kconfig
> +++ b/arch/mips/Kconfig
> @@ -70,8 +70,11 @@ config MACH_MIPS_MALTA
>  	select CSRC_R4K_LIB
>  	select DRIVER_SERIAL_NS16550
>  	select SYS_HAS_CPU_MIPS32_R1
> +	select SYS_HAS_CPU_MIPS64_R1
>  	select SYS_HAS_CPU_MIPS32_R2
> +	select SYS_HAS_CPU_MIPS64_R2
>  	select SYS_SUPPORTS_32BIT_KERNEL
> +	select SYS_SUPPORTS_64BIT_KERNEL
>  	select SYS_SUPPORTS_BIG_ENDIAN
>  	select SYS_SUPPORTS_LITTLE_ENDIAN
>  	select HAS_DEBUG_LL

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



