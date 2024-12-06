Delivery-date: Fri, 06 Dec 2024 15:26:04 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tJZHP-004luh-1t
	for lore@lore.pengutronix.de;
	Fri, 06 Dec 2024 15:26:04 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tJZHP-0000bv-Hd
	for lore@pengutronix.de; Fri, 06 Dec 2024 15:26:04 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=oVqdkWQutSkVhVi0Bn+K4TN5ueerQL+Dy5Zeuijfhuc=; b=HXJK9T8Z3HjBvC4p1V8AR2hWuh
	el1Rp7Z0B+S1AyBBN94nLuMpt2clw7r688yOx0zGs5aXryg6gADDsBG3enSRF8/RoB8TIjbYL66Ig
	feq3kUGz4vh0hmYZdrrUs/QahsDCqw5X1bEKOcIzdFkAMtQP6aImuz0cKovGgiuVXxm3JsiCUc1xa
	9ic8V+CBbgDtL5QtPx3bKEgkl8ILKhp8FZ8hO/3qte8Zay3WpCytt03DNGmkyc1rMAh0r1kAHc6Sh
	RxXjNjVd7YfXSSDutpA05ZBkTBMTJoexJZ1FqLJJacQAg+FfPBfa53MMT3bRmsRA4k8Teq/Zw1N5k
	6EFz7zcw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tJZGp-00000001rLs-2Jrl;
	Fri, 06 Dec 2024 14:25:27 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tJZGR-00000001rJj-3Zcz
	for barebox@lists.infradead.org;
	Fri, 06 Dec 2024 14:25:05 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1tJZGP-0000Sr-MX; Fri, 06 Dec 2024 15:25:01 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1tJZGO-0020rA-1s;
	Fri, 06 Dec 2024 15:25:01 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1tJZGP-000qTG-0o;
	Fri, 06 Dec 2024 15:25:01 +0100
Date: Fri, 6 Dec 2024 15:25:01 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Alexander Shiyan <eagle.alexander923@gmail.com>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <Z1MJPVfJY7v2vEgL@pengutronix.de>
References: <CAP1tNvQXh3sQz8exOva9oY-XFUh0ULrSuuAA5fNrCREdw8cxAA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAP1tNvQXh3sQz8exOva9oY-XFUh0ULrSuuAA5fNrCREdw8cxAA@mail.gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241206_062503_890088_6E568C6F 
X-CRM114-Status: GOOD (  16.76  )
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
X-Spam-Status: No, score=-6.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: memtest failed for rk3588
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Alexander,

On Fri, Dec 06, 2024 at 04:10:42PM +0300, Alexander Shiyan wrote:
> Hello all!
> 
> When testing a board with a RK3588 CPU, I get a stable crash on memtest.
> This is the first sample of the board on this CPU and of course it is possible
> that something is really not soldered correctly, but should the
> bootloader crash in this case?
> 
> 
> Testing memory space: 0x0000000100000000 -> 0x00000003ffffffff:
> Starting data line test.
> Check for address bits stuck high.
> Check for address bits stuck low or shorted.
> Starting moving inversions test of RAM:
> Fill with address, compare, fill with inverted address, compare again
>         [##########################################DABT (current EL)
> exception (ESR 0x96000010) at 0x00000003fc000200

Can you access 0x3fc000200 using md/mw?

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


