Delivery-date: Wed, 09 Jun 2021 11:55:38 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lquvy-00076a-DD
	for lore@lore.pengutronix.de; Wed, 09 Jun 2021 11:55:38 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lquvw-0005SZ-Sg
	for lore@pengutronix.de; Wed, 09 Jun 2021 11:55:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HAWGanzRjsleHF5nDlCGHMUX7gsqKr+wTkXHvuuAw4U=; b=yWOL+GZhxrrF49
	YZ+8k8N4kyEMjsNFtOuOe33GGzZPAMiGWD2NiN9bjScq9cr0yvT1g8QmjHIgJdmKPkDqRPgBfIlsF
	xhxJSA4PiBg5MjWlWrIp7Xw12ykAqAPuTu1LCcxQedZtFanEQ1x80tlbvdv7EQ8ovC3RjnpTWJ91r
	DI1f6tyCxHJnHGfThmkhO+5OshAk7aBKvnIHpatzR5MC7+nbxe7JBeu5+UFMRghLDtnTJ4uS9bsOd
	Xgey2vdcjkhkwbLwdZE+kujAPUwYpJJ3pM6wHWScMEDRCnN4SxrPrikgJAyo4DqEFlil1BNzVuXFX
	X6pSQGu99Tm34mLMd6yA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lquuS-00CoXt-Ev; Wed, 09 Jun 2021 09:54:06 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lqum0-00Cm15-Pu
 for barebox@lists.infradead.org; Wed, 09 Jun 2021 09:45:23 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lqulz-0004K5-CK; Wed, 09 Jun 2021 11:45:19 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lqulz-0005Uv-3e; Wed, 09 Jun 2021 11:45:19 +0200
Date: Wed, 9 Jun 2021 11:45:19 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <20210609094519.GF5267@pengutronix.de>
References: <20210608140545.30696-1-s.hauer@pengutronix.de>
 <20210608140545.30696-6-s.hauer@pengutronix.de>
 <16d1862e-9d5a-2af2-c444-37f48150def8@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <16d1862e-9d5a-2af2-c444-37f48150def8@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 11:42:37 up 111 days, 13:06, 125 users,  load average: 0.28, 0.22,
 0.13
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210609_024520_879437_B86E6B04 
X-CRM114-Status: GOOD (  20.58  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 5/5] pinctrl: Rockchip: Add RK3568 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Jun 09, 2021 at 10:11:46AM +0200, Ahmad Fatoum wrote:
> 
> 
> On 08.06.21 16:05, Sascha Hauer wrote:
> > This adds support for the RK3568 SoC to the Rockchip pinctrl driver.
> 
> Unlike Linux, barebox doesn't propagate pinctrl probe deferrment from the
> probe of other drivers. This driver here is registered at console_initcall
> level, which may be too late to apply pin config for console drivers.
> 
> I think the driver should be moved to core_platform_driver.

Yes, likely. I'll add a patch for that.

Could you trim the context from your answers a bit? I often have to scan
long patch mails to see that there's nothing to see.

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

