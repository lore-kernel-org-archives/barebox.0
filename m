Delivery-date: Tue, 21 Mar 2023 09:12:00 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1peX67-008wNd-5o
	for lore@lore.pengutronix.de; Tue, 21 Mar 2023 09:12:00 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1peX66-0004vz-Ri
	for lore@pengutronix.de; Tue, 21 Mar 2023 09:11:59 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3fd/hNCt8C2sH+yCG9/Nm7cjIHtAcAFfxDsDrueMR5k=; b=h3QIO9kDoHE1CJRr2xqFCiJjir
	MvAfBSG6EbAzCVfZO4xW1Gm9j24gFDo/NqqGnck6qYi1LYmZDOek85qBQKiDRF3UA5qBMmIZjGFPA
	LoXo9XonWyrV1Smz9rz1szAGOZS8TUXtxOY17bA3YRGr0jKPBeWQtdmybiGPxkkQlkC2+v7NK0tzH
	8/nvu34vL7Aa8vDXRTf4J7aQuSN0j4PFWNp7pzlKNruE4Otm/Ahc4AghDySdHVUDSRDAvsGDpgq3r
	h++tcc3Axj2ktT9XSZht+H7nBHnheeSKlbAIQjHHQaH2FMv0r97SfBA+Jc4KI2HGhVrIiLF9T9L5u
	dTiFwrAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1peX51-00BdAl-0w;
	Tue, 21 Mar 2023 08:10:51 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1peX4x-00Bd9y-2L
	for barebox@lists.infradead.org;
	Tue, 21 Mar 2023 08:10:49 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1peX4w-0004hz-CP; Tue, 21 Mar 2023 09:10:46 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1peX4w-000537-5o; Tue, 21 Mar 2023 09:10:46 +0100
Date: Tue, 21 Mar 2023 09:10:46 +0100
To: Johannes Zink <j.zink@pengutronix.de>
Cc: barebox@lists.infradead.org, afa@pengutronix.de, jzi@pengutronix.de
Message-ID: <20230321081046.GE7446@pengutronix.de>
References: <20230317121937.958131-1-j.zink@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230317121937.958131-1-j.zink@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230321_011047_764270_D6BC0F87 
X-CRM114-Status: GOOD (  22.41  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2] Documentation: devicetree: list automatic boot
 argument fixups
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Mar 17, 2023 at 01:19:37PM +0100, Johannes Zink wrote:
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
> ---
>  Changelog:
> 
>  v1 -> v2: Correct errors in content spotted by Ahmad. While at it, fix some typos.
> 
>  Documentation/devicetree/index.rst | 22 ++++++++++++++++++++++
>  1 file changed, 22 insertions(+)

Applied, thanks

Sascha

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


