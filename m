Delivery-date: Tue, 23 Sep 2025 10:08:50 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v0y4w-0007q2-2C
	for lore@lore.pengutronix.de;
	Tue, 23 Sep 2025 10:08:50 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v0y4w-0007bA-0T
	for lore@pengutronix.de; Tue, 23 Sep 2025 10:08:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=roL2uoswh+Li1oYApHLLWx4EdXgQrLiHDAeGO0Zpk4c=; b=V5y6aj6WxfRSrnwM8lexSU9qgx
	+v4txrUTEjq1PUomfP8ihc4XRMKGCAuwf+kDdk7Or2lpsm3gfSUSaOae9JmTYwwppaXKWIG2a4WLw
	ffZa6mqj/FCAwrUExjvnj4lR8Hl3BiS9RRiOQCI6EylsUrNhaF5QyMWzReXXOrN7FM+gdg2Cp1mqf
	gqiJgivQlPSDMJz+Fet5ZuzmmvY+X+m/rqg0WgW/F2M1yVjDaG5SeqvTKKW/FoK2cLuqSDLO/aGS9
	M+9cYfhT8Nx2dc9yLHPtnqnjw7vzl93BrH9Cnf5z6SeXk5APHLJ+im2xx6EXqiyH5AGo4Fb2U42eM
	oKQG1E1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v0y4M-0000000Clgf-2zoM;
	Tue, 23 Sep 2025 08:08:14 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v0y4J-0000000ClgI-34BY
	for barebox@lists.infradead.org;
	Tue, 23 Sep 2025 08:08:13 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1v0y4G-0007Ss-NC; Tue, 23 Sep 2025 10:08:08 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1v0y4G-0003WD-1h;
	Tue, 23 Sep 2025 10:08:08 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1v0y4G-0000000CAD8-1rH3;
	Tue, 23 Sep 2025 10:08:08 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
Cc: Ahmad Fatoum <a.fatoum@barebox.org>, 
 Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250917-security-policies-v2-0-f30769a3ff51@pengutronix.de>
References: <20250917-security-policies-v2-0-f30769a3ff51@pengutronix.de>
Message-Id: <175861488843.2898830.2415612214704333066.b4-ty@pengutronix.de>
Date: Tue, 23 Sep 2025 10:08:08 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250923_010811_776835_7C560EFE 
X-CRM114-Status: GOOD (  10.35  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 00/24] Add security policy support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 17 Sep 2025 15:53:20 +0200, Sascha Hauer wrote:
> Security policies are a mechanism for barebox to prevent, when so
> desired, security relevant code from being executed.
> 
> Security policies are controlled via a second Kconfig menu structure
> (called Sconfig) which collects security relevant options.
> 
> While the normal Kconfig menu structure is about feature support
> enabled at compile time, a security policy determines whether a
> feature is allowed or prohibited at runtime with an explicit focus
> on security.
> 
> [...]

Applied, thanks!

[01/24] kconfig: allow setting CONFIG_ from the outside
        https://git.pengutronix.de/cgit/barebox/commit/?id=9a4281052b8f (link may not be stable)
[02/24] scripts: include scripts/include for all host tools
        https://git.pengutronix.de/cgit/barebox/commit/?id=b1dd33f59373 (link may not be stable)
[03/24] kbuild: implement loopable loop_cmd
        https://git.pengutronix.de/cgit/barebox/commit/?id=daaa3560414e (link may not be stable)
[04/24] Add security policy support
        https://git.pengutronix.de/cgit/barebox/commit/?id=03a1030ea708 (link may not be stable)
[05/24] kbuild: allow security config use without source tree modification
        https://git.pengutronix.de/cgit/barebox/commit/?id=74b1901d06f2 (link may not be stable)
[06/24] defaultenv: update PS1 according to security policy
        https://git.pengutronix.de/cgit/barebox/commit/?id=98e1b8ef80b9 (link may not be stable)
[07/24] security: policy: support externally provided configs
        https://git.pengutronix.de/cgit/barebox/commit/?id=d94aa6a99dfa (link may not be stable)
[08/24] commands: implement sconfig command
        https://git.pengutronix.de/cgit/barebox/commit/?id=56de5ea4fe40 (link may not be stable)
[09/24] docs: security-policies: add documentation
        https://git.pengutronix.de/cgit/barebox/commit/?id=9d8f7062b581 (link may not be stable)
[10/24] commands: go: add security config option
        https://git.pengutronix.de/cgit/barebox/commit/?id=58401df16031 (link may not be stable)
[11/24] console: ratp: add security config option
        https://git.pengutronix.de/cgit/barebox/commit/?id=d1f12e4aaaff (link may not be stable)
[12/24] bootm: support calling bootm_optional_signed_images at any time
        https://git.pengutronix.de/cgit/barebox/commit/?id=48f1c4c70944 (link may not be stable)
[13/24] bootm: make unsigned image support runtime configurable
        https://git.pengutronix.de/cgit/barebox/commit/?id=9dbde2ceea58 (link may not be stable)
[14/24] ARM: configs: add virt32_secure_defconfig
        https://git.pengutronix.de/cgit/barebox/commit/?id=cc285c8c0ab4 (link may not be stable)
[15/24] boards: qemu-virt: add security policies
        https://git.pengutronix.de/cgit/barebox/commit/?id=332277872144 (link may not be stable)
[16/24] boards: qemu-virt: allow setting policy from command line
        https://git.pengutronix.de/cgit/barebox/commit/?id=cea49ae7bb88 (link may not be stable)
[17/24] test: py: add basic security policy test
        https://git.pengutronix.de/cgit/barebox/commit/?id=b3773336f564 (link may not be stable)
[18/24] usbserial: add inline wrappers
        https://git.pengutronix.de/cgit/barebox/commit/?id=4ee3cb57d9d9 (link may not be stable)
[19/24] security: usbgadget: add usbgadget security policy
        https://git.pengutronix.de/cgit/barebox/commit/?id=0a14e84181ea (link may not be stable)
[20/24] security: fastboot: add security policy for fastboot oem
        https://git.pengutronix.de/cgit/barebox/commit/?id=816b93d4bff7 (link may not be stable)
[21/24] security: shell: add policy for executing the shell
        https://git.pengutronix.de/cgit/barebox/commit/?id=c3dede9a094a (link may not be stable)
[22/24] security: add security policy for loading barebox environment
        https://git.pengutronix.de/cgit/barebox/commit/?id=0460dcb1b4a5 (link may not be stable)
[23/24] security: add filesystem security policies
        https://git.pengutronix.de/cgit/barebox/commit/?id=7db9682703cd (link may not be stable)
[24/24] security: console: add security policy for console input
        https://git.pengutronix.de/cgit/barebox/commit/?id=1d03e88d966d (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



