Delivery-date: Wed, 12 Mar 2025 11:23:16 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tsJF7-00D5A6-0s
	for lore@lore.pengutronix.de;
	Wed, 12 Mar 2025 11:23:16 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tsJF6-00086g-0p
	for lore@pengutronix.de; Wed, 12 Mar 2025 11:23:16 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wQIegUj7Zx1H9/9Y32lKpcEhXu/mTqCN77p58a5gvTw=; b=L8T6aHr066d7vANokBpIxvK7Qz
	whniNNSLiVoRr/ZebcLBWrGFZrp3DLqumNUWc4Jt8Grcbr1kjUywfR5c5wI1hTa8ox5Ra2FGgIqfw
	E9lhW7af6o/b5W6GhIRHFl2ChRS828PvQjGBxfm6VGQG/UEodSz8q/SU9RXKoOY7vE8UCbsocR7ci
	ThbDR/y837ywmuRaZAE31ajVXmx/QXNrmZtA0raY3GJ/buyYIi+c5OrwTXO4Fb1tTE4yH06yGqYFH
	TbHJ4PzQR83dR6PtCDoJzwRqke/Ro7XqUk2a+38nX0PiohbRxZvJgSUAt1EJw3OFD9y90BDX6Gr/E
	io/QJsoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tsJES-000000086I1-3xRY;
	Wed, 12 Mar 2025 10:22:36 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tsJEP-000000086H5-0TIi
	for barebox@lists.infradead.org;
	Wed, 12 Mar 2025 10:22:34 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tsJEM-0007yc-Go; Wed, 12 Mar 2025 11:22:30 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tsJEM-005LDy-13;
	Wed, 12 Mar 2025 11:22:30 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tsJEM-003kff-0q;
	Wed, 12 Mar 2025 11:22:30 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20250311-am625-secure-v2-0-3cbbfa092346@pengutronix.de>
References: <20250311-am625-secure-v2-0-3cbbfa092346@pengutronix.de>
Message-Id: <174177495026.893398.8971903707546072946.b4-ty@pengutronix.de>
Date: Wed, 12 Mar 2025 11:22:30 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250312_032233_151612_E1707B29 
X-CRM114-Status: GOOD (  11.80  )
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
Subject: Re: [PATCH v2 00/14] am625: support secure loading of full barebox
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 11 Mar 2025 13:25:13 +0100, Sascha Hauer wrote:
> On K3 SoCs only a small barebox is loaded by the ROM into SRAM. This
> barebox then loads the full barebox from SD/eMMC or USB DFU. In a secure
> boot environment the full barebox must be authenticated. This series
> implements two ways for accomplishing this.
> 
> First way is to utilize the ROM API to authenticate images. The other
> way is to compile a secure hash into the first stage binary and check
> if the full barebox image matches the hash. Using the ROM API means
> different first stage and second stage images can be combined whereas
> hashing binds specific builds together avoiding mix and match attacks.
> 
> [...]

Applied, thanks!

[01/14] firmware: always generate sha256sum
        https://git.pengutronix.de/cgit/barebox/commit/?id=4fa921792285 (link may not be stable)
[02/14] firmware: add function to verify next image
        https://git.pengutronix.de/cgit/barebox/commit/?id=8c711a697ce5 (link may not be stable)
[03/14] ARM: k3: r5: drop loading of separate binaries
        https://git.pengutronix.de/cgit/barebox/commit/?id=1bc97b7995e1 (link may not be stable)
[04/14] ARM: k3: r5: add proper error handling
        https://git.pengutronix.de/cgit/barebox/commit/?id=f382d0e799bc (link may not be stable)
[05/14] fip: rework fip_image_open()
        https://git.pengutronix.de/cgit/barebox/commit/?id=a7e5e42a2dc5 (link may not be stable)
[06/14] fip: fix wrong function call
        https://git.pengutronix.de/cgit/barebox/commit/?id=14308afd22ac (link may not be stable)
[07/14] fip: add function to calculate a sha256 over FIP image
        https://git.pengutronix.de/cgit/barebox/commit/?id=096dc30fcfd4 (link may not be stable)
[08/14] ARM: am625: support hash verification of full barebox
        https://git.pengutronix.de/cgit/barebox/commit/?id=0e0b9a236be4 (link may not be stable)
[09/14] ARM: k3: add support for authenticating images against the ROM API
        https://git.pengutronix.de/cgit/barebox/commit/?id=c2bde368cf28 (link may not be stable)
[10/14] ARM: k3: r5: delete fip image when it can't be opened
        https://git.pengutronix.de/cgit/barebox/commit/?id=c2a3a4dbc2c5 (link may not be stable)
[11/14] ARM: k3: r5: Allow to authenticate next image by ROM API
        https://git.pengutronix.de/cgit/barebox/commit/?id=eddc4c708d5f (link may not be stable)
[12/14] scripts/k3img: remove temporary files
        https://git.pengutronix.de/cgit/barebox/commit/?id=2665beee87cf (link may not be stable)
[13/14] scripts: add k3sign
        https://git.pengutronix.de/cgit/barebox/commit/?id=f450ef453e88 (link may not be stable)
[14/14] ARM: k3: r5: select HAS_INSECURE_DEFAULTS when necessary
        https://git.pengutronix.de/cgit/barebox/commit/?id=d4444f3cb892 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



