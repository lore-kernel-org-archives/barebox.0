Delivery-date: Fri, 14 Jan 2022 09:18:33 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n8Hn7-001rs9-Hz
	for lore@lore.pengutronix.de; Fri, 14 Jan 2022 09:18:33 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n8Hn5-0006EV-UL
	for lore@pengutronix.de; Fri, 14 Jan 2022 09:18:32 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RTgAHbiVvPK1uGemfztMRaWG8fgyzYlqiiPk41kHTyw=; b=i4kAGmR4giMHVU
	MZBWQ1N7W+xuH7rqpCOHwO7i2y+mDVvUx5MOraI0DI6EKrSOA9SYyCfSu+TCUppGl7OwPK0/FTRES
	4pgnAjPy+u5FT6k1Aq5VWu/2EQ/MvGXKo8q93uZdCcGKvfo2wn2C4y4T6hMcEE3wvOKVvEcoWw/uy
	HawKjVD8kJPiPbd4TJ1aEicrnxNGWWMV2EjgtKRmJy0KMM0UTab5t6HKA6VeiEkxuM9siZ9Mi8i6e
	4Cdxc3jQ6ZDDx4yQhlj/HX0qI6buHlPIJTFycJPMTi5tuVePZXTZdRtbdCRn2QwgMJVgD+FMKeqzl
	5my/nCvrU+ubdqfQSpXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n8Hlf-008CIO-5A; Fri, 14 Jan 2022 08:17:03 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n8HlZ-008CHL-Pj
 for barebox@lists.infradead.org; Fri, 14 Jan 2022 08:16:59 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1n8HlY-0005yo-Ex; Fri, 14 Jan 2022 09:16:56 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1n8HlW-0005qp-QX; Fri, 14 Jan 2022 09:16:54 +0100
Date: Fri, 14 Jan 2022 09:16:54 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Michael Riesch <michael.riesch@wolfvision.net>, barebox@lists.infradead.org
Message-ID: <20220114081654.GP26619@pengutronix.de>
References: <20211111140316.1646962-1-michael.riesch@wolfvision.net>
 <20211111140316.1646962-3-michael.riesch@wolfvision.net>
 <603ef8b9-0103-5b53-b9bb-3db329961b04@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <603ef8b9-0103-5b53-b9bb-3db329961b04@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:16:41 up 34 days, 17:02, 77 users,  load average: 0.12, 0.14, 0.15
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220114_001657_857658_47153DE6 
X-CRM114-Status: GOOD (  20.53  )
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
Subject: Re: [PATCH 2/3] net: designware: rockchip: remove unnecessary clock
 pclk_xpcs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Jan 14, 2022 at 06:24:00AM +0100, Ahmad Fatoum wrote:
> Hello Sascha,
> 
> On 11.11.21 15:03, Michael Riesch wrote:
> > The pclk_xpcs clock is not used in the mainline Linux driver and
> > only rarely specified in the mainline dts files. Drop it in order
> > to avoid errors when the mainline dts files are used.
> > 
> > Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
> 
> Can you cherry-pick this one patch? I have code depending on it.

Did that.

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

