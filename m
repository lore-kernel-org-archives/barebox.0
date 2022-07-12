Delivery-date: Tue, 12 Jul 2022 08:01:16 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oB8xR-00433S-Bj
	for lore@lore.pengutronix.de; Tue, 12 Jul 2022 08:01:16 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oB8xP-0006yF-C6
	for lore@pengutronix.de; Tue, 12 Jul 2022 08:01:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=KEAycxVRD2Dq0+98RL6muJD2q/TJ40qs2cz8xPX0tfQ=; b=3hwvb2e3G3HqLaRUv/R9e+O0Yv
	eRQWxoRbJYBsLhtOjp+3Ixb0TSUNzuXVhZxAYSyUKc/TCbDiqfQ5cQeik+kk//wDxg17fXV3x7WwM
	6fP7aI1zCO8rqQJWbE9zRV3kStevgk0CKIQGdcHF5nB4sNxghjZh9epsjr8S/ySGEcGuaWyq+OCSP
	U5dbpo+T8P0LTTMsmS+bQJYCw5LeguCdzMosRSedEI5PF52yvFLOij8eDziCMtcjJF8Dl+XdHvtsm
	BWZbL5wDLLMHdV6iPbmVOF3m+zvjUr1Sd9dxuHXTcEz2kMk2YbSiC1o/oJ8SSKGmGIHqcOOaG4xIx
	CXrg4qug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oB8vl-007u6X-I8; Tue, 12 Jul 2022 05:59:33 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oB8vh-007u5h-Ij
	for barebox@lists.infradead.org; Tue, 12 Jul 2022 05:59:31 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oB8vf-0006Rw-Io; Tue, 12 Jul 2022 07:59:27 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oB8vf-0001QI-A9; Tue, 12 Jul 2022 07:59:27 +0200
Date: Tue, 12 Jul 2022 07:59:27 +0200
To: Johannes Zink <j.zink@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220712055927.GB23482@pengutronix.de>
References: <20220711141246.3331160-2-j.zink@pengutronix.de>
 <20220712050449.3593253-1-j.zink@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220712050449.3593253-1-j.zink@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220711_225929_635106_3E90BD90 
X-CRM114-Status: GOOD (  26.69  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] fixup! ARM: i.MX7: add 96Boards Meerkat96 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Johannes,

On Tue, Jul 12, 2022 at 07:04:49AM +0200, Johannes Zink wrote:
> This is a fixup for the documentation: fixed line breaks, whitespace changes 
> and typos as requested.
> 
> Signed-off-by: Johannes Zink <j.zink@pengutronix.de>
> ---
>  Documentation/boards/imx/meerkat96.rst | 28 ++++++++++++++++++--------
>  1 file changed, 20 insertions(+), 8 deletions(-)

Still many trailing whitespaces with this fixup. I fixed it up locally
and applied, thanks

Sascha

> 
> diff --git a/Documentation/boards/imx/meerkat96.rst b/Documentation/boards/imx/meerkat96.rst
> index 3cdb1beaf..3a51b9144 100644
> --- a/Documentation/boards/imx/meerkat96.rst
> +++ b/Documentation/boards/imx/meerkat96.rst
> @@ -1,28 +1,40 @@
>  Meerkat 96
>  ==========
>  
> -The Meerkat96 is a single board computer based on an i.MX7D SoC by NXP, featuring a dual core ARM Cortex-A7 at 1 GHz and a Cortex-M4 at 266MHz and 512 MB DRAM. For further details on the board's features check the manufacturers page at https://www.96boards.org/product/imx7-96
> +The Meerkat96 is a single board computer based on an i.MX7D SoC by NXP, 
> +featuring a dual core ARM Cortex-A7 at 1 GHz and a Cortex-M4 at 266MHz 
> +and 512 MB DRAM. For further details on the board's features check the 
> +manufacturers page at https://www.96boards.org/product/imx7-96
>  
>  Serial console
>  --------------
>  
> -UART6 of the i.MX7D is broken out to Pinheader J3, on the Silkscreen the Pins are labeled with B (Ground), W (UART 6 TX) and G (UART 6 RX). If you use the UART-To-Serial-Converter provided with the board, you can just connect the Black jumper to B, the White to W and the Green to G. The UART uses 3.3V levels. 
> +UART6 of the i.MX7D is broken out to Pinheader J3, on the Silkscreen 
> +the Pins are labeled with B (Ground), W (UART 6 TX) and G (UART 6 RX). 
> +If you use the UART-To-USB-Converter provided with the board, you can 
> +just connect the Black jumper to B, the White to W and the Green to G. 
> +
> +The UART uses 3.3V levels. 
>  
>  Building Barebox                                                        
>  ----------------                                                        
>                                                                          
> -To build Barebox for ZII i.MX7 based boards do the following:           
> -                                                                        
> -.. code-block:: sh                                                      
> -           
> -  make ARCH=arm CROSS_COMPILE=<ARM toolchain prefix> mrproper   
> +To build Barebox for the meerkat96 board do the following:
> +
> +.. code-block:: sh
> +
> +  make ARCH=arm CROSS_COMPILE=<ARM toolchain prefix> mrproper
>    make ARCH=arm CROSS_COMPILE=<ARM toolchain prefix> imx_v7_defconfig
>    make ARCH=arm CROSS_COMPILE=<ARM toolchain prefix>
>  
>  Bringup
>  -------
>  
> -flash the resulting barebox-meerkat96.img to an sdcard at address 0. Make sure the pmic is set to power-on state by setting the dipswitch SW3 on the boards bottom side to 1-1 (i.e. all switches on, which is the factory default).
> +flash the resulting barebox-meerkat96.img to an sdcard at address 0. 
> +
> +Make sure the pmic is set to power-on state by setting the dipswitch 
> +SW3 on the boards bottom side to 1-1 (i.e. all switches on, which is 
> +the factory default).
>  
>  Schematics
>  ----------
> -- 
> 2.30.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


