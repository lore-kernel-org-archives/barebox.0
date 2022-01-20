Delivery-date: Thu, 20 Jan 2022 09:39:36 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nASym-007UMi-KC
	for lore@lore.pengutronix.de; Thu, 20 Jan 2022 09:39:36 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nASyl-0007zL-Bf
	for lore@pengutronix.de; Thu, 20 Jan 2022 09:39:36 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=PQYqQ6B5nZGSNp+xdmE82jSuyO4WxLu9NVwQW7FZSa0=; b=aWYxt828r3apPnHIFjP70eF5E7
	/vOCwnW32o6noZ3C/RG3V9Kg3fPCnZISOhTmVmlPaEcE7/VJjef4ocCjLJfZKhyof3dXJHSKK0HG8
	FxLnywckBwKkqVNRGjacnUztIlxcu9AbeIV/49YQTCcAmaD5eK+QYS3sWUAp5iaoaUEUbhuIta75K
	BUUsLZLm3Ms5SnRtz0I5Wc2fOdjBi7+gR1v1oVOBk35IRl3OxiNd6K3ARDs60LhH3CmXTfQLYd9cR
	mE+vFVgUx1AeYYEFiTNqAPWuf/X2pScf+a70dVQHS+ipefxLR9T+IhM+zEF5ZLPDtKJ3sP6v66H5y
	YD79PL4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nASxQ-009pkY-IR; Thu, 20 Jan 2022 08:38:12 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nASw2-009opj-3o
 for barebox@lists.infradead.org; Thu, 20 Jan 2022 08:36:47 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nASw0-0007Yv-S9; Thu, 20 Jan 2022 09:36:44 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nASw0-0005fK-JD; Thu, 20 Jan 2022 09:36:44 +0100
Date: Thu, 20 Jan 2022 09:36:44 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, mol@pengutronix.de
Message-ID: <20220120083644.GM23490@pengutronix.de>
References: <20220119092827.1476170-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220119092827.1476170-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:36:24 up 40 days, 17:21, 75 users,  load average: 0.09, 0.11, 0.20
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220120_003646_199383_752746BE 
X-CRM114-Status: GOOD (  20.50  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] block: efi-block-io: add devinfo callback for media info
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Jan 19, 2022 at 10:28:27AM +0100, Ahmad Fatoum wrote:
> There's some useful info in efi_block_io_media that's only compiled in
> at debug log level. While we need not print it always, it would be nice
> to have this printed when doing devinfo. Add a custom devinfo callback
> that does so and that invokes the normal EFI devinfo afterwards.
> 
> Defining DEBUG in the file will still print it early in probe as before.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/block/efi-block-io.c | 42 +++++++++++++++++++++++-------------
>  1 file changed, 27 insertions(+), 15 deletions(-)

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

