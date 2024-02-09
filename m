Delivery-date: Fri, 09 Feb 2024 13:35:48 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rYQ6d-00A6dv-0m
	for lore@lore.pengutronix.de;
	Fri, 09 Feb 2024 13:35:48 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rYQ6d-0003AW-Uc
	for lore@pengutronix.de; Fri, 09 Feb 2024 13:35:48 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=RXgHRxhtv0DDDa2WbGxo3Wy0oduVHxdkvXzCSHaUyfM=; b=rEDIXl+wxDozb9M9nva5QGfySV
	coVkr+Ncjj+4dUPmLtAU8QvlJmeH9wuuqnVrx3M2ip9rkf9nmUkqJAYtzWrurLv1P9bXbrYY41EQW
	papBoYPQ7yoiwzIdbgujV86YfIIIJRxoxLK7harCOiNKFEaY88RIvCZakY2OnaG19mU4SJg0ISPZF
	0yBqI+ytOBZD1ULB7GurFcaVXKWWdBxD9Lo5k5x6aqvLjDlc7/leJhF18mkHf2MEVVp1b7iTIbG0x
	GcEGzRGv/HeQqpK48VXMKOnSN03hCp8qpwE7c/UVyxVPbd8wREL20Q/5OksAm106ssbn5bHnoIAgr
	a5WM8PaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rYQ5w-0000000Gxz8-1Z9Q;
	Fri, 09 Feb 2024 12:35:04 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rYQ5s-0000000Gxxz-3Qzu
	for barebox@lists.infradead.org;
	Fri, 09 Feb 2024 12:35:02 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rYQ5n-000364-76; Fri, 09 Feb 2024 13:34:55 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rYQ5m-005PjY-Qx; Fri, 09 Feb 2024 13:34:54 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rYQ5m-00HV4g-2Q;
	Fri, 09 Feb 2024 13:34:54 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20240208075217.697668-1-s.hauer@pengutronix.de>
References: <20240208075217.697668-1-s.hauer@pengutronix.de>
Message-Id: <170748209474.4170920.12860608182114165252.b4-ty@pengutronix.de>
Date: Fri, 09 Feb 2024 13:34:54 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240209_043500_889929_8DB89917 
X-CRM114-Status: UNSURE (   9.69  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 1/2] bbu: create a standard bbu handler for eMMC boot
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 08 Feb 2024 08:52:16 +0100, Sascha Hauer wrote:
> This adds a standard bbu handler to be used when an update is just
> a matter of writing an image to the eMMC boot partitions.
> As these may also want to set the BBU_FLAG_MMC_BOOT_ACK flag, it is
> moved up one level to struct bbu_handler::flags to make it configurable
> when struct bbu_data is not yet instantiated.
> 
> 
> [...]

Applied, thanks!

[1/2] bbu: create a standard bbu handler for eMMC boot
      https://git.pengutronix.de/cgit/barebox/commit/?id=4aaed9dd2737 (link may not be stable)
[2/2] ARM: i.MX: bbu: fix i.MX9 eMMC boot bbu handler
      https://git.pengutronix.de/cgit/barebox/commit/?id=8545e6e8eaa5 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



