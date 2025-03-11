Delivery-date: Tue, 11 Mar 2025 12:42:49 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1try0X-00Ceyd-25
	for lore@lore.pengutronix.de;
	Tue, 11 Mar 2025 12:42:49 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1try0W-0005Rl-Gm
	for lore@pengutronix.de; Tue, 11 Mar 2025 12:42:48 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=UjKswquzHUdw06O0UIxMAbJW+b10SFRBcpHdwKnFZ4o=; b=NZ0xKIyRTKLRBGdW7Au0YL9ahK
	Ej9fhibwSsjDI9EKJJDiLjdab7YauuhoE5RFrI5dc2Otou9JDAEvfVGT/wrvq68I7lzK568LPbdSi
	6hmX6hWW093wZNWjp896IASoqRmUupcchXEQttCnHIqlXSOPNqejS2hAcF8FIqLTF6fTKni6v+aRk
	if9FP6yxouCmDUPLfQECo98iKKbLGm0f5NdV43O6myvyxQEflQ7wHMOBGCi8u9peB9T5avXrRNksQ
	nZ0lkQfahRgAY+iMk3t8EV0WV+ZQyNnP2JdYuMW0CH7THZqlb3z/phpMRJXlLRoCujyiPb0wb3Fcb
	F1xU6S0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1try05-00000005VYH-1Yn2;
	Tue, 11 Mar 2025 11:42:21 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1trxwv-00000005V1m-3UTV
	for barebox@lists.infradead.org;
	Tue, 11 Mar 2025 11:39:06 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1trxwu-0004oI-Cg; Tue, 11 Mar 2025 12:39:04 +0100
Message-ID: <cbb86516-6337-44ba-a957-5620e5eb5015@pengutronix.de>
Date: Tue, 11 Mar 2025 12:40:03 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Rouven Czerwinski <r.czerwinski@pengutronix.de>,
 Sascha Hauer <s.hauer@pengutronix.de>, BAREBOX
 <barebox@lists.infradead.org>, Ahmad Fatoum <a.fatoum@pengutronix.de>
References: <20250311-pca9450-wdog-v1-0-45120abeae00@pengutronix.de>
 <a2b2fd98bb4d5f5597b55587ddc9f6b6e4da8fcb.camel@pengutronix.de>
Content-Language: en-US
From: Jonas Rebmann <jre@pengutronix.de>
In-Reply-To: <a2b2fd98bb4d5f5597b55587ddc9f6b6e4da8fcb.camel@pengutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250311_043905_871780_066AA385 
X-CRM114-Status: UNSURE (   9.00  )
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
Subject: Re: [PATCH 0/2] Move pca9450 RESET_CTRL configuration to driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Rouven,

On 2025-03-11 12:05, Rouven Czerwinski wrote:
> Does it make sense to select the pcs9450 in the board kconfig symbols?
> This way users retain the behaviour after an update even if the pca9450
> driver was not selected before.

Are you referring to a scenario where removal of an explicit 
initialization of PCA9450_RESET_CTRL in favor of the setup in the driver 
would lead to an unitialized PCA9450_RESET_CTRL if the driver is not 
enabled?

For the imx93 boards, behaviour remains unchanged same as those two 
boards configure PCA9450_RESET_CTRL in pca9450_register_init_callback, 
which is called by the driver. So change in behavior with those.

Not so on the imx8 boards where pmic_configure is called unconditionally 
in the power-on routine.

Given this, I'm not sure if we should remove the explicit register 
config for the imx8 boards as Ahmad mentioned. I think I remember Sasha 
mentioning a reason why board kconfig doesn't select the pmic driver?..

  - Jonas


