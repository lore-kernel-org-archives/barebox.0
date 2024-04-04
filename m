Delivery-date: Thu, 04 Apr 2024 08:37:03 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rsGid-008oy8-0S
	for lore@lore.pengutronix.de;
	Thu, 04 Apr 2024 08:37:03 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rsGic-0000Gc-KA
	for lore@pengutronix.de; Thu, 04 Apr 2024 08:37:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3PNLBnE/mOalQExahcnMbiZPtVKsnZlTNV0knW4nLIc=; b=d7kr3/zUiE4UohOs9+CgPGUxwB
	SztW9qWt84zBGC192XgRoQ0R3f9vKpi2qwh9Yh53j9220qeUegasDmKy7Zxy2H2oOUpdq9bRXFBcA
	9CZWDTS9Xh430Uz7rurojxkJWj+6qbpQn+F7cC8eVtjpx2t9MTgwv0aiLnRnk8CMv4pikyRMvJPds
	adUKSDiKOH+c6bGescOa2Tfi59ALkiEkXQrwL+rE+ZT4Fx7s//EcmkYuVMHKTpVPzeo6xozOzGeFc
	419hmNXSAm2yUWH9amntSvgaYDf8Zk35hyIo44K/eZMwdoD3zjCLRBar80XZttUjnx4RYVOY8IW9q
	UIIVh/gw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsGiC-00000001TTC-3I5N;
	Thu, 04 Apr 2024 06:36:36 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsGi8-00000001TSA-2A0h
	for barebox@lists.infradead.org;
	Thu, 04 Apr 2024 06:36:34 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rsGi7-0008Ni-46; Thu, 04 Apr 2024 08:36:31 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rsGi6-00AJnL-Nu; Thu, 04 Apr 2024 08:36:30 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rsGi6-002Y5k-2C;
	Thu, 04 Apr 2024 08:36:30 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20240403080703.4098404-1-s.hauer@pengutronix.de>
References: <20240403080703.4098404-1-s.hauer@pengutronix.de>
Message-Id: <171221259067.607498.12334855549628945086.b4-ty@pengutronix.de>
Date: Thu, 04 Apr 2024 08:36:30 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240403_233632_605169_0FD8E96B 
X-CRM114-Status: UNSURE (   7.68  )
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
Subject: Re: [PATCH 1/3] of: add of_property_read_variable_uxx_array()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 03 Apr 2024 10:07:01 +0200, Sascha Hauer wrote:
> This adds of_property_read_variable_uxx_array() which allow to read
> arrays from properties with min/max size boundaries. Code is directly
> taken from Linux.
> We already had of_property_read_variable_u64_array(), but without
> min/max arguments. This one is updated to match the Kernel code.
> 
> 
> [...]

Applied, thanks!

[1/3] of: add of_property_read_variable_uxx_array()
      https://git.pengutronix.de/cgit/barebox/commit/?id=0c6d2f4ded18 (link may not be stable)
[2/3] phy: rockchip: add pcie3 phy driver
      https://git.pengutronix.de/cgit/barebox/commit/?id=2d85618a2eb4 (link may not be stable)
[3/3] pci: ignore BAR when it doesn't fit into bus resource
      https://git.pengutronix.de/cgit/barebox/commit/?id=0d21f12e2aee (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



