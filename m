Delivery-date: Wed, 18 Jun 2025 12:54:27 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uRqR1-008aMX-0T
	for lore@lore.pengutronix.de;
	Wed, 18 Jun 2025 12:54:27 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uRqR0-0001nm-KN
	for lore@pengutronix.de; Wed, 18 Jun 2025 12:54:27 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=uqlKTDCxkrFONq8pfQ1N5Da70LiC/YV8XiMfLXA7VQg=; b=RgLEuRvCbiZiM8E4rnVEpzP4y1
	jU1BPnCzS0BfC45wcKpZEvgkWniOF4W57PO31NigOU9o0Cf5Hwu8JYvPuHZSeLTcT7JhSTVRsmkAO
	55wyDhjsR6wSPWhFIyeRPoSQkpcxC/JokzHpH5izGxpuNKEPOWdgeUVM9cC13qDWRVuUbbTcM6Xvk
	5J2ItgqNRJaoTekrKdDXu4Ct/lC/Tc18QJzPvk770yhsL/6iul/aJ6yBM0qmdDP0BPXcMZEvNj8tk
	ifApWFk4JqlUY1ZVaRP1VNV4VXYHoe1qXtWdHAdGeSujFC4mSB6erzlJBoNfWMWwqDOwpyHmHwAL/
	t62kqCRA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRqQV-00000009qhB-049K;
	Wed, 18 Jun 2025 10:53:55 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRpnB-00000009jaS-0KkT
	for barebox@lists.infradead.org;
	Wed, 18 Jun 2025 10:13:20 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uRpn9-0005d8-Qj; Wed, 18 Jun 2025 12:13:15 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uRpn9-0047Qb-1x;
	Wed, 18 Jun 2025 12:13:15 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uRpn9-0066Nv-1k;
	Wed, 18 Jun 2025 12:13:15 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, 
 Alexander Shiyan <eagle.alexander923@gmail.com>
In-Reply-To: <20250618063552.23777-2-eagle.alexander923@gmail.com>
References: <20250618063552.23777-1-eagle.alexander923@gmail.com>
 <20250618063552.23777-2-eagle.alexander923@gmail.com>
Message-Id: <175024159554.1454277.370623743131804987.b4-ty@pengutronix.de>
Date: Wed, 18 Jun 2025 12:13:15 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250618_031317_273794_9855DD35 
X-CRM114-Status: UNSURE (   6.98  )
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
X-Spam-Status: No, score=-6.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: at91: sam9x5ek: enable missing DT and clock
 options for devicetree boot
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 18 Jun 2025 09:35:49 +0300, Alexander Shiyan wrote:
> The AT91SAM9X5EK board uses devicetree but was missing critical Kconfig
> options required for proper DT-based operation. This patch adds OFDEVICE
> and COMMON_CLK_OF_PROVIDER Kconfig options for this board.
> 
> 

Applied, thanks!

[1/1] ARM: at91: sam9x5ek: enable missing DT and clock options for devicetree boot
      https://git.pengutronix.de/cgit/barebox/commit/?id=e6670c36bb6c (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



