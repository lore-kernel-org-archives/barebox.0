Delivery-date: Wed, 31 Aug 2022 08:45:48 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oTHTw-002Qwo-A6
	for lore@lore.pengutronix.de; Wed, 31 Aug 2022 08:45:48 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oTHTv-0008W6-1H
	for lore@pengutronix.de; Wed, 31 Aug 2022 08:45:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6n0ft6wevhNTwMg5c0D6veypTSNdYS9/YXAcvohWh9Y=; b=uNyuAcvnojWLhUZDevZgO0DCvD
	Jb2IujZRBJpsESVOrB6Ds3b5YP7HKVPQweIMFF3i1MVavvq9gDq+qs4/11ziUUS10vHR/ko7TQIXd
	xBd1TKQoQWWsL5S4bvrRvly/lz3w5PgLk19ac+K37PlZsOGxfOaqsLvfC1SEvLiEROjX2f9Lt0h3e
	CLGOlJlwx8CYVPGdPXkSROU2twthD6AbCeVLeuixrEskVKk+YOI6zllS/gm2AyxzlfN8qFCEJWgpp
	zXmlvnGGq05LFlLsntFleV0dOthnvnqhKkNdLkjS0SfizfebNxnwtJq/OrqLEh7OHU2hoRJL2P8Gr
	K0tOHlBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTHSg-004NTg-0Q; Wed, 31 Aug 2022 06:44:30 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTHSb-004NT7-CQ
	for barebox@lists.infradead.org; Wed, 31 Aug 2022 06:44:26 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oTHSa-0008Mr-2c; Wed, 31 Aug 2022 08:44:24 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oTHSZ-00064U-Q1; Wed, 31 Aug 2022 08:44:23 +0200
Date: Wed, 31 Aug 2022 08:44:23 +0200
To: Johannes Zink <j.zink@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220831064423.GM24324@pengutronix.de>
References: <20220830080911.440884-1-j.zink@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220830080911.440884-1-j.zink@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220830_234425_441610_76712292 
X-CRM114-Status: GOOD (  16.13  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] mfd: axp20x: add mfd axp20x driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Aug 30, 2022 at 10:09:11AM +0200, Johannes Zink wrote:
> From: Ahmad Fatoum <a.fatoum@pengutronix.de>
> 
> This commit ports the axp20x driver from linux kernel code. Structures
> not applicable for barebox are being dropped.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> Signed-off-by: Johannes Zink <j.zink@pengutronix.de>
> ---
>  drivers/mfd/Kconfig        |   8 +
>  drivers/mfd/Makefile       |   1 +
>  drivers/mfd/axp20x-i2c.c   |  71 ++++++
>  drivers/mfd/axp20x.c       | 360 ++++++++++++++++++++++++++++
>  include/linux/mfd/axp20x.h | 477 +++++++++++++++++++++++++++++++++++++
>  5 files changed, 917 insertions(+)
>  create mode 100644 drivers/mfd/axp20x-i2c.c
>  create mode 100644 drivers/mfd/axp20x.c
>  create mode 100644 include/linux/mfd/axp20x.h

Applied, thanks

Sascha


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


