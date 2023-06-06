Delivery-date: Tue, 06 Jun 2023 11:58:57 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q6TSt-00CtjL-5S
	for lore@lore.pengutronix.de; Tue, 06 Jun 2023 11:58:57 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q6TSq-0003im-Rm
	for lore@pengutronix.de; Tue, 06 Jun 2023 11:58:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4FXzccWnaDwrHvq0dHeoWMB4Ii7Q0BJlF9lQMJ5ATyQ=; b=DopRga6Ezx7t/w9BEPGhBpGEmw
	eyxBqgORlY3nv4jApT5euHix7+nrhHFN264YpRLgBGFyWG7aps2DDOZNES4o+rRO9iKPyIZs53WpS
	QJZ+EOFclQ1lO+79No3ZWo8sNZyXK5mAJJD/clEBjnRmOOH0O4Ls9h5YaCit+Ydw5/GPvOjUl5PsT
	fdp+u8+yXL3eHfc8zGIRDzWoRgd8Bla1UaoqU+XXCCS3YglisdhtUPr36BkkmjLY3Q4/riyezrYBu
	Y8kY6243hlG57saLtCxbUyMMJK+zqxUYxeH0ozuKvs6YqO6mB5timvFZhah18auNSHQF3knbVxPGH
	0ezO4cMA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q6TRl-0016Y7-0X;
	Tue, 06 Jun 2023 09:57:49 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q6TRi-0016XZ-0z
	for barebox@lists.infradead.org;
	Tue, 06 Jun 2023 09:57:47 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q6TRh-0003XZ-1D; Tue, 06 Jun 2023 11:57:45 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q6TRg-0004WK-OG; Tue, 06 Jun 2023 11:57:44 +0200
Date: Tue, 6 Jun 2023 11:57:44 +0200
To: yegorslists@googlemail.com
Cc: barebox@lists.infradead.org
Message-ID: <20230606095744.GC18491@pengutronix.de>
References: <20230606081718.2246807-1-yegorslists@googlemail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230606081718.2246807-1-yegorslists@googlemail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230606_025746_368342_A83D31EA 
X-CRM114-Status: GOOD (  16.14  )
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
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2] net: phy: add driver for MotorComm PHY
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Jun 06, 2023 at 10:17:18AM +0200, yegorslists@googlemail.com wrote:
> From: Yegor Yefremov <yegorslists@googlemail.com>
> 
> The driver corresponds to the kernel 6.1.27.
> 
> Signed-off-by: Yegor Yefremov <yegorslists@googlemail.com>
> ---
> Changes:
> 	v1 -> v2: add the related kernel version
> 
>  drivers/net/phy/Kconfig     |   5 ++
>  drivers/net/phy/Makefile    |   1 +
>  drivers/net/phy/motorcomm.c | 128 ++++++++++++++++++++++++++++++++++++
>  3 files changed, 134 insertions(+)
>  create mode 100644 drivers/net/phy/motorcomm.c

Applied, thanks

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


