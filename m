Delivery-date: Fri, 08 Aug 2025 10:53:49 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ukIrF-008GaI-2A
	for lore@lore.pengutronix.de;
	Fri, 08 Aug 2025 10:53:49 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ukIrF-00070x-5S
	for lore@pengutronix.de; Fri, 08 Aug 2025 10:53:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=CADYHWFIzJ0nd82bRAY8vJrrl/ZyYifgZ/fbHpz5lrk=; b=lQ7FUc059TPg4YjEh/+XE2u2L2
	NVzaaKRKkWTwbko+ZBoMcQlxU1Hp+ECz1VjaOzgeOWLB7gfFpAGq2Pdif7+O2B7E/mAjGbUUvzc3c
	PPH1T/cMalcG4oPHVDYIpX1YjK/tHZCe9nvGmFychr2FzLCjHF15p7K2ryJfrkR6I5jcHt+Dcab4D
	AqI9k1xxZwd/Noausy1bhpTjiK6RtEthbNK+Jt779kYB7sUUH6nBcAjpEtyd1FA0YqpXjuUwTbZW5
	3ZMx3a0YZEogvGnIzK8PbRGC3XNW2lnyv39NOW8wP5WLMCEBxMIy7i5+wod9abNHxNQWCWvK7sxf/
	iuUnPp2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ukIqX-00000002OWd-2HBL;
	Fri, 08 Aug 2025 08:53:05 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ukIqU-00000002OVJ-0WE5
	for barebox@lists.infradead.org;
	Fri, 08 Aug 2025 08:53:03 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ukIqR-0006oN-1t; Fri, 08 Aug 2025 10:52:59 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ukIqQ-00CVoU-2o;
	Fri, 08 Aug 2025 10:52:58 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ukIqQ-007MxA-2d;
	Fri, 08 Aug 2025 10:52:58 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Stefan Kerkmann <s.kerkmann@pengutronix.de>
In-Reply-To: <20250807-fix-rtl8152-dropped-packages-v1-0-a71d05b4d166@pengutronix.de>
References: <20250807-fix-rtl8152-dropped-packages-v1-0-a71d05b4d166@pengutronix.de>
Message-Id: <175464317881.1756260.14670136452516077127.b4-ty@pengutronix.de>
Date: Fri, 08 Aug 2025 10:52:58 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250808_015302_162693_6A5079D4 
X-CRM114-Status: UNSURE (   6.25  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 0/4] net: usb: r8152: disable rx aggregation
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 07 Aug 2025 17:53:09 +0200, Stefan Kerkmann wrote:
> This series fixes dropped packages I have seen using various USB
> Ethernet adapters that utilize the commonly used realtek rtl8152/rtl8153
> chipsets.
> 
> 

Applied, thanks!

[1/4] net: usb: r8152: disable rx aggregation
      https://git.pengutronix.de/cgit/barebox/commit/?id=5e9658b7571b (link may not be stable)
[2/4] net: usb: r8152: print the detected version
      https://git.pengutronix.de/cgit/barebox/commit/?id=70ef6db0c1fd (link may not be stable)
[3/4] net: usb: usbnet: calm noisy debug calls
      https://git.pengutronix.de/cgit/barebox/commit/?id=9366ccc0686e (link may not be stable)
[4/4] net: usb: add debug call in the receive path
      https://git.pengutronix.de/cgit/barebox/commit/?id=dfc05ae0b342 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



