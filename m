Delivery-date: Wed, 11 Jun 2025 10:09:19 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uPGWN-0065Pv-0L
	for lore@lore.pengutronix.de;
	Wed, 11 Jun 2025 10:09:19 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uPGWM-0003H2-GU
	for lore@pengutronix.de; Wed, 11 Jun 2025 10:09:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=V3/DxHAcIz9voCO9EwCmWaQTTLqrbX2bcyqs81NDk3Y=; b=fUQbOgNLGqhXFbMr2Ya4pgTop4
	tQozmpOaLL41ptTQaybqLUPu3JTGIBGr91fc23EiFJYJhScLA78WzgtlTdzBLzCU6VEnstOuXCVxj
	0Iqm633qPrx0FdvtsLu4XhkrFIu62UfGH4rX+z5108h323O9DXYAw3+15VcNVxcm9S1jzxDojnghn
	dvO274qNhpXXSgh7sou+yDJ2WO2QQIBvxGkDp1wOSJ09/qBjqbNaBFBr7Wbb9kmZrLt5om6gMSxGt
	fG7O+peOSHkawvjdVqeA8Z6ST3X/syOPouuvnhKI1b3mOmdojOsAkukSO6X/uLQkcCoRVd2ZQ2ShV
	idN+ZZ2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPGWA-00000009Dh3-30Kc;
	Wed, 11 Jun 2025 08:09:06 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPFVt-0000000943z-3uem
	for barebox@bombadil.infradead.org;
	Wed, 11 Jun 2025 07:04:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:From:Sender:
	Reply-To:Cc:Content-ID:Content-Description;
	bh=V3/DxHAcIz9voCO9EwCmWaQTTLqrbX2bcyqs81NDk3Y=; b=Q0icrBxioqisT64akEY3oSV41S
	yQWijGwjpe+sCgfbZkoms0nDwAhXXQFirRbzhSvo7YQOnGTr78Gw4fqEsFdHNRJeXRxH6HTcAXAMz
	JGJJZ7qfuTlX/VPJCHNvuQY/wGgYH41yUxRbLNhUoTeFaMhIZ2DilcZ4rL60lV2TqGyfwvxPvGIeS
	FeBmAdfYNzSnwlkrEqEnDnDzzItilBzVjTFRBsg2XUKC64+JrsZeZxDJSFzLHkYFDykVsTek0/jzT
	P/cf+LcJ0BlHirZgMeZLWejWnDotbJzXfNQeL9Bl94QcbmAy1gDJWW4H+3NZerH8R4JR3ui7XDnb/
	BDqNIvYQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPFVr-000000029PW-3Yfl
	for barebox@lists.infradead.org;
	Wed, 11 Jun 2025 07:04:45 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uPFVq-00009i-JS; Wed, 11 Jun 2025 09:04:42 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uPFVq-002uBd-1K;
	Wed, 11 Jun 2025 09:04:42 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uPFVq-001w6e-0z;
	Wed, 11 Jun 2025 09:04:42 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Jonas Rebmann <jre@pengutronix.de>
In-Reply-To: <20250610-imx8mp_ecspi-v1-0-d14d1e9d65f3@pengutronix.de>
References: <20250610-imx8mp_ecspi-v1-0-d14d1e9d65f3@pengutronix.de>
Message-Id: <174962548230.461459.5109830939754149722.b4-ty@pengutronix.de>
Date: Wed, 11 Jun 2025 09:04:42 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250611_080443_993001_EC19A722 
X-CRM114-Status: UNSURE (   6.91  )
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
Subject: Re: [PATCH 0/2] Add support for eCSPI boot on i.MX8M
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 10 Jun 2025 17:30:54 +0200, Jonas Rebmann wrote:
> Add support for atf loading of barebox proper from eCSPI NOR, similar to
> existing eCSPI support for imx6, add
> imx8m_bbu_internal_spi_i2c_register_handler.
> 
> 

Applied, thanks!

[1/2] ARM: i.MX8M: Add support for eCSPI boot
      https://git.pengutronix.de/cgit/barebox/commit/?id=a64bec85091f (link may not be stable)
[2/2] ARM: i.MX8M: Add bbu support for eCSPI boot
      https://git.pengutronix.de/cgit/barebox/commit/?id=c312b49617f0 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



