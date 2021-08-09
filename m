Delivery-date: Mon, 09 Aug 2021 20:52:48 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mDAOG-0002wK-MP
	for lore@lore.pengutronix.de; Mon, 09 Aug 2021 20:52:48 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mDAOC-0002FO-Eu
	for lore@pengutronix.de; Mon, 09 Aug 2021 20:52:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=o4VtCqgBGKZWkyOjR+QibJIr1aydgouuoSfyGWEA/OY=; b=uNWneIY8A60RzemsUa3c0PFpH/
	o660aY3kW3oojAfMX+OjH4hgq/KTujY39AyF1dQQvvRdJ1vj+HDsXrLFAFSF4iG0x9Cs0EWxxKtu1
	UXhXxUU2WWRESHgcNOgRy3k0JJHUSQlluNz2NJQmv6QXt2mYS2u3+mok9+OWASdM/4Ua3qP2zZ2B1
	m1RCkoOWiDuOTo5NemTQbPFx1TwBia3TooMV+65r9vlsnNHE4OfpWYPemV3KcO9yJco2LufxX3En9
	rjCvNlvAGLog/z1vHTLUj7H3BewkWnG/i2OaRn2U+X+22P5sYvLVRC4JwL2FQ0+nwKRWsxTKAQ2Qn
	eYSYdNZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mDAMh-001lTl-7v; Mon, 09 Aug 2021 18:51:11 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mDAMZ-001lT9-Mk
 for barebox@lists.infradead.org; Mon, 09 Aug 2021 18:51:07 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mDAMY-00022J-GO; Mon, 09 Aug 2021 20:51:02 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mDAMY-0006SE-2e; Mon, 09 Aug 2021 20:51:02 +0200
Date: Mon, 9 Aug 2021 20:51:02 +0200
To: Michael Riesch <michael.riesch@wolfvision.net>
Cc: barebox@lists.infradead.org
Message-ID: <20210809185102.GK11515@pengutronix.de>
References: <20210705160457.7346-1-michael.riesch@wolfvision.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210705160457.7346-1-michael.riesch@wolfvision.net>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 20:50:35 up 172 days, 22:14, 81 users,  load average: 0.14, 0.09,
 0.08
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210809_115103_784918_DC309022 
X-CRM114-Status: GOOD (  20.36  )
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
Subject: Re: [PATCH v2] arm: rockchip-rk3568-evb: add hardware id detection
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Jul 05, 2021 at 06:04:57PM +0200, Michael Riesch wrote:
> The RK3568 EVB uses a voltage divider to determine the hardware ID of
> the board. At the moment, the voltage levels for seven EVB variants are
> defined. This commit adds a late_initcall to the board code that reads
> out the voltage and populates the hardware ID as environment variable.
> 
> Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
> ---
> v2:
> - add compatible check
> - return early in case the voltage cannot be read
> - populate hardware ID as environment variable
> 
>  arch/arm/boards/rockchip-rk3568-evb/board.c | 56 +++++++++++++++++++++
>  1 file changed, 56 insertions(+)

Applied with Ahmads fixup, thanks

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

