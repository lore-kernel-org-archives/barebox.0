Delivery-date: Wed, 29 Oct 2025 07:27:52 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vDzey-00CxEJ-20
	for lore@lore.pengutronix.de;
	Wed, 29 Oct 2025 07:27:52 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vDzey-0008TQ-2f
	for lore@pengutronix.de; Wed, 29 Oct 2025 07:27:52 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=60ugMQfbyRZlP+I/nmnpFM2hiceY0aFm+BF1+p1MUYI=; b=tLp5Msk+CMqnj9KmoAbj8hkzTO
	Who+dhIuqAwA7evPMr6sOdNRIGLy1CuEdx7PcWlJri4u52hIZy/OoO/QWm1dHidltwoK1cCzSe5dA
	DvXK9Z+5fCwO8OS0d3FoI+25u8Uv2lopqSYsnwagccexaAWGBMOSmDCTO9LeVeegpcr6qbmJuCNZp
	tBXawFNqr/I35h8HpmnLkyt5mXbJxcF6tt+HFExVo1icUKyPESSetbY9umssGPn0DVGio9q+avWHi
	uQ2ywx+Y2/xVGRio/TOXmuNCj8AAB3k3o7Xa57/IhgMGeM5jEsvSkaL0/z2W8C78NZYQ7+tz8MBpn
	h0AsmfwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDzeM-0000000HTWm-3gJ7;
	Wed, 29 Oct 2025 06:27:14 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDzeJ-0000000HTVL-2b7F
	for barebox@lists.infradead.org;
	Wed, 29 Oct 2025 06:27:13 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vDzeF-0008Oc-Ed; Wed, 29 Oct 2025 07:27:07 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vDzeF-005zty-0s;
	Wed, 29 Oct 2025 07:27:07 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vDzeF-0000000EKDl-2hNx;
	Wed, 29 Oct 2025 07:27:07 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@barebox.org>
In-Reply-To: <20251027192938.2586566-1-a.fatoum@barebox.org>
References: <20251027192938.2586566-1-a.fatoum@barebox.org>
Message-Id: <176171922719.3414186.16216046073392207449.b4-ty@pengutronix.de>
Date: Wed, 29 Oct 2025 07:27:07 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251028_232711_672674_904A6085 
X-CRM114-Status: UNSURE (   7.38  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: (subset) [PATCH v2 1/5] regulator: implement
 dev_of_regulator_get
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 27 Oct 2025 20:28:16 +0100, Ahmad Fatoum wrote:
> Regulators for a device need not be listed in the main node associated
> with a device. Export dev_of_regulator_get for these use cases to
> simplify porting Linux drivers.
> 
> 

Applied, thanks!

[1/5] regulator: implement dev_of_regulator_get
      https://git.pengutronix.de/cgit/barebox/commit/?id=83ce8c39336d (link may not be stable)
[2/5] pmdomain: look up pmdomain even if not have_genpd_providers
      https://git.pengutronix.de/cgit/barebox/commit/?id=abf97f3993e3 (link may not be stable)
[4/5] pmdomain: allow callback for when devices are attached
      https://git.pengutronix.de/cgit/barebox/commit/?id=44c6bedbd439 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



