Delivery-date: Thu, 07 Nov 2024 10:44:14 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t8z3k-005sEG-34
	for lore@lore.pengutronix.de;
	Thu, 07 Nov 2024 10:44:14 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t8z3l-0003pn-LZ
	for lore@pengutronix.de; Thu, 07 Nov 2024 10:44:14 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wp1tk+rI8MWH8HWz4HVPzzg1wz5hvFtTXNnHbJgWAD8=; b=RZUJcc7gNXMfyedSzrfaFfZAin
	5twIXDwB931aPeD3ccscMLVCQM244vWviDubKtVV8MiObcHv7XhuChapFGLCUfgwNNeLEkcxSZ3O3
	Xtlm7Bus53uSWD5ooqVQZCpBhrktsCIAO9GfJwirVaYgcUSfBSS/hGRS026c1EHJfPFRQO21UIpu+
	ELsuMmGcdAqCIOEUfEWWHzYSAR7qsJmMPyw0A6Oqikz9nN678mNZ7Ysbfd5C+DpDaaM3QTAFJJFb5
	0nfvIxkvOm8tgBTyRIlei/Ka3923Eg4MaoAOs3DO0TLGnyAp7zYuekLw7m342+l4N7h4ViZCL6Pvg
	Sot8FKBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t8z3J-00000006L5E-1f04;
	Thu, 07 Nov 2024 09:43:45 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t8z36-00000006L2h-0rpS
	for barebox@lists.infradead.org;
	Thu, 07 Nov 2024 09:43:43 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t8z34-0003jH-LU; Thu, 07 Nov 2024 10:43:30 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t8z34-002RJl-1X;
	Thu, 07 Nov 2024 10:43:30 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t8z34-00953I-1M;
	Thu, 07 Nov 2024 10:43:30 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20241106183201.4181962-1-a.fatoum@pengutronix.de>
References: <20241106183201.4181962-1-a.fatoum@pengutronix.de>
Message-Id: <173097261042.2164363.4087152926830646949.b4-ty@pengutronix.de>
Date: Thu, 07 Nov 2024 10:43:30 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241107_014332_274750_9883A508 
X-CRM114-Status: UNSURE (   8.15  )
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
Subject: Re: [PATCH] clk: rockchip: make it compile again
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 06 Nov 2024 19:32:01 +0100, Ahmad Fatoum wrote:
> The RK3399 support is incomplete and we don't select CONFIG_ARCH_RK3399
> from any configs and the code experienced bitrot in return.
> 
> Fix the compile error to make the driver compile again.
> 
> 

Applied, thanks!

[1/1] clk: rockchip: make it compile again
      https://git.pengutronix.de/cgit/barebox/commit/?id=de6e372c1501 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



