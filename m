Delivery-date: Wed, 02 Jun 2021 08:38:27 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1loKWJ-0006kM-EA
	for lore@lore.pengutronix.de; Wed, 02 Jun 2021 08:38:27 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1loKWI-00078P-C2
	for lore@pengutronix.de; Wed, 02 Jun 2021 08:38:27 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=LUEjNDMgfzmI33OJjv9Zp8ZR98IStQpaa1hAdJPKCKs=; b=lPNTBoI6v2ajOxOeILzxiH3TPQ
	kAptzPHo1ZcOpRIVzpyyBnXT1OLMzgPib+fK/mjPgaVCcw9b3InfuARN00BtFA1hB2zHaApQoZhJZ
	CQdbVB1Zo0Tw+9NxGAk+3JvZXNbqHOTkL/BDISbo7Y85bocA3QJdP9qJgMCJzBXiI+JbdesN/CTbW
	v3pXrskhmBS2LvzoWbQtarDpTWJhN2j6ZnCrm0vsTGBE9vIMG7OF6lDn/cmTAC7Ky2Vbqg2/TC3F0
	HwI3BV4VZc1ExVBvYERv7EYUHnwsh1fPtkhJm0M0sp/MuGqn8in0eowgVjS9EQVm1/wLTq3TxPOie
	cUIX0+Mg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1loKUW-0022te-GI; Wed, 02 Jun 2021 06:36:36 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1loKUQ-0022sh-Se
 for barebox@lists.infradead.org; Wed, 02 Jun 2021 06:36:32 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1loKUM-00074W-Lr; Wed, 02 Jun 2021 08:36:26 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1loKUM-00080k-Co; Wed, 02 Jun 2021 08:36:26 +0200
Date: Wed, 2 Jun 2021 08:36:26 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20210602063626.GU5211@pengutronix.de>
References: <20210531072406.5630-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210531072406.5630-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 08:36:13 up 104 days, 10:00, 111 users,  load average: 0.03, 0.06,
 0.08
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210601_233630_944642_11951A25 
X-CRM114-Status: GOOD (  19.09  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 0/5] add regmap helpers for NVMEM and i2c
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, May 31, 2021 at 09:24:01AM +0200, Ahmad Fatoum wrote:
> Incoming BeagleV support should support an i2c-connected PMIC and
> a fuse bank for retrieval of the MAC address. On the STM32MP1, we
> also support an i2c-connected PMIC and a fuse bank for MAC address.
> 
> Instead of duplicating too much code, add some helpers, so drivers can
> drop common boilerplate. The relevant STM32 drivers are ported to make
> use of it.
> 
> Ahmad Fatoum (5):
>   regmap: implement regmap_init_i2c
>   mfd: stpmic1: simplify using regmap_init_i2c
>   nvmem: provider: align read/write callback prototype with upstream
>   nvmem: add nvmem_regmap_register helper
>   nvmem: stm32-bsec: simplify using new nvmem_regmap_register

Applied, thanks

Sascha


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

