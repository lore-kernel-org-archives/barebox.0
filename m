Delivery-date: Wed, 05 May 2021 12:46:44 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1leF3E-0007id-5f
	for lore@lore.pengutronix.de; Wed, 05 May 2021 12:46:44 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1leF3D-0002nC-C9
	for lore@pengutronix.de; Wed, 05 May 2021 12:46:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Date:Cc:To:From:
	Subject:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=mkqvDiT4iTkSwVT1Qkaa+f9CMQz2TymjA0LD9vznzFk=; b=RFAWcgmeTJp+U2MhVRQddPldy
	JG8MIQZK5bAbjxrge+an78YZqZJQNZPEVR5sfOd4ZanVVfpzTNTQxC7OYOEczTHaLW/4NIqPfJBcC
	DlyrZcvC81GM6R+3W2pjjdno6A0haZ8UaSYUh+aCSeq8JDwidNUWx25xvBmt2yyvvYIulNvNiZ2fX
	mgmhB6QrC7OojM00bj2rT7JgnyUmGO6h1kgyE69e1Hki7rESLI9GC40PaoWe8MehFhTxzTVzHvJ6z
	fhKWsiYqqu2801/dzTulk1wKO0T7nQkOewpukSEvtMcHb5oLZ0Jnw4l9IwON7QIVch5LuTcEfoZlU
	cQGUOXJEA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1leF2A-0010mu-AV; Wed, 05 May 2021 10:45:38 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1leF23-0010lz-24
 for barebox@desiato.infradead.org; Wed, 05 May 2021 10:45:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:Content-Type:References:In-Reply-To:Date:Cc:To:From:Subject:
 Message-ID:Sender:Reply-To:Content-ID:Content-Description;
 bh=0rGYocqHX3R958S/rjbgunqzAjSbTZt3NYxf9S5QTf4=; b=rNT9ZaSEyeI8o4OQuUhNmBDBRD
 XpPXf7zzdbgpU1r0FGpFUnjmGBxJC6gmlHI/gqniqofVMOmr9yV0csnU9US//2axYGRZ52t5K0+yb
 yEqk+q5dOeVwbcxSSsQuRvhJ/ObvIAj+/ycsQe+/njdnSe5bjOqTtnfIbdSs5cJZFXqe1KWQSuutS
 3I6h+/WDiV8zM4L4nYFzo9M35bkR+rS4OOKBY5xX2CjxBr17ur7LIWtI3OyPbkWjzcv0sJEk6n9OC
 zs6uEuZWkr1hlgPwXO6wfaqZ/q1uieA0SEzuLfS3D0/Nc+8b62pzYKsgdEi86LoSmZQ2qAZj8ps4L
 S4rZY1Sg==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1leF20-004gXH-AM
 for barebox@lists.infradead.org; Wed, 05 May 2021 10:45:29 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <jlu@pengutronix.de>)
 id 1leF1w-0002SZ-VC; Wed, 05 May 2021 12:45:24 +0200
Received: from localhost ([127.0.0.1])
 by ptx.hi.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <jlu@pengutronix.de>)
 id 1leF1w-0008UC-9o; Wed, 05 May 2021 12:45:24 +0200
Message-ID: <1f4419dcaf9646155cbb8e16aab21b0fcd04a976.camel@pengutronix.de>
From: Jan =?ISO-8859-1?Q?L=FCbbe?= <jlu@pengutronix.de>
To: Antony Pavlov <antonynpavlov@gmail.com>, barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 05 May 2021 12:45:23 +0200
In-Reply-To: <20210505100900.88141-8-antonynpavlov@gmail.com>
References: <20210505100900.88141-1-antonynpavlov@gmail.com>
 <20210505100900.88141-8-antonynpavlov@gmail.com>
User-Agent: Evolution 3.38.3-1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210505_034528_383546_2DFC3530 
X-CRM114-Status: GOOD (  14.82  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 7/9] RISC-V: add initial LiteX SoC support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, 2021-05-05 at 13:08 +0300, Antony Pavlov wrote:
> LiteX is a Migen-based System on Chip, supporting softcore
> VexRiscv CPU, a 32-bits Linux Capable RISC-V CPU.
> 
> See https://github.com/enjoy-digital/litex and
> https://github.com/litex-hub/linux-on-litex-vexriscv
> for details.
> 
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
> 
> 


> +config MACH_LITEX
> +	bool "litex family"
> +	select ARCH_RV32I
> +	select HAS_DEBUG_LL
> +	select HAS_NMON
> +	select USE_COMPRESSED_DTB
> +	select RISCV_SBI
> +


Hmm, there is also https://github.com/litex-hub/linux-on-litex-rocket/ which
uses the 64-bit RocketChip CPU. How would that fit into this naming scheme?
Would it be a different MACH?

> +/dts-v1/;
> +
> +/ {
> +	compatible = "litex,vexriscv-soc-linux";
> +
> +	#address-cells = <1>;
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

