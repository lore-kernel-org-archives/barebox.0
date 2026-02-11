Delivery-date: Wed, 11 Feb 2026 10:34:58 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vq6cb-000UC8-0z
	for lore@lore.pengutronix.de;
	Wed, 11 Feb 2026 10:34:58 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vq6cb-0001Lp-Jt
	for lore@pengutronix.de; Wed, 11 Feb 2026 10:34:58 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=LJcyY65Y5/gGmNeyOjPTHnzp0o1SxN7lFU5Hk8v1JOU=; b=16vfnWhMcs2Oxgrh4gNZKvly9Q
	QCQoHVJbd1qiwNMj1Y4/Xr3rirafMlX5ARane5ggAPRMSQyMQlRphtWGqqjLWLsdour36YTxgJdoK
	BQSdhuCFEbiV8ygyuvdy+nnHa/2/dKVPLltD+jBYnVSxzbzp7wjs+yFO6PM2TxtX0wc04iheOjEWK
	KurL1IPcR0GGo2cHKuRcgNdJ0/06uCvs19YinTj+iOzKy2ZezKjiC0EN7zxHSoh4KYR3MYkS5x7UX
	VRjctnxrohg+3E6B3InfxkDW4gqkMRjASuowU6c3HVW4d1WOEPzvfrYjljrEyZhrChZqUykSean3s
	/4rGebvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vq6cG-00000000RZz-0GT3;
	Wed, 11 Feb 2026 09:34:36 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vq6cD-00000000RYj-0QOX
	for barebox@lists.infradead.org;
	Wed, 11 Feb 2026 09:34:34 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vq6cB-0001Ae-IQ; Wed, 11 Feb 2026 10:34:31 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vq6cA-000Drj-07;
	Wed, 11 Feb 2026 10:34:31 +0100
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vq6cB-0000000EzOg-1MZs;
	Wed, 11 Feb 2026 10:34:31 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@barebox.org>
In-Reply-To: <20260209091513.3563412-1-a.fatoum@barebox.org>
References: <20260209091513.3563412-1-a.fatoum@barebox.org>
Message-Id: <177080247132.3572575.14628840377103753980.b4-ty@pengutronix.de>
Date: Wed, 11 Feb 2026 10:34:31 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260211_013433_144290_ABD70952 
X-CRM114-Status: UNSURE (   8.59  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 0/6] ppc: add QEMU ppce500 test in CI
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 09 Feb 2026 10:10:25 +0100, Ahmad Fatoum wrote:
> Add support for running barebox on the QEMU ppce500 virtual machine.
> This enables automated testing of PowerPC e500 support in CI.
> 
> The PowerPC support for this virtual machine has been AI generated.
> I have no interest in learning the PowerPC ISA, but it's beneficial
> to remaining users for CI to be able to catch some runtime regressions
> as we only did compile tests so far.
> 
> [...]

Applied, thanks!

[1/6] include: array_size.h: make header self-contained
      https://git.pengutronix.de/cgit/barebox/commit/?id=e15799eb76e1 (link may not be stable)
[2/6] serial: ns16550: add "ns16550" compatible string
      https://git.pengutronix.de/cgit/barebox/commit/?id=330ebc95133f (link may not be stable)
[3/6] lib: stackprot: omit HAVE_STACKPROTECTOR for powerpc
      https://git.pengutronix.de/cgit/barebox/commit/?id=03c499b5733e (link may not be stable)
[4/6] gpio: mpc8xxx: allow build on MPC85xx platforms
      https://git.pengutronix.de/cgit/barebox/commit/?id=558b09065975 (link may not be stable)
[5/6] mach-mpc85xx: speed: add fsl_set_timebase_clock() override
      https://git.pengutronix.de/cgit/barebox/commit/?id=1bb0e5326eed (link may not be stable)
[6/6] powerpc: add QEMU ppce500 board support with CI test infrastructure
      https://git.pengutronix.de/cgit/barebox/commit/?id=91e209fa4e55 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



