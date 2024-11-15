Delivery-date: Fri, 15 Nov 2024 15:03:48 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tBwvL-002H2v-3B
	for lore@lore.pengutronix.de;
	Fri, 15 Nov 2024 15:03:47 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tBwvL-0007w2-BW
	for lore@pengutronix.de; Fri, 15 Nov 2024 15:03:47 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=YPLpMdQbLnsdwwDM1qdbbgUzO5p/IySG1+xC+ELqUds=; b=hDY9uKWpxbPX4He5mxRXH9Q7zz
	BD4m5qQUwhUpRMa81UhVAX+g6+I1yUy1pqIdhOsKG6HbmWcMeCLkbN1pmzyhtk7SugGtWufEIm7zY
	nBuiA/YSsnGrdVJurhp/J6urV0MXqwcp8izx2aAYDghLevUz3cEvRgBIpSe/BV9h46WvS82Peuk/j
	wCRDRPyqjgPCmgNq3QasoN36tIS75hmFMG3cp1ZWT36A5osEx1ExMOFi3PyY3NpH5Y+5Yv8BXzSDi
	Ej2ZWH/JEduPZQOhFYXPo2yXT4vy8mA9cdCv3DA/1fu2Xxq+YExP1AIJGRH3+uRnilAjT2O647J3j
	XQYKtLAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tBwup-00000002vO3-2aDo;
	Fri, 15 Nov 2024 14:03:15 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tBwuF-00000002vIb-2NSs
	for barebox@lists.infradead.org;
	Fri, 15 Nov 2024 14:02:40 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[IPV6:::1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tBwuE-0007hW-AK; Fri, 15 Nov 2024 15:02:38 +0100
Message-ID: <ed999cd8-a8e3-4e19-ba7d-924e393945ab@pengutronix.de>
Date: Fri, 15 Nov 2024 15:02:37 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Stefano Manni <stefano.manni@gmail.com>, barebox@lists.infradead.org
References: <CANn9nbiT8J+irgWYQxiTydNyOiTEiXBo_ZLqdVG1EGpHY9eyOA@mail.gmail.com>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <CANn9nbiT8J+irgWYQxiTydNyOiTEiXBo_ZLqdVG1EGpHY9eyOA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241115_060239_607125_346D706C 
X-CRM114-Status: GOOD (  18.19  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: firmwareload fails for cortex-m7 on imx8mp
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Stefano,

On 15.11.24 14:43, Stefano Manni wrote:
> Dear all,
> 
> I cannot run an ELF image on the M7 core on the imx8mp soc.
> The ELF comes from zephyr and it runs as expected when I load it from linux,
> but in barebox I encounter this error:
> 
> barebox@NXP i.MX8MPlus EVK board:/ tftp zephyr.elf
>         [################################################################]
> barebox@NXP i.MX8MPlus EVK board:/ firmwareload zephyr.elf
> remoteproc0: powering up remoteproc-cm7.of
> DABT (current EL) exception (ESR 0x96000061) at 0x00000000007e0004

https://esr.arm64.dev/#0x96000061 decodes this as
"Abort caused by writing to memory" (Alignment fault) with valid FAR.

FAR is the addresss listed here (0x00000000007e0004), which is indeed
not divisible by 8.

> [<ffd826f4>] (__arch_memcpy+0x48/0x13c) from [<ffd82a00>] (memcpy+0xc/0x14)

The optimized memcpy used here expects misalignment not to trap.

> As you can see the exception happens when rproc_elf_load_segments() tries to
> memcpy a segment where the M7 expects it. The ELF has been compiled to run
> from ITCM memory (0x007E0000-0x007FFFFF).
> 
> Do you have any idea? Maybe may I have to put a reserved-memory for ITCM?

I think I may have broken this when I changed barebox to map everything outside
main memory as uncached.

I did this, because we 1) don't want to risk the main CPU speculating into I/O
memory and 2) don't want to have to use memory barriers for synchronization.

The flipside is that drivers that access I/O memory must do this via
readl/writel and friends or via memcpy_io/memset_io. This was already required
before, but some drivers that didn't do this were lucky enough to fly under
the radar. At least for remoteproc, this seems no longer the case.

I just Cc'd you on a patch to fix this for remoteproc.
Please let me know with a Tested-by if this resolves your issue.

Cheers,
Ahmad

> 
> Thank you.
> 
> Best,
> Stefano
> 
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


