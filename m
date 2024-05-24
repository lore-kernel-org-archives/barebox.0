Delivery-date: Fri, 24 May 2024 13:42:19 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sATJT-00GcBq-1N
	for lore@lore.pengutronix.de;
	Fri, 24 May 2024 13:42:19 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sATJS-0005DE-SG
	for lore@pengutronix.de; Fri, 24 May 2024 13:42:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=aF18v8bkP+uiCFKDdXLpJ6BEENSPV9HJdXjFFQynDCo=; b=J++pkS9N2QN91x6w+OF6j97wjA
	bLlVH4YWg8lumzhCqj/VLhSe9nyrapMqnRvyf83fVyDtRnDfUPXTeyiGUhohjLTfUiPaxkMQS/Lzt
	4QVW41hllW1wzOUeTVbF68zBliXWWMgpcKrovdIezqVxYpL65ECdU586j1iva+Gs1zxCiNJmdDFfq
	zm7Wdmq2U1p1dZ7RfCwyuwoNCdyfu7T/9hbo05dzg3i8l/fnJCeOvHBI4v5+8WkFL3+vBw98irTBe
	LPFgm5i4qB+AwvJZcVCw7asHPEiaI61JffxwEnsQOf9tarMrFSNPz9ay/UurgZ0/twtp/tfvug0lk
	Kez/GhTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sATIq-00000008nPN-19C5;
	Fri, 24 May 2024 11:41:40 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sATIm-00000008nOq-17hj
	for barebox@lists.infradead.org;
	Fri, 24 May 2024 11:41:38 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sATIj-00058I-Pd; Fri, 24 May 2024 13:41:33 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sATIj-002mtn-Cl; Fri, 24 May 2024 13:41:33 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sATIj-002Pt1-12;
	Fri, 24 May 2024 13:41:33 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Xogium <contact@xogium.me>
In-Reply-To: <20240524103514.2217258-1-a.fatoum@pengutronix.de>
References: <20240524103514.2217258-1-a.fatoum@pengutronix.de>
Message-Id: <171655089332.575723.17166430394230716689.b4-ty@pengutronix.de>
Date: Fri, 24 May 2024 13:41:33 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240524_044136_340121_E30BD22C 
X-CRM114-Status: UNSURE (   5.15  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master] nvmem: bsec: make OP-TEE TA interaction
 optional
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 24 May 2024 12:35:14 +0200, Ahmad Fatoum wrote:
> When targeting older OP-TEE versions, a PTA for BSEC access may not be
> available. Allow disabling STM32_BSEC_OPTEE_TA in this case, so the
> driver falls back to the secure monitor call silicon provider service.
> 
> 

Applied, thanks!

[1/1] nvmem: bsec: make OP-TEE TA interaction optional
      https://git.pengutronix.de/cgit/barebox/commit/?id=ead274ad3bc2 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



