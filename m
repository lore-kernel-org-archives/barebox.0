Delivery-date: Fri, 19 Jul 2024 08:37:36 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sUhFI-000kp2-0s
	for lore@lore.pengutronix.de;
	Fri, 19 Jul 2024 08:37:36 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sUhFH-0007Nh-LP
	for lore@pengutronix.de; Fri, 19 Jul 2024 08:37:36 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=QDFJ4PkqXCQ0ARc6fkLyKsREjbLqAd+mGkm+v2pwuSQ=; b=jaigH0nDydT8XHq/dC6wdmnfap
	rRtsNuFF1wis4KQvVguTbCI6bS71SeCQNsmjtDvpnuL71ogNqF8gydXEDvU44xlyp0xBwUEh0fN0z
	HPYw9Fv3xHr9tMxfNnwpu6X2OdG7u8V7Gzw8qDE40xownn5IegEoovahwv4sPSa+djafh0JWhdUnm
	MLiaspLbb6ckwccR8OkEfJDib360kyuz/8BV6ju6hx0Ic31woh8G5m+YlXp/68buL4qJV3hOBkEa4
	wDGFdW2zhp+N5+PxViFRh9Jyg1BV7Ii9hniFB21XTXsR3WtShExffd3CT4pWRiAZU6VUv2KFKdxwc
	RgWOO0PQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sUhEs-00000001pU7-0hzM;
	Fri, 19 Jul 2024 06:37:10 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sUhEE-00000001pOG-26tR
	for barebox@lists.infradead.org;
	Fri, 19 Jul 2024 06:37:08 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sUhED-0007Gi-6P; Fri, 19 Jul 2024 08:36:29 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sUhEC-000cgF-M7; Fri, 19 Jul 2024 08:36:28 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sUhEC-002Qry-1y;
	Fri, 19 Jul 2024 08:36:28 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Richard Weinberger <richard@nod.at>
In-Reply-To: <20240717063328.2810835-1-a.fatoum@pengutronix.de>
References: <20240717063328.2810835-1-a.fatoum@pengutronix.de>
Message-Id: <172137098860.579873.6891369070499064659.b4-ty@pengutronix.de>
Date: Fri, 19 Jul 2024 08:36:28 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240718_233630_575958_FA250674 
X-CRM114-Status: UNSURE (   8.27  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 0/6] squashfs: harden against crafted metadata
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 17 Jul 2024 08:33:22 +0200, Ahmad Fatoum wrote:
> Richard reports[1] that barebox is susceptible to a number of memory safety
> issues when parsing crafted squashfs files, which have been fixed in the
> upstream Linux implementation in the meantime.
> 
> Import the mentioned commits from Linux to fix this:
> 
>   01cfb7937a9af ("squashfs: be more careful about metadata corruption")
>   d512584780d3e ("squashfs: more metadata hardening")
>   cdbb65c4c7ead ("squashfs metadata 2: electric boogaloo")
>   71755ee5350b6 ("squashfs: more metadata hardening")
>   a3f94cb99a854 ("Squashfs: Compute expected length from inode size rather than block length")
> 
> [...]

Applied, thanks!

[1/6] squashfs: be more careful about metadata corruption
      https://git.pengutronix.de/cgit/barebox/commit/?id=526642ffecd0 (link may not be stable)
[2/6] squashfs: more metadata hardening
      https://git.pengutronix.de/cgit/barebox/commit/?id=2b601e956dc6 (link may not be stable)
[3/6] squashfs metadata 2: electric boogaloo
      https://git.pengutronix.de/cgit/barebox/commit/?id=2bd8da6174f7 (link may not be stable)
[4/6] squashfs: more metadata hardening
      https://git.pengutronix.de/cgit/barebox/commit/?id=2b601e956dc6 (link may not be stable)
[5/6] Squashfs: Compute expected length from inode size rather than block length
      https://git.pengutronix.de/cgit/barebox/commit/?id=0f180583cb2d (link may not be stable)
[6/6] squashfs: refuse mount of squashfs images with non-128K block size
      https://git.pengutronix.de/cgit/barebox/commit/?id=56d5844b1c83 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



