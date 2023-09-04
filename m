Delivery-date: Mon, 04 Sep 2023 12:04:36 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qd6Rh-003Zk0-M2
	for lore@lore.pengutronix.de; Mon, 04 Sep 2023 12:04:36 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qd6Rf-0004Ea-L8
	for lore@pengutronix.de; Mon, 04 Sep 2023 12:04:36 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zD4InAx1WiNW90sXklJL/d3KqZBhiJwqWzSNDBY2n6E=; b=XiMxUw2qJeBlHt1bOpCTacGQmy
	Eh9tDTGlA7xdoGTXf7C54HzubaeuxwRIzaBUPdUeNeYCTvczD7WhyZZ875LX1/Nl3VmjSa4yvFe4K
	EYAgt9hM9V97Ecjx6zc7OC4UPFmYpfqZ1l4pAAChTf3imhDd8kRgNOcrQJn5g/MnllmGpk2U7NTet
	YJk2x+00OGubr0F1jAyV57iaOEHnkphDfXjs8R6cVozjdfnlCMK6xkwPHhxbJJMSW2zr/9HsAtray
	rtHXK3ySLcTnTWmInz3j87c7Cr96OfLis/JhtXB7Zrrmz1lQn+L1gKPdlNH2b0tyY99+crO12GEHK
	Gk1zUiKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qd6QC-003kSy-2H;
	Mon, 04 Sep 2023 10:03:04 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qd6Q8-003kSI-1m
	for barebox@lists.infradead.org;
	Mon, 04 Sep 2023 10:03:03 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qd6Q5-0001Qk-Tv; Mon, 04 Sep 2023 12:02:57 +0200
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qd6Q5-003qWy-A9; Mon, 04 Sep 2023 12:02:57 +0200
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qd6Q5-000zJu-1S; Mon, 04 Sep 2023 12:02:57 +0200
Date: Mon, 4 Sep 2023 12:02:57 +0200
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230904100257.GF189379@pengutronix.de>
References: <20230831144724.3424405-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230831144724.3424405-1-m.felsch@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230904_030300_588029_C4C876A9 
X-CRM114-Status: GOOD (  21.63  )
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
Subject: Re: [PATCH v2] ARM: i.MX8M: esdctl: split memory banks for devices
 with >4G
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Marco,

On Thu, Aug 31, 2023 at 04:47:24PM +0200, Marco Felsch wrote:
> At the moment the whole available memory is added to one single memory
> bank "ram0". This can cause barebox chainload issues on devices with a
> huge amount of memory like the i.MX8MP-EVK which has 6G of RAM if the
> barebox pbl binary is to large.
> 
> The reason for this issues is that memory_bank_first_find_space()
> returns the memory area with the largest amount of free space on the
> first memory bank. So in case of Debix SOM-A 8G and i.MX8MP-EVK 6G this
> is the area crossing the 4G boundary. This cause the barebox pbl code to
> trigger a MMU exception once the early MMU gets enabled which is
> configured for sizes <=4G.
> 
> Split the memory space into two memory banks: "ram0" and "ram1" to fix
> this issue.

In the long run we'll need a proper solution for this. I think this
patch is fine for now, but please add a comment why we are doing this.
Otherwise we might remove this superfluous code at some point.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


