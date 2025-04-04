Delivery-date: Fri, 04 Apr 2025 11:33:10 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u0dQE-008C3W-2w
	for lore@lore.pengutronix.de;
	Fri, 04 Apr 2025 11:33:10 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u0dQE-00029n-6p
	for lore@pengutronix.de; Fri, 04 Apr 2025 11:33:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=HhVCv3KE6V9VFbiUAv+PWPwP/xXrJYR3t/JRQEZPAFI=; b=e36jR2Nro0nUFH33NHVDsSExW+
	Gs993vYTb/IGFH3TwB2c1PiRnuXTGDRsv4f5H7JiCNGjNNRZaNCrmQq6rh81aErxfJ9JeFRLa5jYj
	aD7zvhLhzAuEklsQ2yPCpgS81VA2tEAkz+2PiCWCJrGaaVVU2SuogQo7DeyUYAuh3w3DuZTlF/1MM
	a3PQSc3vzwQ22HEt1Bj98QfR6j0mHRAZBS5aUB5Jqe5bwP3uOU3W5Y+vPR5OZAZ5qnAOITbftgNBJ
	DQy12/PFszPZk6LHmRectGFLUQ7RAkEvyM/Jqtb0i9VjMPmqPXZeyhwrHN0+ZBT53x1D89rEagu0A
	nSqc1AbA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u0dPp-0000000BHue-2es9;
	Fri, 04 Apr 2025 09:32:45 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u0dPn-0000000BHti-0Tn6
	for barebox@lists.infradead.org;
	Fri, 04 Apr 2025 09:32:44 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u0dPl-000227-Us; Fri, 04 Apr 2025 11:32:41 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u0dPl-003FJJ-2U;
	Fri, 04 Apr 2025 11:32:41 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u0dPl-005Bvt-2I;
	Fri, 04 Apr 2025 11:32:41 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, 
 Alexander Shiyan <eagle.alexander923@gmail.com>
In-Reply-To: <20250402131958.3858100-1-eagle.alexander923@gmail.com>
References: <20250402131958.3858100-1-eagle.alexander923@gmail.com>
Message-Id: <174375916171.1237459.10224363310489091566.b4-ty@pengutronix.de>
Date: Fri, 04 Apr 2025 11:32:41 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250404_023243_156105_EB032ABC 
X-CRM114-Status: UNSURE (   8.31  )
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
X-Spam-Status: No, score=-5.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] phy: rockchip: snps-pcie3: Updating the driver from
 the kernel repository
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 02 Apr 2025 16:19:58 +0300, Alexander Shiyan wrote:
> This patch replaces the driver code from the Linux kernel repository,
> specifically to handle the new device tree binding
> "rockchip,rx-common-refclk-mode".
> 
> 

Applied, thanks!

[1/1] phy: rockchip: snps-pcie3: Updating the driver from the kernel repository
      https://git.pengutronix.de/cgit/barebox/commit/?id=0b4a1567cef7 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



