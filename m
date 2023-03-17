Delivery-date: Fri, 17 Mar 2023 13:43:05 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pd9QG-003vtQ-6A
	for lore@lore.pengutronix.de; Fri, 17 Mar 2023 13:43:05 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pd9QG-0007O3-5h
	for lore@pengutronix.de; Fri, 17 Mar 2023 13:43:04 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:To:Subject
	:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zrlt7g0kx5tNip/R/EnBKWLMFoKKFeKYshu3ZJJSGAc=; b=lwf+tIeDRpdz6N
	vSHW0RPIhpAP62neOE0YNSqDKF7S6rC4sP6APP8v6VPdg0nv68ETN0I4Hgs4X5GtQKouGPWkaoNjR
	9ryQKEM/ivyjpETBzB66bFWpuuSnu3dWp+aKNBm6O7gUxy3hkqFJoMRgFM5/UoFZ376Or/8RL5TY7
	cwoYAUpES+X68iAzwl1lDRnhFnlpd7HdktaCu1oHz1pFv4e28HAD0XtIvtpPZdAfn3MdLIJTCbZl5
	HIRBJJj3ghJZcFPXSnsibZ+n+zrUHL1vfRpJalOTmJnWhk5/VChNMtkC5MA8teXpK/nTIkLLcszVZ
	eCIloUXI/TZyqNlVr4Tg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pd9P7-002Euo-2m;
	Fri, 17 Mar 2023 12:41:53 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pd9P4-002EtP-0Q
	for barebox@lists.infradead.org;
	Fri, 17 Mar 2023 12:41:51 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1pd9P1-0007BX-QZ; Fri, 17 Mar 2023 13:41:47 +0100
Message-ID: <6bd889e4-ccce-7dd4-3979-47a4e32daf19@pengutronix.de>
Date: Fri, 17 Mar 2023 13:41:47 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.2
Content-Language: en-US
To: Johannes Zink <j.zink@pengutronix.de>, barebox@lists.infradead.org
References: <20230317121937.958131-1-j.zink@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230317121937.958131-1-j.zink@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230317_054150_167636_2814BE34 
X-CRM114-Status: GOOD (  20.36  )
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
Cc: afa@pengutronix.de, jzi@pengutronix.de
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2] Documentation: devicetree: list automatic boot
 argument fixups
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 17.03.23 13:19, Johannes Zink wrote:
> Barebox automatically fixes up several properties to the root and
> chosen node of the device tree passed to the booted system.
> 
> These entries contain information about the hardware, reset source
> and the barebox version string.
> 
> Add documentation on how to query these information from the booted
> linux system.
> 
> Signed-off-by: Johannes Zink <j.zink@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  Changelog:
> 
>  v1 -> v2: Correct errors in content spotted by Ahmad. While at it, fix some typos.
> 
>  Documentation/devicetree/index.rst | 22 ++++++++++++++++++++++
>  1 file changed, 22 insertions(+)
> 
> diff --git a/Documentation/devicetree/index.rst b/Documentation/devicetree/index.rst
> index 36fa69058d1d..f85ce6608d14 100644
> --- a/Documentation/devicetree/index.rst
> +++ b/Documentation/devicetree/index.rst
> @@ -151,3 +151,25 @@ Contents:
>     bindings/regulator/*
>     bindings/rtc/*
>     bindings/watchdog/*
> +
> +Automatic Boot Argument Fixups to the Devicetree
> +------------------------------------------------
> +
> +barebox automatically fixes up some boot and system information in the device tree.
> +
> +In the device tree root, barebox fixes up
> +
> + * serial-number (if available)
> + * machine compatible (if overridden)
> +
> +In the ``chosen``-node, barebox fixes up
> +
> + * barebox-version
> + * reset-source
> + * reset-source-instance (if available)
> + * reset-source-device (node-path, only if available)
> + * bootsource
> + * boot-hartid (only on RISC-V)
> +
> +These values can be read from the booted linux system in ``/proc/device-tree/``
> +or ``/sys/firmware/devicetree/base``.

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



