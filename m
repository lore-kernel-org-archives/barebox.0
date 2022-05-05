Delivery-date: Thu, 05 May 2022 09:16:59 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nmVjP-002R5w-Aj
	for lore@lore.pengutronix.de; Thu, 05 May 2022 09:16:59 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nmVjN-000142-OC
	for lore@pengutronix.de; Thu, 05 May 2022 09:16:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=NJm8fW1pgEJdbo8AJ7Aoevz7MLxIYp3JxnofP2mh4Rc=; b=K5L2NtU/CE8VcqGdAjGO6sXuGc
	3TsT/gB9CQxYAL2mvsQdd5yAwGJnNv2pc8/GboJGbXx59UlFFfprZK3I5hQJPCZB3DDX6uW4MtzBB
	+uoxHHDczCYPtKyioUtAarcbfzBtTXdkxaex/m/yUnuMYrQDT6G5NRXkUobGRw1re2YjdKEqmQbjf
	nLCwDE7ghH59ZU7qZfolenIRIGazecVd0C41ktfdHaIs2qIqV2fU8yWs2WNxVgXhxBZWzc0JfcKLL
	Q9jo9NA9YzdrgwfIfz9fZ6hmklM1FEnTrkgiOWqx8CCXPj84DOBMDOSTMibQQcXZmuG7YQUK/wc/R
	IRiCl2pw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nmVi7-00EM25-2G; Thu, 05 May 2022 07:15:39 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nmVi2-00EM0z-71
 for barebox@lists.infradead.org; Thu, 05 May 2022 07:15:35 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nmVi0-0000oz-8c; Thu, 05 May 2022 09:15:32 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nmVhz-0007hH-W9; Thu, 05 May 2022 09:15:31 +0200
Date: Thu, 5 May 2022 09:15:31 +0200
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220505071531.GH4012@pengutronix.de>
References: <20220503091220.3871612-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220503091220.3871612-1-o.rempel@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:15:16 up 35 days, 19:44, 79 users,  load average: 0.01, 0.11, 0.14
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220505_001534_294331_8878360A 
X-CRM114-Status: GOOD (  21.30  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v6 0/5] add different OF board fixups
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, May 03, 2022 at 11:12:15AM +0200, Oleksij Rempel wrote:
> changes v6:
> - remove MACHINE_FIXUP Kconfig
> - use barebox_get_serial_number instead of getenv
> - use of_device_is_compatible() instead of of_machine_is_compatible()
>   and remove warning if compatible is already registered.
> 
> changes v5:
> - remove SERIAL_NUMBER_FIXUP Kconfig
> - s/of_fixup_machine_compatible/of_prepend_machine_compatible
> - remove bogus comment
> - check if the passed device tree already is compatible to @compat
> 
> changes v4:
> - s/code info device/code into device/
> 
> changes v3:
> - rename global.of_machine_compatible to global.of.kernel.add_machine_compatible
> 
> changes v2:
> - protonic: use only allowed chars for generated compatible
> - protonic: make use of of_get_machine_compatible() to get board name
> - of_fixup_machine_compatible: make curcompat optional
> - add $global.of_machine_compatible
> 
> Add optional fixups for board serial-number and machine compatible.
> 
> Ahmad Fatoum (1):
>   common: add $global.serial_number with device tree fixup
> 
> Oleksij Rempel (4):
>   ARM: boards: protonic-imx6: make use of barebox_set_serial_number()
>   of: add generic of_prepend_machine_compatible()
>   ARM: boards: skov-imx6: make use of of_prepend_machine_compatible()
>   ARM: boards: protonic-imx6: add HW revision specific machine
>     compatible
> 
>  arch/arm/boards/protonic-imx6/board.c | 42 ++++++++++++---------------
>  arch/arm/boards/skov-imx6/board.c     | 40 ++-----------------------
>  common/misc.c                         | 39 +++++++++++++++++++++++++
>  common/oftree.c                       | 41 ++++++++++++++++++++++++++
>  include/common.h                      |  6 ++++
>  include/of.h                          |  6 ++++
>  6 files changed, 114 insertions(+), 60 deletions(-)

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

