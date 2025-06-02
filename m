Delivery-date: Mon, 02 Jun 2025 13:46:52 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uM3cy-002wqb-20
	for lore@lore.pengutronix.de;
	Mon, 02 Jun 2025 13:46:52 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uM3cy-0005Sm-26
	for lore@pengutronix.de; Mon, 02 Jun 2025 13:46:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=bDXY1RziOscBOK2GpoawbYXop3/PGs1uRu3odPAN1xY=; b=NnpnKWqpJfLwHNIKw1Xfu00dRn
	+qW9zr9upvRZNeQ7VLDkXpci1Q4qk6P3FGd0vydwoTKmToYtSEep+r/gZbqkC9T1tugT6DG/NxILL
	LT2i5yWoWH/6VoIy0nDdTXrbwvyDi/mxhVMRVSbmZnp+bZSE324aoDWGwTp6ip+Ud1PmCLI9+9jEn
	+c2LXbsIRQAM1WTckJ5dUptg2UqnBfixdUHzk4LHMKisO8zUAZH7+nYhxRcS7sFsSZY6xmV+N6IPJ
	zmYMaH0jwYVdIG3vkgW29NTpCh8oDhhSC9J36LfE3KaZz07x6TT+7mVaF0HudmMWVALz5apgSB35W
	HZxCfjgQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uM3cL-00000007IZK-2IC7;
	Mon, 02 Jun 2025 11:46:13 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uM3an-00000007IJF-1moi
	for barebox@lists.infradead.org;
	Mon, 02 Jun 2025 11:44:38 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uM3al-0004fe-So; Mon, 02 Jun 2025 13:44:35 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uM3al-001Ro5-2I;
	Mon, 02 Jun 2025 13:44:35 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uM3al-003qMR-20;
	Mon, 02 Jun 2025 13:44:35 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250528105046.3270397-1-a.fatoum@pengutronix.de>
References: <20250528105046.3270397-1-a.fatoum@pengutronix.de>
Message-Id: <174886467561.916222.4129729989727075220.b4-ty@pengutronix.de>
Date: Mon, 02 Jun 2025 13:44:35 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250602_044437_466896_C4C3F578 
X-CRM114-Status: UNSURE (   8.44  )
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
Subject: Re: [PATCH 00/10] ARM32: allow disabling ATAGS and DT fallback
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 28 May 2025 12:50:36 +0200, Ahmad Fatoum wrote:
> New platforms shouldn't use atags, but we compile the code always.
> 
> New platforms should use device tree, but there may be binding
> incompatibilities between barebox embedded device tree and device tree
> shipped with the kernel.
> 
> For that reason, this series introduces two config options:
> 
> [...]

Applied, thanks!

[01/10] arch: add new HAVE_ARCH_BOOTM_OFTREE symbol
        https://git.pengutronix.de/cgit/barebox/commit/?id=8d9ee7b7f071 (link may not be stable)
[02/10] bootm: enable CONFIG_BOOTM_OFTREE by default
        https://git.pengutronix.de/cgit/barebox/commit/?id=92f1cf5a15d8 (link may not be stable)
[03/10] ARM: lib32: disable ATAGS support by default
        https://git.pengutronix.de/cgit/barebox/commit/?id=3c1a4a3e48eb (link may not be stable)
[04/10] kvx: bootm: enforce existence of device tree
        https://git.pengutronix.de/cgit/barebox/commit/?id=d852b89dd3e5 (link may not be stable)
[05/10] bootm: booti: make device tree optional
        https://git.pengutronix.de/cgit/barebox/commit/?id=af328e58e1ef (link may not be stable)
[06/10] filetype: add new file type for 0-sized files
        https://git.pengutronix.de/cgit/barebox/commit/?id=dfec72495cd6 (link may not be stable)
[07/10] bootm: have bootm_get_devicetree return NULL if passed empty DT
        https://git.pengutronix.de/cgit/barebox/commit/?id=c92306031f60 (link may not be stable)
[08/10] bootm: make fallback to barebox internal tree optional
        https://git.pengutronix.de/cgit/barebox/commit/?id=3631f7ef6ed7 (link may not be stable)
[09/10] commands: oftree: add option to return device tree without fixups
        https://git.pengutronix.de/cgit/barebox/commit/?id=1341d7b872f0 (link may not be stable)
[10/10] of: drop undefined fdt_get_tree declaration
        https://git.pengutronix.de/cgit/barebox/commit/?id=444a9fdc05a6 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



