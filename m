Delivery-date: Fri, 19 Mar 2021 19:29:45 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lNJsX-0007sT-Ca
	for lore@lore.pengutronix.de; Fri, 19 Mar 2021 19:29:45 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lNJsW-0000fn-Lz
	for lore@pengutronix.de; Fri, 19 Mar 2021 19:29:45 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=+9543X5WnFl1l5sMG+uOqtfVM+9yt3nrmb06zEDV1oo=; b=fqGjmZvpKONMHnp3wfMSp6009
	FVtjJcFJVW3OMtsXoQCP7pF0pZUOf/A8cRNiw4eIVEsELkUj3/5FlRu4hyuQHVnM0+AP88tfWwlRJ
	pJFleTS+I6r2EwzF8ro+JCf9zd1AFwzO8Ih50ck6v3Ej27wGChW9XyEMlOdCJ+dRKoaAPxGNYYGfL
	qeLZEHEXn6YvIl2NX3GYULwsL64VwxRvWrVoLjoeB+yS37jde2ljH4mjG0I7HnLhoiT/BN8pzM92f
	Xz+nG1nvk4QokoRRKAfgEpDwVJgUAs3pOjNXfgLbSTFD4JmzBmK9C1WBAKFCvLP6X/JNO7OizmIbf
	vKn1AkztQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lNJrn-007wbh-W0; Fri, 19 Mar 2021 18:29:00 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lNJr2-007wRH-63
 for barebox@lists.infradead.org; Fri, 19 Mar 2021 18:28:14 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1lNJr0-0000Tu-Q7; Fri, 19 Mar 2021 19:28:10 +0100
To: Antony Pavlov <antonynpavlov@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org, rcz@pengutronix.de
References: <20210316080505.19361-1-a.fatoum@pengutronix.de>
 <20210316080505.19361-15-a.fatoum@pengutronix.de>
 <20210316171221.d9f38875021a468efdf41dc5@gmail.com>
 <33c77bd7-e4c3-e258-b47b-84bdce1c00ee@pengutronix.de>
 <20210319183705.5164077ba6b130220b8f7cb0@gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <1346e4a9-604a-5e94-3add-226b7ec4619c@pengutronix.de>
Date: Fri, 19 Mar 2021 19:28:10 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <20210319183705.5164077ba6b130220b8f7cb0@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210319_182812_328086_03B83A2D 
X-CRM114-Status: GOOD (  12.55  )
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
X-Spam-Status: No, score=-3.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 14/20] RISC-V: erizo: migrate to PBL
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Antony,

On 19.03.21 16:37, Antony Pavlov wrote:
> The first bad commit is 90cde3b9ff46 ("startup: Execute init scripts in alphabetical order").
> I have reproduced it with these compilers:
> 
>   * riscv32-unknown-elf-gcc (GCC) 7.2.0
>   * riscv64-linux-gnu-gcc (Debian 8.3.0-2) 8.3.0
>   * riscv64-linux-gnu-gcc-9 (Debian 9.3.0-18) 9.3.0

Thanks for investigating. !CONFIG_GLOB && !CONFIG_SHELL_NONE configurations
were universally broken. I just sent out a series to fix this.

Cheers,
Ahmad

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

