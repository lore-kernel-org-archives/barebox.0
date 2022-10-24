Delivery-date: Mon, 24 Oct 2022 10:39:12 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1omszI-000S6V-4m
	for lore@lore.pengutronix.de; Mon, 24 Oct 2022 10:39:12 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1omszG-0007mp-3Z
	for lore@pengutronix.de; Mon, 24 Oct 2022 10:39:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
	Subject:Cc:To:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=1zduBWnNRlkYcKVJnWJWNdPxRF8MPMojaO1LU18+6zo=; b=qJ9+ZER8k14KFLp7l+cTQHiVKK
	na4uWJkGmeXp0M8dgQa39GLRWl3UKhOcdyM/nBvwk7hOVcugZln0a4BAsOmGbvuRhH9aw9UioNAfz
	knyVXcEx7Wz7DEBF0AiJhenH+C8h0kCi+rRp6dPnnG8qSF3rsnbs1gvndmK1cRWp9bvELm92WUbMe
	K1vqxBVZYa0tD6gw5LQKbQRRqYJ+Djyg7NwsqKOZFTmeC1STjl2E8AWWiD3Oibg1mdEX3V/0YyyOJ
	TIn5XGJ4Um58PVQamzbXNwsxuOhTUaIlEYclgDI7O/MB0b/h5qoMYwn8KvSHf2Kd96Sh772Io8+fX
	7UP1amUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1omsxh-000AGZ-U9; Mon, 24 Oct 2022 08:37:34 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1omswX-0009kK-Gn
	for barebox@lists.infradead.org; Mon, 24 Oct 2022 08:36:23 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1omswV-0007QH-HS; Mon, 24 Oct 2022 10:36:19 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1omswV-0005a5-Aa; Mon, 24 Oct 2022 10:36:19 +0200
Date: Mon, 24 Oct 2022 10:36:19 +0200
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20221024083619.GI6702@pengutronix.de>
References: <20221019135140.79821-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-15
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20221019135140.79821-1-u.kleine-koenig@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221024_013621_599149_E4E679C6 
X-CRM114-Status: GOOD (  21.58  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] Documentation: boards: i.MX8MP-EVK: Fix two doc bugs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Oct 19, 2022 at 03:51:40PM +0200, Uwe Kleine-König wrote:
> The bl31 binary must be put in the firmware/ subdirectory to be properly
> picked up. And building the full imx_v8_defconfig requires some more DDR
> PHY firmware files, so disable all other machines.
> 
> Signed-off-by: Uwe Kleine-König <u.kleine-koenig@pengutronix.de>
> ---
>  Documentation/boards/imx/nxp-imx8mp-evk.rst | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/boards/imx/nxp-imx8mp-evk.rst b/Documentation/boards/imx/nxp-imx8mp-evk.rst
> index 1074992f2f88..dcedf882c6d2 100644
> --- a/Documentation/boards/imx/nxp-imx8mp-evk.rst
> +++ b/Documentation/boards/imx/nxp-imx8mp-evk.rst

We have this text in four different versions for the different SoC
types.
> @@ -47,7 +47,7 @@ Get TF-A from https://git.trustedfirmware.org/TF-A/trusted-firmware-a.git/ and
>  checkout version v2.7::
>  
>    make PLAT=imx8mp bl31
> -  cp build/imx8mp/release/bl31.bin ${barebox_srctree}/imx8mp-bl31.bin
> +  cp build/imx8mp/release/bl31.bin ${barebox_srctree}/firmware/imx8mp-bl31.bin

This part is needed for all i.MX8M SoCs, but this step is only in the
i.MX8MP documentation.

>  
>  .. warning:: It is important to use a version >= v2.7 else your system
>     might not boot.
> @@ -58,6 +58,7 @@ Build Barebox
>  i.MX8MP-EVK support is contained in the imx_v8_defconfig to build it use::
>  
>    make imx_v8_defconfig
> +  make menuconfig # disable all machines under "System Type" but "NXP i.MX8MP EVK Board"

We should rather merge these four documents and explain how to build for
all i.MX8M SoCs.

Sascha


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


