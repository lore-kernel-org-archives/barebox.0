Delivery-date: Mon, 10 Mar 2025 19:50:49 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1triDA-00CMMT-0U
	for lore@lore.pengutronix.de;
	Mon, 10 Mar 2025 19:50:49 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1triD8-00038w-UE
	for lore@pengutronix.de; Mon, 10 Mar 2025 19:50:47 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=XkXWawsvOn6jm6MOMfWfq8Q3fdbG9zvLL03SR2MePJ4=; b=SMgM43w/6gMynGk0BPF5ux/t+o
	yuqbGWy9lJ0F1PnT0vUen158XJEucKmfViHC0/ZKlsjBWp4DOZRAr/gebxC2JV7DtQp2uGFdG9lJn
	hqna4KzAUNFpyrja+usXs/36qUk+6RwRf6cPBns64iIzA3YC86au0yj2dJcz2aPIHIXmjw79S+WN+
	YsMCQSkepyUoCpshL9QNOaA9+gfTvRAXZNPHgekN3kRyqoZKNq2haAK4JzY+nZJHGzp98xzVhblHL
	34QQUKQqfa/a9lcsf7m5vTjFYnVORNlvzKIWkE4jJZZOTyF2YXZ2M5OPAwajvLt4Mr1CChbgHkTyU
	eUjPsHZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1triCv-00000003flT-35KG;
	Mon, 10 Mar 2025 18:50:33 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1trhAq-00000003WJG-1FUy
	for barebox@bombadil.infradead.org;
	Mon, 10 Mar 2025 17:44:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=XkXWawsvOn6jm6MOMfWfq8Q3fdbG9zvLL03SR2MePJ4=; b=Te8v71AkDpekjqG9ymu1ypWj+0
	keVwvlEXl6oJN3V7qnyvfT0r5WJ3Q4lth1r7kObBRffY93gOhW45LAnezaxU+Md0BMRqsyWD91A/h
	r57N1TJqgwSFu6dgIGwaBCnHSlu9w7b1TA+uFf9qtLnIy8Upvp2iYU/4vxVAAbGgG+7YY7glrTNgg
	ddtIIWRDTZGaepcFXpEVZM0t4IEwThraXVFwbreTggVfA2TBou9LnulG1R2V9RztRkmr5SXB7fqRa
	v+ITanCkCwgAE5DFKPZV7o+CXy/QYRCL2dRk8Z7Kw0iMLN4xsCkY+YULhwwj7lJlP5fd1+QweNIZm
	DJc6eX4Q==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1trhAn-00000001zzU-1zZt
	for barebox@lists.infradead.org;
	Mon, 10 Mar 2025 17:44:19 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1trh7b-0002oz-4c; Mon, 10 Mar 2025 18:40:59 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1trh7a-0052ky-34;
	Mon, 10 Mar 2025 18:40:58 +0100
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1trh7a-005zzc-2k;
	Mon, 10 Mar 2025 18:40:58 +0100
Date: Mon, 10 Mar 2025 18:40:58 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "open list:BAREBOX" <barebox@lists.infradead.org>
Message-ID: <20250310174058.t3rsxws6syxz2rqp@pengutronix.de>
References: <20250228-am625-secure-v1-0-4002488ff5ed@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250228-am625-secure-v1-0-4002488ff5ed@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250310_174417_569643_48356778 
X-CRM114-Status: GOOD (  17.91  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH 00/13] am625: support secure loading of full barebox
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Sascha,

On 25-02-28, Sascha Hauer wrote:
> On K3 SoCs only a small barebox is loaded by the ROM into SRAM. This
> barebox then loads the full barebox from SD/eMMC or USB DFU. In a secure
> boot environment the full barebox must be authenticated. This series
> implements two ways for accomplishing this.
> 
> First way is to utilize the ROM API to authenticate images. The other
> way is to compile a secure hash into the first stage binary and check
> if the full barebox image matches the hash. Using the ROM API means
> different first stage and second stage images can be combined whereas
> hashing binds specific builds together avoiding mix and match attacks.

before having a closer look on your patchset, do we really want to have
the 2nd case to be available? If we really want the 2nd case to be
available we should bound it to CONFIG_INSECURE (if not already done).

Regards,
  Marco

> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
> Sascha Hauer (13):
>       firmware: always generate sha256sum
>       firmware: add function to verify next image
>       ARM: k3: r5: drop loading of separate binaries
>       ARM: k3: r5: add proper error handling
>       fip: rework fip_image_open()
>       fip: fix wrong function call
>       fip: add function to calculate a sha256 over FIP image
>       ARM: am625: support hash verification of full barebox
>       ARM: k3: add support for authenticating images against the ROM API
>       ARM: k3: r5: delete fip image when it can't be opened
>       ARM: k3: r5: Allow to authenticate next image by ROM API
>       scripts/k3img: remove temporary files
>       scripts: add k3sign
> 
>  arch/arm/mach-k3/Kconfig  |  15 ++++
>  arch/arm/mach-k3/common.c |  99 ++++++++++++++++++++++
>  arch/arm/mach-k3/r5.c     | 206 +++++++++++++++++++++++++---------------------
>  firmware/Kconfig          |  23 ++++++
>  firmware/Makefile         |   8 +-
>  include/fiptool.h         |   3 +
>  include/firmware.h        |  28 +++++++
>  include/mach/k3/common.h  |   1 +
>  lib/fip.c                 | 101 ++++++++++++++---------
>  scripts/k3img             |   9 +-
>  scripts/k3sign            | 126 ++++++++++++++++++++++++++++
>  11 files changed, 478 insertions(+), 141 deletions(-)
> ---
> base-commit: 748ba0627681797b01a94be1b3f879ed2e52a361
> change-id: 20250228-am625-secure-49301f641738
> 
> Best regards,
> -- 
> Sascha Hauer <s.hauer@pengutronix.de>
> 
> 
> 


