Delivery-date: Fri, 20 Mar 2026 07:34:35 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w3TRL-002vww-0e
	for lore@lore.pengutronix.de;
	Fri, 20 Mar 2026 07:34:35 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w3TRK-0001QE-Iq
	for lore@pengutronix.de; Fri, 20 Mar 2026 07:34:35 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vd5ePGIOOyhBA15UG0mZI2E7/tanlxx1RXkSdbWhK2Q=; b=2Rq/hLmQAVADtQVBL/JWyg3lSo
	IF/R30NoRGt1Vo0xqiK9TiUmy7oq9aYBbfrUT0o5GXtTPO9B2yKv0aHUtBR2+SpntyixCbY4HMd9v
	F9ZPz/PjI4FelVm4gYuO9ASPc3Rrotvs8sxLNgr6OshBKxNRGWZT4WwyXCKFl8A0u8sIZuBMPvKF+
	mEseQDhxd+ksnYGRlN8SYARgfG3Uw8z2f7EbpCVvLU2FAXpSMW5Co2yQPmW/1S5rJxQNWKywpIu6h
	cml0gSeak2jZzJtIbp5XwhAp1TbveQN0de0xQWAqUzhO+PzkdTB0zy8Uti+0Ig3zAoZE7bX0gi4Rl
	57Jccryw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3TQj-0000000CB3T-0859;
	Fri, 20 Mar 2026 06:33:57 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3TQf-0000000CB2n-2sf1
	for barebox@lists.infradead.org;
	Fri, 20 Mar 2026 06:33:55 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w3TQd-0001Hw-GH; Fri, 20 Mar 2026 07:33:51 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w3TQd-001CL4-11;
	Fri, 20 Mar 2026 07:33:51 +0100
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w3TQd-00000001GH1-117C;
	Fri, 20 Mar 2026 07:33:51 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20260319070145.1915091-1-s.hauer@pengutronix.de>
References: <20260319070145.1915091-1-s.hauer@pengutronix.de>
Message-Id: <177398843123.299435.1736715579467966782.b4-ty@pengutronix.de>
Date: Fri, 20 Mar 2026 07:33:51 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260319_233353_731462_D6129C9F 
X-CRM114-Status: UNSURE (   5.54  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: radxa-rock5t: Disable pcie3x2
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 19 Mar 2026 08:01:45 +0100, Sascha Hauer wrote:
> pcie3x2 has no chance to come up as its phy (pcie30phy) is disabled, so
> disable the PCIe port as well.
> 
> 

Applied, thanks!

[1/1] ARM: radxa-rock5t: Disable pcie3x2
      https://git.pengutronix.de/cgit/barebox/commit/?id=a065ffa884d6 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



