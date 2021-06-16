Delivery-date: Wed, 16 Jun 2021 10:27:51 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ltQtr-00021u-5s
	for lore@lore.pengutronix.de; Wed, 16 Jun 2021 10:27:51 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ltQtq-0005z4-9m
	for lore@pengutronix.de; Wed, 16 Jun 2021 10:27:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=S4/a89TvxRFDPH+MvM/Zi1XPjWd/LeGrEDbafwopEV4=; b=kOy2/siDsJQOCC1qu6oQZJ+JIp
	NT6/+12t3wh3G/lQWGyP81QSKNuQ+6HCclA7YLqq+tllTR+HGlCgS915mFArOOrG8tRoCreTG0yXb
	LAAeFiB53Dj9F3QT5yN5jh7WZnCl7GgDSwPJlV87oLFkzwuYr1/jzxACkLYvaP0B6RZD+7oL/NRcs
	bKbVG1WZyA4OmZYcOfc9duIVR4nOF8/tuFyel87SKHc6zLXfyp5nFqt49Cfik1drhJWp5DOVOiOKa
	yQFius3MXhK9cs1DiS7Ei7cidrBRXtkcTFwB89jw6KDvaHrqCSHOcxOBPLOKxIAAg2W0iMNNlaKuv
	RIWibrnA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ltQsb-005NF0-JQ; Wed, 16 Jun 2021 08:26:33 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ltQsV-005NDw-4r
 for barebox@lists.infradead.org; Wed, 16 Jun 2021 08:26:28 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1ltQsT-0005gA-SD; Wed, 16 Jun 2021 10:26:25 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1ltQsT-00040t-AG; Wed, 16 Jun 2021 10:26:25 +0200
Date: Wed, 16 Jun 2021 10:26:25 +0200
To: Trent Piepho <tpiepho@gmail.com>
Cc: barebox@lists.infradead.org
Message-ID: <20210616082625.GQ9782@pengutronix.de>
References: <20210531145414.1210207-1-tpiepho@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210531145414.1210207-1-tpiepho@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 10:26:10 up 118 days, 11:50, 117 users,  load average: 0.18, 0.14,
 0.13
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210616_012627_254620_6E8A1A66 
X-CRM114-Status: GOOD (  22.53  )
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
Subject: Re: [PATCH] drivers: base: Check all compatible strings for modalias
 match
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, May 31, 2021 at 07:54:14AM -0700, Trent Piepho wrote:
> When attempting a modalias match in device_match_of_modalias(), only the
> first string in the compatible property, which is a list of strings, was
> used.
> 
> A modalias (which is a bit of a misnomer in Barebox) match is used when
> a driver does not have an of_compatible match table, e.g. the at24
> driver.  The compatible string after the comma is matched against the
> driver's id table.
> 
> Extend modalias match to try all strings in from the OF node's
> compatible property.  This will cause a compatible like
> "rohm,br24g04-3", "atmel,24c04" to match against the "24c04" ID in the
> at24 driver.  Or "isil,isl12057", "dallas,ds1337" will match the ds1307
> driver's table, which doesn't know about isl12057 in Barebox.
> 
> Signed-off-by: Trent Piepho <tpiepho@gmail.com>
> ---
>  drivers/base/bus.c | 27 +++++++++------------------
>  1 file changed, 9 insertions(+), 18 deletions(-)

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

