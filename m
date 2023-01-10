Delivery-date: Tue, 10 Jan 2023 16:01:34 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFG87-007r7p-Mw
	for lore@lore.pengutronix.de; Tue, 10 Jan 2023 16:01:34 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFG85-0000Zy-LN
	for lore@pengutronix.de; Tue, 10 Jan 2023 16:01:34 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=99kQMV3AkEcyroUCWraSaGfYE5SFoezQnR9gjmty5Ak=; b=J6YSETVPuEBDUGJVlf1uJFZqN9
	1ANw84Kb4CGkuVGMTnssHpAA9BJtPReCaoZHAaqX/pHW+7Y5tSpoclmcKdafFdmCvbav+mzD28GWC
	dAVnw4+vh0FXeky8LOajmtRt807BDgCsDVdZt5wPB4N3BgVe5GshDJX3Lk7Q/zwsfZX8tU6LFoqKC
	kny/kXxMm11Uw0P/1BwO4ziqu3O1s9+OG2kEVOrjwxXNMIBFwktxKTcbPXxFblMc9P4d0vJSe1rQC
	d0q0cl9NBpk4/ndd6PUGBiqsVizDLBHCWxhTzyF2WfgW1EqMR6EcWBdadFO37aHJZPdGhRReTLuAX
	iMXncYCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFG6o-007S2g-H0; Tue, 10 Jan 2023 15:00:14 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFG6j-007S0g-Db
	for barebox@lists.infradead.org; Tue, 10 Jan 2023 15:00:11 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pFG6h-0008DE-Ud; Tue, 10 Jan 2023 16:00:07 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pFG6h-0005BV-OH; Tue, 10 Jan 2023 16:00:07 +0100
Date: Tue, 10 Jan 2023 16:00:07 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230110150007.GP28911@pengutronix.de>
References: <20230109151152.2052493-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230109151152.2052493-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230110_070009_506707_85ACB389 
X-CRM114-Status: GOOD (  16.64  )
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
Subject: Re: [PATCH 0/7] treewide: misc helpers for porting
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Jan 09, 2023 at 04:11:45PM +0100, Ahmad Fatoum wrote:
> These patches resulted from yak shaving around the upcoming
> sync of the Atmel NAND driver.
> 
> Ahmad Fatoum (7):
>   vsprintf: support %pOF format specifier
>   include: driver: make dev_(get_priv|is_probed) argument const pointer
>   include: sync io-64-nonatomic-*.h headers with Linux
>   clk: add prepare/unprepare helpers
>   of: provide of_node_get and of_node_put stubs
>   include: linux/slab.h: define krealloc/kstrdup
>   barebox-wrapper: define MODULE_DEVICE_TABLE

Applied, thanks

Sascha

> 
>  include/driver.h                |  4 +-
>  include/io-64-nonatomic-hi-lo.h | 90 +++++++++++++++++++++++++++++++++
>  include/io-64-nonatomic-lo-hi.h | 90 +++++++++++++++++++++++++++++++++
>  include/linux/barebox-wrapper.h |  1 +
>  include/linux/clk.h             |  2 +
>  include/linux/slab.h            | 13 +++++
>  include/of.h                    | 15 ++++++
>  lib/vsprintf.c                  | 13 +++++
>  8 files changed, 226 insertions(+), 2 deletions(-)
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


