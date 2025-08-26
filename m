Delivery-date: Tue, 26 Aug 2025 07:09:21 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uqlvu-004bgb-1d
	for lore@lore.pengutronix.de;
	Tue, 26 Aug 2025 07:09:21 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uqlvt-0000p5-DA
	for lore@pengutronix.de; Tue, 26 Aug 2025 07:09:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=EWnXDr3t7ehbXFOtSzngTqRm9B+UHROePUyyPOGx2zs=; b=dgFXk7SNqcNmadmLpGYX6CVeDM
	dTne+j/C/SBLO8gXUeXsL5dtDXGDzrji3QbtWjsjvfp4Yb7c5dx//shJCt3EWKH2/fe63PXleaNMD
	0kRhb1lPraZNw6uoZN7tGo8aCNr4Fl/UzlMZslOoRs1xxeTZ4poqER1uPXKPMhVfY3zSw5obPWY8G
	hwSP8hUaOBa3P9hAjrz84CW9Lcf+eSvvEOhy2VFROuKcXewi1TgWF1S48klcEJ2rqnH0vw9KqiTg2
	NX4R+Ib1dkqczYoq6gX0iyO7+/o9IcCuinX1iEZUMQJfnpctyUlDGzQi0uKejvWIHLY8mBdcqu4Pi
	JDUgw8yg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uqlvU-0000000AYV2-48O5;
	Tue, 26 Aug 2025 05:08:56 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uqlvR-0000000AYUL-2TKv
	for barebox@lists.infradead.org;
	Tue, 26 Aug 2025 05:08:54 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uqlvI-0000bs-Cv; Tue, 26 Aug 2025 07:08:44 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uqlvI-002AzP-0i;
	Tue, 26 Aug 2025 07:08:44 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uqlvI-0000000CiCG-0gVS;
	Tue, 26 Aug 2025 07:08:44 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
Cc: Ahmad Fatoum <afa@pengutronix.de>
In-Reply-To: <20250825131806.2050398-1-s.hauer@pengutronix.de>
References: <20250825131806.2050398-1-s.hauer@pengutronix.de>
Message-Id: <175618492415.3029807.18017094937758889706.b4-ty@pengutronix.de>
Date: Tue, 26 Aug 2025 07:08:44 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250825_220853_634527_43CCBEC6 
X-CRM114-Status: UNSURE (   8.86  )
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
Subject: Re: [PATCH] kbuild: move PBL_CODE_SIZE_ out of rule_pblb
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 25 Aug 2025 15:18:06 +0200, Sascha Hauer wrote:
> Before Commit 21613ae35f ("kbuild: images/Makefile: fix broken if_changed usage")
> setting of PBL_CODE_SIZE_$*, PBL_MEMORY_SIZE_$* and PBL_IMAGE_SIZE_$*
> were part of the
> 
> $(obj)/%.pblb: $(obj)/%.pbl FORCE
> 
> rule which was always executed due to the FORCE. Beginning with this
> commit setting of these variables are part of rule_pblb which is only
> executed when the pblb file is (re-)generated. In case the pblb is still
> up to date this results in the variables being unset which then fails
> in later stages.
> 
> [...]

Applied, thanks!

[1/1] kbuild: move PBL_CODE_SIZE_ out of rule_pblb
      https://git.pengutronix.de/cgit/barebox/commit/?id=60e1a583fd11 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



