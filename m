Delivery-date: Mon, 04 Oct 2021 13:48:38 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mXMSU-0006nE-BX
	for lore@lore.pengutronix.de; Mon, 04 Oct 2021 13:48:38 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mXMST-0004fX-8J
	for lore@pengutronix.de; Mon, 04 Oct 2021 13:48:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=91nTOCQChjjU/7tJEp7YiccKBbBOTiYfV34rx4J5XjA=; b=WDeqUzPq5FwQ06SYRY3Q6Gp/2l
	yPRKJ/Rsy+N6IA+pCFGCzIUh051LHEnu9uzqR4hoGqpTUiZ/sC1ed+LDWI1RDZFZ28IrH5jtXgs2z
	l+mkMYfagPo79v0Bc7EeYmLSIQSjWomrpa3zUgwslzV4RYR3kA3F+7fxFdooDrz08bMYVpqopJETC
	5OgmcQcpepAW3Eg9mq8NzcEEpcX7EnZJJzJBDOZ19Z82CQaenutS+YkB9H1KnLQ4BLqdQuPSSIDb1
	zYZcfbJnjgPwW0b0AjrsW5T7LHkFii9IQzeW5P3iUdTu7knkUTKg3Ea2itMOv4qZpbQYoBoywTApk
	ZwLP4i6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mXMQi-006GjA-1c; Mon, 04 Oct 2021 11:46:48 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mXMPv-006GXn-1v
 for barebox@lists.infradead.org; Mon, 04 Oct 2021 11:46:00 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mXMPt-0004Gs-Lt; Mon, 04 Oct 2021 13:45:57 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mXMPs-0004RF-PA; Mon, 04 Oct 2021 13:45:56 +0200
Date: Mon, 4 Oct 2021 13:45:56 +0200
To: Jules Maselbas <jmaselbas@kalray.eu>
Cc: barebox@lists.infradead.org,
 =?iso-8859-15?Q?An=B8e_Le=A8nik?= <anze.lesnik@norik.com>,
 Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <20211004114556.GB28453@pengutronix.de>
References: <20210910102931.26078-1-jmaselbas@kalray.eu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210910102931.26078-1-jmaselbas@kalray.eu>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 13:45:28 up 228 days, 15:09, 143 users,  load average: 1.04, 0.46,
 0.31
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211004_044559_142493_B07B0D19 
X-CRM114-Status: GOOD (  24.38  )
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
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2] usb: gadget: dfu: Rework dfu command to use usbgadget
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Sep 10, 2021 at 12:29:31PM +0200, Jules Maselbas wrote:
> The dfu command now uses the composite multi gadget to register the usb
> functionality. This allows the removal of the usb composite driver from
> dfu.c
> =

> As the dfu command is blocking the command slice must be released while
> the dfu gadget is running in order to do operations on the file system.
> =

> The usb_dfu_register() function is replaced with usb_dfu_detached() for
> the dfu command to return a different value depending on if it has been
> interrupted with CTRL-C or if the gadget has been detached.
> =

> Tested-by: An=B8e Le=A8nik <anze.lesnik@norik.com>
> Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
> =

> ---
> changes in v2:
>  - Rebased on next: update for the new usbgadget_register() prototype
> ---
>  commands/dfu.c           |  29 +++----
>  drivers/usb/gadget/dfu.c | 163 +--------------------------------------
>  include/usb/dfu.h        |   2 +-
>  3 files changed, 18 insertions(+), 176 deletions(-)

Applied, thanks

Sascha

-- =

Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

