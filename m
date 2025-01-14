Delivery-date: Tue, 14 Jan 2025 09:32:58 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tXcM6-000wcZ-2f
	for lore@lore.pengutronix.de;
	Tue, 14 Jan 2025 09:32:58 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tXcM6-0005JG-5C
	for lore@pengutronix.de; Tue, 14 Jan 2025 09:32:58 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Twgyif7Eumhh6TLR+uFrB9TSIhdlCTu1o4eP1wV8guE=; b=ZzDwYisi4MxEXeoaTg9DjcBRUl
	yij6AuILtl+3z4ol9qYcCP5LFWmKDDP9idI6HbtVoS6LDz2lYBKfjJylF6twUZP58rLyIEU6sK9EK
	EvMQg9U/XyuDRXbFn4JzJcYGjZCTvFwC4Flx0MyAitx1zJDBnwmpkfi617GmMYW3pEec2OlmDcMCH
	XMb0gvVcod2ZywU4M338krt2bG6oYftIsYP/G84dNx0rEr8+kCz7b22rEnNgjlJSL8zfn1EnxxaKi
	Zzj+pXPOXf+qlk29vfZCD0Y9LD/1Ue2OdY9r4z5+Cba0XYBNq6VmoRL1M1Q8+YdGtZrzuTJbT0SlM
	Ghh/qvnQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tXcLe-00000007pdG-44Qz;
	Tue, 14 Jan 2025 08:32:30 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tXcLJ-00000007pbW-02ex
	for barebox@lists.infradead.org;
	Tue, 14 Jan 2025 08:32:10 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tXcLH-00054D-Ns; Tue, 14 Jan 2025 09:32:07 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tXcLH-000P15-08;
	Tue, 14 Jan 2025 09:32:07 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tXcLH-00CMEZ-1Z;
	Tue, 14 Jan 2025 09:32:07 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20250113-k3-r5-v3-0-065fcdcc28d3@pengutronix.de>
References: <20250113-k3-r5-v3-0-065fcdcc28d3@pengutronix.de>
Message-Id: <173684352748.2945344.16881117453295684592.b4-ty@pengutronix.de>
Date: Tue, 14 Jan 2025 09:32:07 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250114_003209_052917_5B5B7903 
X-CRM114-Status: UNSURE (   9.29  )
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
Subject: Re: [PATCH v3 00/23] ARM: K3: Add R5 boot support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 13 Jan 2025 12:26:47 +0100, Sascha Hauer wrote:
> So far we only supported the TI K3 SoCs booting 2nd stage after U-Boot.
> This series adds full boot support for K3 SoCs, or more specifically,
> the AM625 SoC.
> 
> 

Applied, thanks!

[01/23] ARM: add ARMv7R MPU support
        https://git.pengutronix.de/cgit/barebox/commit/?id=20a8958e0a67 (link may not be stable)
[02/23] lib/rationale: compile for pbl
        https://git.pengutronix.de/cgit/barebox/commit/?id=d68c949537f5 (link may not be stable)
[04/23] ARM: move ARM_CPU_PART_* defines to header
        https://git.pengutronix.de/cgit/barebox/commit/?id=c27b06e5d318 (link may not be stable)
[05/23] nommu_v7_vectors_init: disable for r5
        https://git.pengutronix.de/cgit/barebox/commit/?id=5ccc4e4a21ea (link may not be stable)
[06/23] clocksource: timer-ti-dm: add support for K3 SoCs
        https://git.pengutronix.de/cgit/barebox/commit/?id=2b390d5a649f (link may not be stable)
[07/23] ARM: K3: mount /boot even with env handling disabled
        https://git.pengutronix.de/cgit/barebox/commit/?id=2aae4a687287 (link may not be stable)
[08/23] clk: add K3 clk driver
        https://git.pengutronix.de/cgit/barebox/commit/?id=657d39593b2f (link may not be stable)
[09/23] pmdomain: add K3 driver
        https://git.pengutronix.de/cgit/barebox/commit/?id=9f1a0e6e3635 (link may not be stable)
[10/23] rproc: add K3 arm64 rproc driver
        https://git.pengutronix.de/cgit/barebox/commit/?id=61f81b932adf (link may not be stable)
[11/23] ARM: k3: add k3_debug_ll_init()
        https://git.pengutronix.de/cgit/barebox/commit/?id=bce0ba123e7c (link may not be stable)
[12/23] ARM: K3: use debug_ll code for regular PBL console
        https://git.pengutronix.de/cgit/barebox/commit/?id=90cfb1651e5f (link may not be stable)
[13/23] elf: use iomem regions as fallback when loading to non-sdram memory
        https://git.pengutronix.de/cgit/barebox/commit/?id=520eb1225c6b (link may not be stable)
[14/23] rproc: add K3 system_controller
        https://git.pengutronix.de/cgit/barebox/commit/?id=1bd00031e3c6 (link may not be stable)
[15/23] firmware: ti_sci: add function to get global handle
        https://git.pengutronix.de/cgit/barebox/commit/?id=6cbfc1370d28 (link may not be stable)
[16/23] ARM: k3: Add initial r5 support
        https://git.pengutronix.de/cgit/barebox/commit/?id=c6840f7a1a48 (link may not be stable)
[17/23] scripts: k3: add script to generate cfg files from yaml
        https://git.pengutronix.de/cgit/barebox/commit/?id=de445696adf0 (link may not be stable)
[18/23] ARM: k3: Add k3img tool
        https://git.pengutronix.de/cgit/barebox/commit/?id=cf9081dff9fb (link may not be stable)
[19/23] ARM: beagleplay: add Cortex-R5 boot support
        https://git.pengutronix.de/cgit/barebox/commit/?id=216fc9b4efaf (link may not be stable)
[20/23] Documentation: add build documentation for TI K3 SoCs
        https://git.pengutronix.de/cgit/barebox/commit/?id=32a8e25abea8 (link may not be stable)
[21/23] ARM: am625: disable secondary watchdogs
        https://git.pengutronix.de/cgit/barebox/commit/?id=ded22be60797 (link may not be stable)
[22/23] ARM: k3: Add DRAM size detection
        https://git.pengutronix.de/cgit/barebox/commit/?id=322380802713 (link may not be stable)
[23/23] ARM: k3: am625-sk board support
        https://git.pengutronix.de/cgit/barebox/commit/?id=be8f0946ea1e (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



