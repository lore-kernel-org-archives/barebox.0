Delivery-date: Thu, 16 May 2024 07:58:59 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s7U8p-00Gqnu-0X
	for lore@lore.pengutronix.de;
	Thu, 16 May 2024 07:58:59 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s7U8o-0004NP-Kq
	for lore@pengutronix.de; Thu, 16 May 2024 07:58:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=j2FxSPSJkSM+lK6baGjVXzl3Nk5NodjMGz9VqRhP+ks=; b=lGGDquDkK/kWoGVWKAiLT4ga7J
	KnBmSx2V9E30zz1PGl/t4yi0THyKDx4lOi1wwsNZ8M76NuRqi4zjKdh7f4cuN5YPre1o0cYQzATbj
	whj374cWJ9I7f3kVHH67JCd4yTPfAUO873G1EzOLE25K5IbSJ/C3GSwXWJY24MJ0snQ/Oc3A88zgm
	nrEfZFTF6x5G6HPsPmiFqMWvA0glAMr+UmG2zyNgod2igLHF9/gyqdpVQ51508p9OzMEKCbwEsQkG
	/8ACnTjjXnX+aDN+HXIOqBsbuprRgXRVOlsvVuf2cWk7pzEVKUaNFLqKY6vUUQakeyQ6ZgISGKpWj
	eDq6sL6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7U8Q-00000003oVR-26na;
	Thu, 16 May 2024 05:58:34 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7U8N-00000003oUo-28dL
	for barebox@lists.infradead.org;
	Thu, 16 May 2024 05:58:33 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s7U8M-0004Hl-0Z; Thu, 16 May 2024 07:58:30 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s7U8L-001exj-KI; Thu, 16 May 2024 07:58:29 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s7U8L-00BRIc-1q;
	Thu, 16 May 2024 07:58:29 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240515112703.290968-1-a.fatoum@pengutronix.de>
References: <20240515112703.290968-1-a.fatoum@pengutronix.de>
Message-Id: <171583910956.2726531.18402308297483803543.b4-ty@pengutronix.de>
Date: Thu, 16 May 2024 07:58:29 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240515_225831_685663_5A81C67B 
X-CRM114-Status: UNSURE (   7.73  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] include/linux/kernel.h: fix mult_frac() multiple
 argument evaluation bug
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 15 May 2024 13:27:03 +0200, Ahmad Fatoum wrote:
> This is a port of Linux commit 048a9883267f9b8f8e05dca9e9e8e6f991eea61e:
> 
> | Author:     Alexey Dobriyan <adobriyan@gmail.com>
> | AuthorDate: Sat May 20 21:25:19 2023 +0300
> |
> | include/linux/math.h: fix mult_frac() multiple argument evaluation bug
> |
> | mult_frac() evaluates _all_ arguments multiple times in the body.
> |
> | Clarify comment while I'm at it.
> |
> | Link: https://lkml.kernel.org/r/f9f9fdbb-ec8e-4f5e-a998-2a58627a1a43@p183
> | Signed-off-by: Alexey Dobriyan <adobriyan@gmail.com>
> | Signed-off-by: Andrew Morton <akpm@linux-foundation.org>
> 
> [...]

Applied, thanks!

[1/1] include/linux/kernel.h: fix mult_frac() multiple argument evaluation bug
      https://git.pengutronix.de/cgit/barebox/commit/?id=3934f477dc82 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



