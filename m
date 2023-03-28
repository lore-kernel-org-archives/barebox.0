Delivery-date: Tue, 28 Mar 2023 09:47:49 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ph43Y-00HMuo-ON
	for lore@lore.pengutronix.de; Tue, 28 Mar 2023 09:47:49 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ph43Y-0002Yk-2o
	for lore@pengutronix.de; Tue, 28 Mar 2023 09:47:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=M9e0eFYkIRoyAX0q0opeow21NlyKTmkaMljPlw7kPFc=; b=RihEUDNgl2lSkOTZbppNXgWjjT
	Byu8bn1Gi20papT7HhJJ4fusI+ui3rAYuSunlcByaMFU87EtvlDKFyLog+6hGerZtMfP2PVH4TBVu
	XMf5IoXYFJiOoxV4kGCMIQtrnSRRn3qMCtO50nE5viytX1eJCzszdTdR4oPgj15PI4DpbCxbIhV/3
	f6aymRGp3R9GEL3VWnXG3wxqWPU35M5Q6ZOsuCw8uiUOZSSn5apBWG5HjeuBP1MDPoF1AePIbXY9w
	czV53uRnxk7YJA0Iz0PkRYhF7D4ELqyVBhcCIGcX89KE5YN11d2PPLgmyqjbmwsVnqzt3bROfkaWa
	mpjJ2oGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ph42X-00DWJw-09;
	Tue, 28 Mar 2023 07:46:45 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ph42T-00DWJ8-2G
	for barebox@lists.infradead.org;
	Tue, 28 Mar 2023 07:46:43 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1ph42S-0002M0-5h; Tue, 28 Mar 2023 09:46:40 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1ph42R-0000UG-Qk; Tue, 28 Mar 2023 09:46:39 +0200
Date: Tue, 28 Mar 2023 09:46:39 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org,
	Christian Melki <christian.melki@t2data.com>
Message-ID: <20230328074639.GH19113@pengutronix.de>
References: <20230326112211.2900004-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230326112211.2900004-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230328_004641_738700_6B600665 
X-CRM114-Status: GOOD (  23.24  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] Documentation: booting-linux: document booting specific
 FIT configuration
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Sun, Mar 26, 2023 at 01:22:11PM +0200, Ahmad Fatoum wrote:
> Apparently, this was so far undocumented, but it's useful in some setups
> where board type is detected dynamically. Document it.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  Documentation/user/booting-linux.rst | 10 ++++++++++
>  1 file changed, 10 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/Documentation/user/booting-linux.rst b/Documentation/user/booting-linux.rst
> index 60babb513cea..a9dd0d67d350 100644
> --- a/Documentation/user/booting-linux.rst
> +++ b/Documentation/user/booting-linux.rst
> @@ -19,8 +19,10 @@ architecture the bootm command handles different image types. On ARM the
>  following images are supported:
>  
>  * ARM Linux zImage
> +* ARM64 Linux Image, plain or compressed
>  * U-Boot uImage
>  * barebox images
> +* FIT images, containing a zImage or Image
>  
>  The images can either be passed directly to the bootm command as argument or
>  in the ``global.bootm.image`` variable:
> @@ -48,6 +50,14 @@ variable:
>    global.bootm.image=/path/to/zImage
>    bootm
>  
> +FIT image configurations will be matched by comparing the ``compatible`` property
> +inside the configuration node with the barebox live tree's ``/compatible``.
> +It's also possible to select a specific configuration explicitly:
> +
> +.. code-block:: sh
> +
> +  global.bootm.image=/dev/mmc0.fit@conf-imx8mm-evk.dtb
> +
>  **NOTE:** it may happen that barebox is probed from the devicetree, but you have
>  want to start a Kernel without passing a devicetree. In this case set the
>  ``global.bootm.boot_atag`` variable to ``true``.
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


