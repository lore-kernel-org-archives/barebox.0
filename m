Delivery-date: Fri, 15 Dec 2023 13:16:21 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rE776-003baK-1T
	for lore@lore.pengutronix.de;
	Fri, 15 Dec 2023 13:16:21 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rE776-00037q-M5
	for lore@pengutronix.de; Fri, 15 Dec 2023 13:16:21 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=At0w4YbK24/lREJSR7X9yFqQegP1CHXk47fC62ydbPw=; b=ZE6h8COF979CX0olVAmcyG7jGb
	P8+QhxqgCkJJAYu4RBYI9heGtu2/JCT7aVLRzKHVQMYwQQYCEnVeswYIGypS3TfwZgqnP3K4nf36Q
	afvDJD7ux4VG6ciWN9NyXySX5PAYs9Ps3saEpsOwVcmb6r2VE6fsUq6PolMI9MuacYWbZbyl43Qev
	UJLiG1zj8Alugek7BKOHsGHhngXL3IJ7ubLN6uFv8TXr2z9ebk5XOZ2khCfR9g+zZoMYU8hEprB5k
	G2acGoA+QLTvgQcoKZcqJxG6DkW/9B/J8E+VMXKmGlzkWuFAZWm3oi3x7P1Aw7E1teTgUJZqwbQRs
	PdVdvY5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rE76B-003Bxj-0D;
	Fri, 15 Dec 2023 12:15:23 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rE768-003Bx4-0r
	for barebox@lists.infradead.org;
	Fri, 15 Dec 2023 12:15:21 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rE767-0002iR-2h; Fri, 15 Dec 2023 13:15:19 +0100
Message-ID: <507968da-8dfe-43c5-a770-40ad660c6c78@pengutronix.de>
Date: Fri, 15 Dec 2023 13:15:18 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Stefan Kerkmann <s.kerkmann@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
References: <20231215-doc-fit-images-for-chainloading-v1-0-9b704facdc3b@pengutronix.de>
 <20231215-doc-fit-images-for-chainloading-v1-2-9b704facdc3b@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20231215-doc-fit-images-for-chainloading-v1-2-9b704facdc3b@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231215_041520_299701_6FD45D34 
X-CRM114-Status: GOOD (  20.08  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 2/2] doc: user: barebox: add chainloading of fit images
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 15.12.23 13:11, Stefan Kerkmann wrote:
> This documents an alternate method for chainloading Barebox from U-Boot
> by packing the Barebox image and matching device tree into an FIT image.

S-o-b missing.

With that fixed:

Acked-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  Documentation/user/barebox.rst | 26 ++++++++++++++++++++++++++
>  1 file changed, 26 insertions(+)
> 
> diff --git a/Documentation/user/barebox.rst b/Documentation/user/barebox.rst
> index f4e600bde0..ea4db28d08 100644
> --- a/Documentation/user/barebox.rst
> +++ b/Documentation/user/barebox.rst
> @@ -215,6 +215,32 @@ like a Linux kernel that is passed an external device tree. For example:
>    U-Boot: bootz $kernel_addr - $fdt_addr # On 32-bit ARM
>    U-Boot: booti $kernel_addr - $fdt_addr # for other platforms
>  
> +Another option is to generate a FIT image containing the generic DT image and a
> +matching device tree with ``mkimage``:
> +
> +.. code-block:: console
> +  sh: mkimage --architecture arm \
> +      --os linux \
> +      --type kernel \
> +      --fit auto \
> +      --load-address $kernel_addr_r \
> +      --compression none \
> +      --image images/barebox-dt-2nd.img \
> +      --device-tree arch/${ARCH}/dts/my-board.dtb \
> +      barebox-dt-2nd.fit
> +
> +This FIT image can then be loaded by U-Boot and executed just like a regular
> +Linux kernel:
> +
> +.. code-block:: console
> +  U-Boot: tftp $fit_addr barebox-dt-2nd.fit
> +  U-Boot: bootm $fit_addr
> +
> +Make sure that the address in ``$fit_addr`` is different from the
> +``$kernel_addr_r`` passed to ``mkimage`` as the load address of the Kernel
> +image. Otherwise U-Boot may attempt to overwrite the FIT image with the barebox
> +image contained within.
> +
>  For non-DT enabled-bootloaders or other architectures, often the normal barebox
>  binaries can also be used as they are designed to be startable second stage
>  from another bootloader, where possible. For example, if you have U-Boot running
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



