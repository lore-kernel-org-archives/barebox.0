Delivery-date: Thu, 05 Jun 2025 06:41:32 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uN2Q0-003tCx-0v
	for lore@lore.pengutronix.de;
	Thu, 05 Jun 2025 06:41:32 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uN2Pz-0007zZ-Mg
	for lore@pengutronix.de; Thu, 05 Jun 2025 06:41:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=k7b89/sFHr11KyVZAI+X9du6ZbxMhDZQGiIUJy5C684=; b=sf29ZbeBgvBwc79SlcZKSTCaMy
	aq/7wk3lF4e6qHF9/NsSm6YIYPHVapljrSUfgcbE6OunaAR8QLUjIhddlF47f4WM0OdCFDj69U7hc
	uCEz7Xjf5qDbsxDAd9tg65ym6U0WemC8nk4IW8kaqpkNno/Q2f29V28n9VrfnePWJhqynnP31YE/8
	sryqOvY5aosOzPHhMUag48GQvuqUxuIQAMH77Lkymg3MZfrmiPsVxkh+VN/ltkmSYDT+ER/c4SPyR
	4Rg1NkUb1Rl4ny1dMLeyX7ZPpjUrhoPLIeSXvwN7yZd6QhNP1M2eUkkkM9xQZ4uhUlr0Jqi+Wl7iu
	F0nZ2Yvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uN2PB-0000000EiSS-0kCZ;
	Thu, 05 Jun 2025 04:40:41 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uN2P8-0000000EiS3-3DMt
	for barebox@lists.infradead.org;
	Thu, 05 Jun 2025 04:40:40 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1uN2P5-0007fz-1d; Thu, 05 Jun 2025 06:40:35 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1uN2P4-001toM-2n;
	Thu, 05 Jun 2025 06:40:34 +0200
Received: from ore by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1uN2P4-00CVJ3-2R;
	Thu, 05 Jun 2025 06:40:34 +0200
Date: Thu, 5 Jun 2025 06:40:34 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <aEEfwlq2ZGEhTRGo@pengutronix.de>
References: <20250530114106.1009454-1-o.rempel@pengutronix.de>
 <20250530114106.1009454-6-o.rempel@pengutronix.de>
 <aD11nyDMePysqzgE@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <aD11nyDMePysqzgE@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250604_214038_807624_81DA929A 
X-CRM114-Status: GOOD (  25.49  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	SUBJECT_IN_BLACKLIST,SUBJECT_IN_BLOCKLIST autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v1 5/7] nvmem: regmap: Implement protect operation using
 regmap_seal
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Sascha,

On Mon, Jun 02, 2025 at 11:57:51AM +0200, Sascha Hauer wrote:
> > +	for (i = 0; i < bytes; i += reg_val_bytes) {
> > +		unsigned int current_reg_offset = offset + i;
> > +
> > +		ret = regmap_seal(map, current_reg_offset, seal_flags);
> > +		if (ret) {
> > +			dev_err(regmap_get_device(map), "regmap_seal failed for offset 0x%x: %pe\n",
> > +				current_reg_offset, ERR_PTR(ret));
> > +			/* No error handling for partial failures, we messed up
> > +			 * the HW state and can't recover.
> > +			 */
> > +			return ret;
> > +		}
> > +	}
> 
> The i.MX OCOTP offers write protection for fuses as well. AFAIR
> there are single fuses for protecting a whole range of fuses, so to
> support this we would have to pass the full range down to the driver
> instead of separating the range into registers here.
> 
> I never looked at the i.MX OCOTP locking capabilities very closely, so
> it could be that even passing a range is not good enough to make this
> implementable for the OCOTP. We might want to have a look into this
> before deciding if we want to implement protect for the drivers based on
> single registers.

Both are valid options and can be at least partially offloaded to the
framework. regmap already supports reg_[read|write] for per-register
accesses and [read|write] for bulk operations. The same we can do for
the seal operations - provide bulk or per-device ops of needed.

Best Regards,
Oleksij
-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


