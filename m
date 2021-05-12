Delivery-date: Wed, 12 May 2021 15:05:46 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lgoYc-0007nB-BG
	for lore@lore.pengutronix.de; Wed, 12 May 2021 15:05:46 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lgoYb-0003yC-Kg
	for lore@pengutronix.de; Wed, 12 May 2021 15:05:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=EyMj64YjzchdcQTtomtqWIuNVcXeODNF6s62U5s9Oq8=; b=AQKKtHmWgdFI2YFECXmf4WNx+
	OorI1MatEAIlg3fpbGF/k9do5NxaSyjUva5q2aadOrQyRqAILbU6WIbmkeX7Nqv/RHrKRZCozMZlG
	SA7AeW+EjxRypPiiT8jrY2t/ixrKdcQxAtMqGs/DW65RHxKlfFMK7MlPtxhe6MVaTKsbUo8lz67lf
	73rR0i1VU9DdMo5rTWqeL/R7NbkApEkpIXjTfplrf+/RGnx0/FUUfe4fL8z4ihZWJHsvYekkr7LRq
	jt38khaG0mcnOx71xEBxW7KPefrq7tT9WD4XcRQvBltKSy3gqJ5F7dAoQr4Qdg75eRaiqn2h7qMvR
	jmCuqwvWg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lgoXa-002qKk-FB; Wed, 12 May 2021 13:04:42 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lgoXV-002qKX-Ju
 for barebox@desiato.infradead.org; Wed, 12 May 2021 13:04:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=d49LXCTJt1z5EuvP1eFBaMHFgggqK7oSU2c7B3lQdNQ=; b=ADJxJqRCAPUwM3R0TUbJKSRJax
 RgYUUO0SkudA1U/zjJsZtpswwJoTS2w5dHX1fwxrWxHjr+Qb2XNtkp9gNw68CzKI80HIhtG6566xO
 ZA89xfvcBBgdh6MBzvnmLMhXbyKDUp3thq2qCuyDaxAMuGKbMgC4UkmKwhwE0UYO7Mel8XCJPSYdV
 o5MXD8IblFGSF+EH/sqMNRIWZEH/rqsdb1EGG/KaE/IRM2dOAzXiXK4+OicXF3UDK2UUWH68vLc2W
 kLT+8448OcxBtgvZgbWjGUFyVdp/oBsGUh1aOBYNqvgfJYLlo9+ZEDHsk24aSMwtdpJ6f7Z1vn+ay
 7IJaTyeg==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lgoXS-00ANS0-Vr
 for barebox@lists.infradead.org; Wed, 12 May 2021 13:04:36 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lgoXP-0003lX-4H; Wed, 12 May 2021 15:04:31 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lgoXO-0008ER-Os; Wed, 12 May 2021 15:04:30 +0200
Date: Wed, 12 May 2021 15:04:30 +0200
From: Sascha Hauer <sha@pengutronix.de>
To: Michael Olbrich <m.olbrich@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20210512130430.GP19819@pengutronix.de>
References: <20210512054440.2479-1-s.hauer@pengutronix.de>
 <20210512112514.GB13688@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210512112514.GB13688@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 15:04:00 up 83 days, 16:27, 112 users,  load average: 0.62, 0.54,
 0.35
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210512_060435_041151_E344B3B3 
X-CRM114-Status: GOOD (  17.61  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] readline_simple: Fix compiler warning
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, May 12, 2021 at 01:25:14PM +0200, Michael Olbrich wrote:
> On Wed, May 12, 2021 at 07:44:40AM +0200, Sascha Hauer wrote:
> > char is an unsigned type.
> 
> That's incorrect. In the C standard it is explicitly undefined whether char
> is signed or unsigned. gcc implements this differently depending on the
> architecture. I think ARM and x86 differ here.

Ok. I already reworded this to "char can be an unsigned type".

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

