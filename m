Delivery-date: Thu, 16 Jun 2022 15:12:46 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o1pIj-003ug4-2e
	for lore@lore.pengutronix.de; Thu, 16 Jun 2022 15:12:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o1pIj-0001YY-0U
	for lore@pengutronix.de; Thu, 16 Jun 2022 15:12:45 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=C3qTvXpff207ch0lSm7S+hxMBqoWxlOdlrZRT003E9o=; b=MgpfelZ9+t8Fqt
	1BwA4ey94biXw2Cc2bM7ae7gXIyYLGKiTCcAx4isDt3uM1CYXYiha5uqZwJBOc/gCpj9iA5tt4TiF
	0ivY9+mu3n77pBAtd/7jL5e8GyKSxsOO7S89XfuYVOHXglPpjGumQ0hTrrnYjz5fQZBNrLJZXyNet
	6TGZDliY9GQwUcZQbv/sbpZmwC1D5ut/zsXMF8UgKyJRQX052aIyEWGIxN4krMKt/Tpjk6KFbs+fq
	vAxGzJX4IOZ9l34SYBfPvpS49RtaI71IE01+kgiiW9pl0BIAVD9Frf8dvxqKLT54aerFLoPbqZnBc
	PFcCYDxZ0n1xfEQ7iDOQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1pHa-002Ozl-85; Thu, 16 Jun 2022 13:11:34 +0000
Received: from smtp28.bhosted.nl ([2a02:9e0:8000::40])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1pHF-002OqE-B1
	for barebox@lists.infradead.org; Thu, 16 Jun 2022 13:11:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=protonic.nl; s=202111;
	h=content-transfer-encoding:mime-version:message-id:date:subject:cc:to:from:
	 from;
	bh=C3qTvXpff207ch0lSm7S+hxMBqoWxlOdlrZRT003E9o=;
	b=HF/vu3MTgHx53SXs+VCB3kNVf99KjjTr3hrJfGnmbSblxqJ98qRkCErWKxF5AwWIaFI+9JGwN8pU5
	 6O4QgQBBaK/NcaDHLNGs95u5o+rA7OqsCZs1B1Yg6ROTeeIAdFl2oz3u1c+alYiRuY2pQXW/OlCZg5
	 +5vi4ge0eRndfIAjAOT6RNqxcXxUh8lWjpMgboluS51VNC8o9JKOx0bw2lSYzy3uSbfyA3j+1btO9t
	 JETokB89rEabN77lRyEsTl8zLP2lmfuuFnBzLK8Yr16/BgJDIvkGRZovhy15RNQ10N6SBTG3FZE0bT
	 zInsntyyeNDux/OR/1GdGDeWyUiY9ag==
X-MSG-ID: c99141a7-ed75-11ec-8a45-0050569d11ae
From: Robin van der Gracht <robin@protonic.nl>
To: barebox@lists.infradead.org
Date: Thu, 16 Jun 2022 15:11:05 +0200
Message-Id: <20220616131114.214628-1-robin@protonic.nl>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220616_061113_620440_E1C62A40 
X-CRM114-Status: UNSURE (   6.10  )
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
Cc: Oleksij Rempel <o.rempel@pengutronix.de>, Robin van der Gracht <robin@protonic.nl>, david@protonic.nl
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 0/9] ARM: boards: protonic-imx6: Updates
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Our USB FIT boot is now broken and we can no longer aquire the RFID I2C
eeprom chips we're using to store board serial and MAC address.

With this patchstack I'm proposing fusing the serial in the ocotp GP1
register as an alternative to the RFID eeprom and making the usb boot
sequence a boot entry to avoid the race condition we now have.

The patchstack also includes some minor fixes/changes I found during
implementation of the above.

- Robin

Robin van der Gracht (9):
  ARM: boards: protonic-imx6: prtvt7 hardkey inputs are active low
  ARM: boards: protonic-imx6: Update comment to match a recent code
    update
  ARM: boards: protonic-imx6: Free allocated autoboot_timeout string
  ARM: boards: protonic-imx6: Always free allocated alias string
  ARM: boards: protonic-imx6: Remove unsused argument from
    prt_imx6_usb_mount
  ARM: boards: protonic-imx6: Register prt-usb boot entry
  ARM: boards: protonic-imx6: Remove usb_delay from the priv struct
  ARM: boards: protonic-imx6: Read serial and mac from fuses if
    available
  ARM: boards: protonic-imx6: Register serial_number parameter with
    ocotp

 arch/arm/boards/protonic-imx6/board.c | 215 +++++++++++++++++++-------
 1 file changed, 159 insertions(+), 56 deletions(-)

-- 
2.34.1



