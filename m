Delivery-date: Mon, 22 Apr 2024 12:24:08 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ryqqG-00BO3U-0V
	for lore@lore.pengutronix.de;
	Mon, 22 Apr 2024 12:24:08 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ryqqE-0007HC-Ut
	for lore@pengutronix.de; Mon, 22 Apr 2024 12:24:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=geIIU5pLeUj7gN8TiCw1VUi3W1Xk03rBib4rSpSaOTE=; b=qDnIX+jBhL1ZU9zNqYVaCSC0Pz
	MNPRYY62MiltptacD78ZjpV4aR1ckG1XAk1Uey7/9HgB/aLyIgKkP+Xq3Wjj+238CpLUFCEkiA3VE
	S3YoOxjfB8s0HHDdKnuOA1PRih0mtQRI+bkD+rs6xJleIN0i2q5dtt2X+IyBArR7vqbh9ShlNQldz
	KOJuxQcmBLJhY765t9zgKKffD/GTIAzFnldFcDpaLmkW6fMBfEq5UlAk1/c3fsCZgYCvkMEMzHYqP
	/cs//X8eO12WZ6vVaGarHYWGHZ7RcFLl3epie66BV3rjTGWP8EfJFEmd5Tqp2ekmWbSW6eBjn1NJk
	+g6UcFsw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ryqpl-0000000D8MK-208c;
	Mon, 22 Apr 2024 10:23:37 +0000
Received: from mx1.emlix.com ([178.63.209.131])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ryqph-0000000D8Is-35ze
	for barebox@lists.infradead.org;
	Mon, 22 Apr 2024 10:23:35 +0000
Received: from mailer.emlix.com (unknown [81.20.112.87])
	(using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mx1.emlix.com (Postfix) with ESMTPS id ED9F95FC0D;
	Mon, 22 Apr 2024 12:23:21 +0200 (CEST)
From: Jonas Richardsen <jonasrichardsen@emlix.com>
To: barebox@lists.infradead.org
Cc: Jonas Richardsen <jonasrichardsen@emlix.com>,
	denis.osterland@diehl.com
Date: Mon, 22 Apr 2024 10:16:46 +0000
Message-ID: <20240422102232.551842-1-jonasrichardsen@emlix.com>
X-Mailer: git-send-email 2.42.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240422_032333_953078_F7C383B0 
X-CRM114-Status: GOOD (  11.15  )
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
X-Spam-Status: No, score=-6.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 0/3] raspi: cleanup of vc fixups
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This patch series contains a few changes to the video core fixups where
the desired behaviour is obvious from raspberry device trees. These were
tested on a Raspberry Pi 4B. There's a few more differences between the
video core device tree and the one provided by barebox for which a
discussion is welcome:

- After a [recent change][link1] the `/chosen` node of the device tree
  is now fully copied from the video core device tree. This could
  possibly be restricted to only copy relevant properties.
- The properties `memreserve` and `serial-number` of the root node are
  added by the video core and could also be copied. 
- The property `model` of the root node is updated with the specific
  hardware revision of the pi.
- The video core adds the two aliases `i2c_arm` and `i2c_vc` (as
  properties to the `/aliases` node). As the [raspberrypi
  documentation][link2] suggests to use the former for writing overlays,
  it should maybe also be copied as a fixup.

[link1]: https://git.pengutronix.de/cgit/barebox/commit/?id=30754085bdba91853acbb3973ce348bf5aa2c9e7
[link2]: https://www.raspberrypi.com/documentation/computers/configuration.html#part3.3

Jonas Richardsen (3):
  raspi: add fixup method for specific properties
  raspi: override properties in /reserved-memory node of device tree
  raspi: add a fixup for the `dma-ranges` property of the `/emmc2bus` dt
    node

 arch/arm/boards/raspberry-pi/rpi-common.c | 50 ++++++++++++++++++++++-
 1 file changed, 49 insertions(+), 1 deletion(-)

-- 
2.42.0



