Delivery-date: Mon, 02 Jun 2025 12:29:31 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uM2Q7-002vVV-1P
	for lore@lore.pengutronix.de;
	Mon, 02 Jun 2025 12:29:31 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uM2Q6-0006En-Rj
	for lore@pengutronix.de; Mon, 02 Jun 2025 12:29:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ELUu1nH0vtJazrMR/IFjoDIPDP2Gz+Z933LtG0oo0+Q=; b=DYcku1CAnJhoGEqU75FN8R8baD
	owWeBEkN5zqruQ22YO+hvVS0z7Hr38rzU3vkRjQbhBbhhNB0nlrccz3Rsw0z339dyqyDdXeDL+JAX
	26XtpziVbINDafgMn16YX1+EFWFqFPv0Ug1fpOZLoeoy8I3I7x+SxtMbFROk1XmM2TjvqXuVCpyDR
	zez3AzyS0Z3xfLUIJ4EcGdianE4PcKuEgFBmFZ5qj0j6Gel8wvwmnwzTWX5CwP4x8aeAtWKqPxjLF
	6gqOFWChVGCvULTqlDt6HYgjaRjHsxhMyfvA/5EAmZpZuSy4nQYkmzi9lQKyEG1mZ2THnPX9qouUV
	QUSByoxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uM2Pg-00000007Biw-1PQk;
	Mon, 02 Jun 2025 10:29:04 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uM2Pc-00000007BiH-3daZ
	for barebox@lists.infradead.org;
	Mon, 02 Jun 2025 10:29:02 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uM2Pb-0005yS-K4; Mon, 02 Jun 2025 12:28:59 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uM2Pb-001RDE-1N;
	Mon, 02 Jun 2025 12:28:59 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uM2Pb-003iNc-1A;
	Mon, 02 Jun 2025 12:28:59 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Marco Felsch <m.felsch@pengutronix.de>, 
 Michael Tretter <m.tretter@pengutronix.de>
In-Reply-To: <20250528-rk3588-optee-v2-0-63070238dd13@pengutronix.de>
References: <20250528-rk3588-optee-v2-0-63070238dd13@pengutronix.de>
Message-Id: <174886013936.885537.2378666418838842702.b4-ty@pengutronix.de>
Date: Mon, 02 Jun 2025 12:28:59 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250602_032900_929196_1EFA05A1 
X-CRM114-Status: GOOD (  10.92  )
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
Subject: Re: [PATCH v2 0/9] ARM: rockchip: fix dynamic shared memory in
 OP-TEE
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 28 May 2025 16:11:18 +0200, Michael Tretter wrote:
> On rk3588, OP-TEE uses the device tree to detect the available SDRAM
> that should be used for dynamic shared memory. Since the amount of SDRAM
> is detected during boot, the rk3588 device tree doesn't contain memory
> nodes. Therefore, barebox has to detect the memory and add memory nodes
> the device tree in the PBL before passing the device tree to the TF-A,
> which passes it on to OP-TEE.
> 
> [...]

Applied, thanks!

[1/9] ARM: rockchip: fix formatting
      https://git.pengutronix.de/cgit/barebox/commit/?id=8b893a20b81b (link may not be stable)
[2/9] ARM: rockchip: dmc: use RK3588_INT_REG_START for rk3588
      https://git.pengutronix.de/cgit/barebox/commit/?id=0cfee64df22b (link may not be stable)
[3/9] lib: fdt: add fdt_addresses
      https://git.pengutronix.de/cgit/barebox/commit/?id=5835692f76ed (link may not be stable)
[4/9] PBL: fdt: refactor helper for reading nr of cells
      https://git.pengutronix.de/cgit/barebox/commit/?id=72ad9ccb1a4a (link may not be stable)
[5/9] PBL: fdt: add fdt_fixup_mem to fixup memory nodes
      https://git.pengutronix.de/cgit/barebox/commit/?id=ae175d4748b1 (link may not be stable)
[6/9] ARM: add CONFIG_SCRATCH_SIZE
      https://git.pengutronix.de/cgit/barebox/commit/?id=6edab0c407b3 (link may not be stable)
[7/9] ARM: rockchip: dmc: add rk3588_ram_sizes to get full ram size
      https://git.pengutronix.de/cgit/barebox/commit/?id=751773480f3a (link may not be stable)
[8/9] ARM: rockchip: pass device tree to TF-A
      https://git.pengutronix.de/cgit/barebox/commit/?id=8dfab4e2aafa (link may not be stable)
[9/9] ARM: rockchip: fixup memory in device tree for TF-A
      https://git.pengutronix.de/cgit/barebox/commit/?id=777fdb5300a1 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



