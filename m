Delivery-date: Tue, 18 Oct 2022 10:58:29 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1okiQg-00CT7N-I8
	for lore@lore.pengutronix.de; Tue, 18 Oct 2022 10:58:29 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1okiQe-00042y-1k
	for lore@pengutronix.de; Tue, 18 Oct 2022 10:58:28 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=TiDOb3NA6K/ZXXqvBxP0anf/2gZvOMXohHoyzQNUNZQ=; b=khvE3uPH/lP9szTc1eGwmQsyOD
	xz79yuVK2y7hR97k8r4pYIZIarXk4/aHMuoen26YO6343cnb67nvWL1CnsYXJ+CiV4z0Y71JCimQi
	wscHuLwI8UlMrlSIKDhBoPpH9vchuqheN3aeRlev1wwa5+6/IewHaL6C6j3D0GUr4oG/OSNz9yYKu
	8VeY/VHWyJOiH+LjTxKm4/L9aPvfjtuFOhHGWqt5JrTaY3sk33fPNnV7LWhXrI6vD2tUWe7/LOVfr
	9cBS06OMWbrl7X0rwwQdcNhtj/w0z2RvY/r2r/biQ75l/pk3FQsciP8msVr6zh8xWEg9DCKJjAQEL
	a3BqbuzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okiPT-004Zd3-Jp; Tue, 18 Oct 2022 08:57:15 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okiPM-004Zab-TR
	for barebox@lists.infradead.org; Tue, 18 Oct 2022 08:57:10 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1okiPL-0003yn-Eg; Tue, 18 Oct 2022 10:57:07 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1okiPK-00069h-Ug; Tue, 18 Oct 2022 10:57:06 +0200
Date: Tue, 18 Oct 2022 10:57:06 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org,
	Hans Christian Lonstad <hcl@datarespons.com>
Message-ID: <20221018085706.GN6702@pengutronix.de>
References: <20221017134929.622022-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221017134929.622022-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221018_015708_980544_05DA5858 
X-CRM114-Status: GOOD (  15.63  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [RFT PATCH master 0/3] soc: imx8m-featctrl: fixes and first 8MP
 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Oct 17, 2022 at 03:49:26PM +0200, Ahmad Fatoum wrote:
> Newer upstream kernels may fail to boot with less featureful 8MP SoCs,
> because barebox doesn't fix the DT up appropriately. Fix that.
> 
> @Hans, could you give this a test? I tested on 8MM only.
> 
> Ahmad Fatoum (3):
>   dt-bindings: features: imx8m: fix typo in constant
>   soc: imx: imx8m-featctrl: check if all bits are set
>   ARM: i.MX8MP: add feature controller support for Plus
> 

Applied, thanks

Sascha

>  arch/arm/dts/imx8mp.dtsi             | 43 ++++++++++++++++++++++++++++
>  drivers/nvmem/ocotp.c                |  9 ++++++
>  drivers/soc/imx/imx8m-featctrl.c     | 29 +++++++++++++------
>  include/dt-bindings/features/imx8m.h |  6 ++--
>  include/soc/imx8m/featctrl.h         |  3 ++
>  5 files changed, 79 insertions(+), 11 deletions(-)
> 
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


