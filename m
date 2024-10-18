Delivery-date: Fri, 18 Oct 2024 11:04:05 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t1itx-005p7I-2m
	for lore@lore.pengutronix.de;
	Fri, 18 Oct 2024 11:04:05 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t1itx-00033E-9y
	for lore@pengutronix.de; Fri, 18 Oct 2024 11:04:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=FNCAFaCdJxA8YuSlDh/mbsAypEBOljFbdWwJzwcLTNg=; b=obYFTHsZjZrPZE8+nkKzegM4p3
	P8seC93HezCsRmU2a42vYdOTyYnGSVHHmk2KBDIB3XJKTneefj3VjD2izBDpVg1S4e/DNJkYSXmJT
	Q2/+Ap2wh/nNBMvaDOJxcSg4qywhO61mK7ZIEatrlDeqocZpBNUlAapnurtGoD7//M3uMznCuv8V9
	w+7t3C3bnkapGh0IiTqPGsnNk98Jw1G7cNLz3h9UVTFfysBh/LfNk/F4HaifZPBD1YxkiptuWVe+0
	ha93dAghRKaoypeN04KiGIRAL0gtlqTZnQt9SYYAk6We25nRZIjc20oQNaocpFrNirT/j5okBiGkt
	wWhbNfqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t1itT-0000000068C-2zAz;
	Fri, 18 Oct 2024 09:03:35 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t1ilK-000000004VI-0bCc
	for barebox@lists.infradead.org;
	Fri, 18 Oct 2024 08:55:11 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t1ilI-0002Cy-QO; Fri, 18 Oct 2024 10:55:08 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t1ilI-000BLq-1E;
	Fri, 18 Oct 2024 10:55:08 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t1ilI-00CHwe-13;
	Fri, 18 Oct 2024 10:55:08 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, a.fatoum@barebox.org, 
 Abdelrahman Youssef via B4 Relay <devnull+abdelrahmanyossef12.gmail.com@kernel.org>
Cc: Abdelrahman Youssef <abdelrahmanyossef12@gmail.com>
In-Reply-To: <20241017-errors_fixes-v1-1-4c4d1a2c124d@gmail.com>
References: <20241017-errors_fixes-v1-1-4c4d1a2c124d@gmail.com>
Message-Id: <172924170832.2928747.5740465270614625769.b4-ty@pengutronix.de>
Date: Fri, 18 Oct 2024 10:55:08 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241018_015510_217454_93225B13 
X-CRM114-Status: UNSURE (   5.66  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] include: Include <linux/math.h> to resolve implicit
 declaration of do_div()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 17 Oct 2024 02:47:04 +0300, Abdelrahman Youssef via B4 Relay wrote:
> I was testing barebox with randconfig, so I got a warning (treated as an error) : implicit declaration of do_div().
> So <linux/math.h> needs to included.
> 
> 

Applied, thanks!

[1/1] include: Include <linux/math.h> to resolve implicit declaration of do_div()
      https://git.pengutronix.de/cgit/barebox/commit/?id=cb8767765854 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



