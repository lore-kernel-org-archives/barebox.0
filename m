Delivery-date: Tue, 23 Apr 2024 10:35:06 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rzBcI-00CeaZ-2W
	for lore@lore.pengutronix.de;
	Tue, 23 Apr 2024 10:35:06 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rzBcH-0002ul-Iy
	for lore@pengutronix.de; Tue, 23 Apr 2024 10:35:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Sv2oh3k7XWL3Iv2eB3Dbv0yP4dMXp+DN3iVrZJZoq04=; b=JYWo2wWnmMGiL21J/tuy4L4y2E
	p7j9K4xE5EVvz9ImiFfng9p/xDLOZ4wlt+n/p34HvAUYbeGUISA1W48iaRcN+3Xo0ocRdnoI6reEq
	4fDuOX4SA8qC2OQxcuRGYwMhIEp+vTxYhPyfFbSBYIhgBoANwged86ptFdUME+fZTv98/DmM/APaY
	Tn8uazjj7clxPCFZJhLAwuWaXk/zPDRy3DAFw3ixGAMKSD8EF0Zbc2xnju/346kPxWrnGRBaXoiKO
	Ga3p8cjVo+VPaGGJBZMoD+HGclJAn6JisJI0tecsXwsHtgWATZUjjV/nWE4BfNJDk7wNpmYIxGhh1
	+4OzCUFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzBbc-0000000GTTC-2QLd;
	Tue, 23 Apr 2024 08:34:24 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzBbZ-0000000GTOu-1U0X
	for barebox@lists.infradead.org;
	Tue, 23 Apr 2024 08:34:23 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rzBbL-0002cl-5Q; Tue, 23 Apr 2024 10:34:07 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rzBbK-00DrUy-EI; Tue, 23 Apr 2024 10:34:06 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rzBbK-00EWZY-1B;
	Tue, 23 Apr 2024 10:34:06 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, 
 Jonas Richardsen <jonasrichardsen@emlix.com>
Cc: denis.osterland@diehl.com
In-Reply-To: <20240422102232.551842-1-jonasrichardsen@emlix.com>
References: <20240422102232.551842-1-jonasrichardsen@emlix.com>
Message-Id: <171386124636.3461761.10857280667691362622.b4-ty@pengutronix.de>
Date: Tue, 23 Apr 2024 10:34:06 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240423_013421_428632_06A09DB5 
X-CRM114-Status: GOOD (  15.57  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 0/3] raspi: cleanup of vc fixups
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 22 Apr 2024 10:16:46 +0000, Jonas Richardsen wrote:
> This patch series contains a few changes to the video core fixups where
> the desired behaviour is obvious from raspberry device trees. These were
> tested on a Raspberry Pi 4B. There's a few more differences between the
> video core device tree and the one provided by barebox for which a
> discussion is welcome:
> 
> - After a [recent change][link1] the `/chosen` node of the device tree
>   is now fully copied from the video core device tree. This could
>   possibly be restricted to only copy relevant properties.
> - The properties `memreserve` and `serial-number` of the root node are
>   added by the video core and could also be copied.
> - The property `model` of the root node is updated with the specific
>   hardware revision of the pi.
> - The video core adds the two aliases `i2c_arm` and `i2c_vc` (as
>   properties to the `/aliases` node). As the [raspberrypi
>   documentation][link2] suggests to use the former for writing overlays,
>   it should maybe also be copied as a fixup.
> 
> [...]

Applied, thanks!

[1/3] raspi: add fixup method for specific properties
      https://git.pengutronix.de/cgit/barebox/commit/?id=dcb947764491 (link may not be stable)
[2/3] raspi: override properties in /reserved-memory node of device tree
      https://git.pengutronix.de/cgit/barebox/commit/?id=3cf4417d0045 (link may not be stable)
[3/3] raspi: add a fixup for the `dma-ranges` property of the `/emmc2bus` dt node
      https://git.pengutronix.de/cgit/barebox/commit/?id=3f9788433919 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



