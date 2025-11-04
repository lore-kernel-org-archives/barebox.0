Delivery-date: Tue, 04 Nov 2025 09:34:06 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vGCUQ-00F9nN-2T
	for lore@lore.pengutronix.de;
	Tue, 04 Nov 2025 09:34:06 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vGCUQ-0006H4-84
	for lore@pengutronix.de; Tue, 04 Nov 2025 09:34:06 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=bg5htFNStnpsZQqb6VVP2CPJjNUGL7X7kJ/0lVEf8U0=; b=YLEb9dmMCvBSDM/PoNmPcsU4x8
	35RjSn5sYlwN5wyfYX2qeR7kjZdypW0tJM6daTOzw00m7LgickGX+kOfGzADmfOEa8v2ZXDOOfJWT
	EaPAvUhqbirAE62t3D2PcXR0P+X1At20yVZyEXiVvUNS96l7WdoiSMmpC0v1xkkIBbt75H0k/CjQR
	z2P5u29UEmRAkRC6wimVzY4FitAR9CV/VgFeProhNvERw7DW9awceW8+gouU0KCF+/nzJa022niCM
	Lxi6q+fVfYDxW6xOjGmasmbLUvnkRALNA6TgPm9vpqCtMvDtRGoVkPwhRCwy9Oejz3x/VAc0Hr+LI
	DpCS3sww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vGCTx-0000000BQtQ-1GbK;
	Tue, 04 Nov 2025 08:33:37 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vGCTu-0000000BQsP-3RNw
	for barebox@lists.infradead.org;
	Tue, 04 Nov 2025 08:33:36 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vGCTt-00068f-13; Tue, 04 Nov 2025 09:33:33 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vGCTs-006zt1-2j;
	Tue, 04 Nov 2025 09:33:32 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vGCTt-00000009Gw1-0xUb;
	Tue, 04 Nov 2025 09:33:32 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Holger Assmann <h.assmann@pengutronix.de>
In-Reply-To: <20251103151935.2368094-1-a.fatoum@pengutronix.de>
References: <20251103151935.2368094-1-a.fatoum@pengutronix.de>
Message-Id: <176224521277.2210030.4309249325255642914.b4-ty@pengutronix.de>
Date: Tue, 04 Nov 2025 09:33:32 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251104_003334_860283_BD17EA03 
X-CRM114-Status: GOOD (  10.87  )
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
X-Spam-Status: No, score=-4.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] usb: dwc3: port Linux i.MX8MP glue driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 03 Nov 2025 16:19:31 +0100, Ahmad Fatoum wrote:
> Commit e213627bbe ("usb: dwc3: of-simple: add i.MX8MP compatible")
> added i.MX8MP support by matching the i.MX8MP glue in dwc3-of-simple.
> 
> This is unlike what the kernel was doing, because "Linux uses this wrapper
> for wakeup handling, but we don't need this functionality in Barebox".
> 
> Looking at Linux v6.18-rc3, this is not accurate anymore:
> The upstream i.MX8MP glue driver handles a number of device tree properties
> that we do not handle in barebox:
> 
> [...]

Applied, thanks!

[1/2] usb: dwc3: port Linux i.MX8MP glue driver
      https://git.pengutronix.de/cgit/barebox/commit/?id=a259deb8ae96 (link may not be stable)
[2/2] phy: freescale: imx8mq-usb: add support for 8MP/8MQ vbus-supply
      https://git.pengutronix.de/cgit/barebox/commit/?id=0473cefe0f71 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



