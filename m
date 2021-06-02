Delivery-date: Wed, 02 Jun 2021 09:13:45 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1loL4T-0007Is-QR
	for lore@lore.pengutronix.de; Wed, 02 Jun 2021 09:13:45 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1loL4S-0003cF-Ha
	for lore@pengutronix.de; Wed, 02 Jun 2021 09:13:45 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gWEHbIo1fFBiJEIrRviCOi6xtb6N0t6GOKOEp0DOHSs=; b=jyfxXsuSvznVGU
	au6GrgT7GBblOyTNvRdD9Efhr4VKRpbxpxVck8YxKaVr9NPcyMJxGhYezgKdRx3mETUQhyh5hhdi6
	ZApcwc37Lwxbn8X0dp+zrifnC3+cJAzVMVVNGBSaIpUxXjOU8mrXks6OO//vKOL3fsWpX66Q/zFdx
	8/X58SZ614xdf7Zshx1Q4tT2Vo9yo2vvW2f4llF/gXJe5HTiD5mYqsOhGXSAAfgDtN30gB6JVa1+f
	aPsHTRE4lPm9sMSLUvKzH7OQIs8pwv5B1+/0OIrVF9+wUcZgOTVXfAcjrpCsLJUbvWvt/mhHTb4ZE
	iC6yRxycU7d1gLPAucrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1loL1w-002CiK-Up; Wed, 02 Jun 2021 07:11:09 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1loKm4-0025Yh-CL
 for barebox@lists.infradead.org; Wed, 02 Jun 2021 06:54:45 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1loKm3-0000ci-1B; Wed, 02 Jun 2021 08:54:43 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1loKm2-0000jV-OI; Wed, 02 Jun 2021 08:54:42 +0200
Date: Wed, 2 Jun 2021 08:54:42 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <20210602065442.GU31738@pengutronix.de>
References: <20210518114404.5553-1-s.hauer@pengutronix.de>
 <20210518114404.5553-3-s.hauer@pengutronix.de>
 <c78dcecb-5d8f-bb09-04aa-18c10d3a62de@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c78dcecb-5d8f-bb09-04aa-18c10d3a62de@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 08:54:24 up 104 days, 10:18, 122 users,  load average: 0.69, 0.57,
 0.33
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210601_235444_441557_44853805 
X-CRM114-Status: GOOD (  16.82  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/3] ARM: Rockchip: Merge defconfig files
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, May 18, 2021 at 01:48:37PM +0200, Ahmad Fatoum wrote:
> Hello Sascha,
> 
> On 18.05.21 13:44, Sascha Hauer wrote:
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> >  arch/arm/configs/rk3188_defconfig             | 98 -------------------
> >  .../{rk3288_defconfig => rockchip_defconfig}  |  5 +-
> 
> Perhaps call it rockchip_v7a_defconfig or similar to differentiate it from
> future 64-bit support?

Sounds good, Did that.

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

