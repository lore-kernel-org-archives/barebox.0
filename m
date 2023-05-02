Delivery-date: Tue, 02 May 2023 13:37:18 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ptoJr-002Evr-KL
	for lore@lore.pengutronix.de; Tue, 02 May 2023 13:37:18 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ptoJp-0005Wl-GH
	for lore@pengutronix.de; Tue, 02 May 2023 13:37:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=iTpNFUaVkVGWllDuyHm69uXeSRHQ9iQFhtCdIAGYrNM=; b=u+6kgdj3qAWjTXDKNDUT1CgZz4
	Fm+ta5ioGsDD7do1bRaqGb7NbZFKGj7zgkxPvvJOTP/ZC3ckuP03tgAz2C//LNcGBuP5X4TxKinIi
	TWzprDqW6k00yD4FifJZL2urYu3YaTw6tdIVQcbJOrGcsz4SNlsnYIBaxe3D1qM+pS8RV8OaRthKM
	Xh3eetk7F/VB7Kn0o7b1gg5AVg310BQQTM1v4cz8DzzTKs4N088nJSdSEFodfwcg0CubaiQkNUr9n
	Onm3aDWS57u09CABRTU2GsAJJMhws9ViD8wHKE+CErnjQMTQRcQik0M9ktajwBQCDMmzoYVro4WfX
	2qKDe1Lg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ptoIm-001G7O-39;
	Tue, 02 May 2023 11:36:12 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ptoIj-001G6b-0Y
	for barebox@lists.infradead.org;
	Tue, 02 May 2023 11:36:11 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1ptoIh-0005Ms-8I; Tue, 02 May 2023 13:36:07 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1ptoIg-0005hg-O3; Tue, 02 May 2023 13:36:06 +0200
Date: Tue, 2 May 2023 13:36:06 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230502113606.GC29365@pengutronix.de>
References: <20230421100642.2867651-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230421100642.2867651-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230502_043609_213088_9EF05671 
X-CRM114-Status: GOOD (  17.90  )
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
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 0/5] ARM: stm32mp: enable UBS hubs on DKx
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Apr 21, 2023 at 12:06:37PM +0200, Ahmad Fatoum wrote:
> I am not sure this worked for a while, but the DT binding changed.
> Let's sync with the kernel driver and enable the necessary config
> options and some other stuff noticed as well.
> 
> Ahmad Fatoum (5):
>   asm-generic: atomic: implement atomic_inc/dec_return stubs
>   phy: stm32-usphyc: sync with Linux v6.3-rc5
>   ARM: stm32mp: defconfig: enable use of DKx USB hubs
>   clk: bulk: return -EPROBE_DEFER in silence
>   ARM: stm32mp: dkx: enable deep probe

Applied, thanks

Sascha

> 
>  arch/arm/boards/stm32mp15xx-dkx/board.c |   2 +
>  arch/arm/configs/stm32mp_defconfig      |   3 +
>  drivers/clk/clk-bulk.c                  |   5 +-
>  drivers/phy/phy-stm32-usbphyc.c         | 321 ++++++++++++++++++++++--
>  include/asm-generic/atomic.h            |  11 +-
>  include/linux/units.h                   | 111 ++++++++
>  6 files changed, 421 insertions(+), 32 deletions(-)
>  create mode 100644 include/linux/units.h
> 
> -- 
> 2.39.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


