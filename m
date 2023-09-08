Delivery-date: Fri, 08 Sep 2023 15:21:42 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qebQd-008Gec-LN
	for lore@lore.pengutronix.de; Fri, 08 Sep 2023 15:21:42 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qebQb-0001nC-Ja
	for lore@pengutronix.de; Fri, 08 Sep 2023 15:21:42 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=XKTGQebZ0mo7Z8jOX0L0NybwqCROMzBrM1OQzLm6HkA=; b=zp20XWaun4WBO559O6kIBJ8ivh
	TWljREBZBtwqeM+tyAK4gZUJIgxw+vINm+xVExQk706fEkzkdPdf24XVKfkc3C0YDkfJVEL8z1Yzi
	t9W6lad1h9W7P5Hbhj5Cx0eTXll7wJ9yQcV7JyD9meqBavudRLbMG8iIRwy0TejhN5xPctqEARx/s
	8GjiFJ65FiSSxUMd/asfubP2o5GXOR2ko7VapzJczOP0kFwntEcLw5ihVvwE2HG3weiBkUoBCvjAS
	MJQ4mMoquq4RbXUKJXpOuNc1e101XDTViRbz+YVlK/M0ohz0qxCZZsiP7ybIenuRtCsW0HBDazST+
	5aEwMW2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qebPQ-00DpuM-2c;
	Fri, 08 Sep 2023 13:20:28 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qebPN-00Dpu3-36
	for barebox@lists.infradead.org;
	Fri, 08 Sep 2023 13:20:27 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qebPM-0001SR-K1; Fri, 08 Sep 2023 15:20:24 +0200
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qebPM-004tK2-0j; Fri, 08 Sep 2023 15:20:24 +0200
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qebPL-003MvG-NF; Fri, 08 Sep 2023 15:20:23 +0200
Date: Fri, 8 Sep 2023 15:20:23 +0200
To: Jules Maselbas <jmaselbas@zdiv.net>
Cc: barebox@lists.infradead.org
Message-ID: <20230908132023.GJ637806@pengutronix.de>
References: <20230907152047.102747-1-jmaselbas@zdiv.net>
 <ZPo6pGwAwVJr5b7U@tour>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZPo6pGwAwVJr5b7U@tour>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230908_062026_021031_AF0ED9F7 
X-CRM114-Status: GOOD (  13.23  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 1/3] decompressors: Update xz to include ARM64 BCJ
 decoder
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Thu, Sep 07, 2023 at 11:03:32PM +0200, Jules Maselbas wrote:
> > +config XZ_DEC_ARM64
> > +	bool "ARM64 BCJ filter decoder"
> I've just noticied that this string makes this config entry visible
> in menuconfig, while all others are not.
> It should be only: `bool` without anything else afterward.

Fixed that while applying.

Thanks
 Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


