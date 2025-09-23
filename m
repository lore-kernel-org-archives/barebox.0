Delivery-date: Tue, 23 Sep 2025 10:08:48 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v0y4u-0007ph-18
	for lore@lore.pengutronix.de;
	Tue, 23 Sep 2025 10:08:48 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v0y4t-0007aB-Nu
	for lore@pengutronix.de; Tue, 23 Sep 2025 10:08:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tbviOKJGqaNuRg6kdUUR6eUk06D5eUBOQQlAMv00Gck=; b=zM2PKMkNQGmPL7Duq3nuIaQq6B
	E/Rx9+piAZ1N9c2U0OjiY9fGZzdRMvIGszlxuC+1Etyb4NHcCk+cfpjafC76lhFiytHWOeehuZGEn
	69eeCBAiQmI8nalEbdX68cYgD/4nCR9pGoYuWj8N5XFAIPsT9LIwoJbq9PcVqHRM7c3gm3X2rJVr8
	hN4/WHe0HJqzjbAnExn4lSGWBEuk6b9CZTjGN+HFbhu+kPCeeqr10y3rc2j/+HAgrhlHuvEErERI4
	oS9Dcn5UbLm+SwytEx6X8lb2CjLSslfxP/pxXItTC31Uzsc1XGWQbsbdIcOa9Md96C/eH0PiCZtPB
	YEm3RNjQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v0y4T-0000000ClhY-0S3L;
	Tue, 23 Sep 2025 08:08:21 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v0y4Q-0000000Clgu-0uTN
	for barebox@lists.infradead.org;
	Tue, 23 Sep 2025 08:08:19 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1v0y4G-0007Sr-NJ; Tue, 23 Sep 2025 10:08:08 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1v0y4G-0003WC-1f;
	Tue, 23 Sep 2025 10:08:08 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1v0y4G-0000000CAD8-1l2L;
	Tue, 23 Sep 2025 10:08:08 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250814130702.4039241-1-a.fatoum@pengutronix.de>
References: <20250814130702.4039241-1-a.fatoum@pengutronix.de>
Message-Id: <175861488841.2898830.1909397651152731956.b4-ty@pengutronix.de>
Date: Tue, 23 Sep 2025 10:08:08 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250923_010818_276665_71C0F2EC 
X-CRM114-Status: UNSURE (   9.41  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH RFC 00/17] Add security policy support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 14 Aug 2025 15:06:45 +0200, Ahmad Fatoum wrote:
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

[01/1] fixup! docs: security-policies: add documentation
       (no commit info)
[01/17] kconfig: allow setting CONFIG_ from the outside
        https://git.pengutronix.de/cgit/barebox/commit/?id=9a4281052b8f (link may not be stable)
[03/17] kbuild: implement loopable loop_cmd
        https://git.pengutronix.de/cgit/barebox/commit/?id=daaa3560414e (link may not be stable)
[04/17] Add security policy support
        https://git.pengutronix.de/cgit/barebox/commit/?id=03a1030ea708 (link may not be stable)
[05/17] kbuild: allow security config use without source tree modification
        https://git.pengutronix.de/cgit/barebox/commit/?id=74b1901d06f2 (link may not be stable)
[06/17] defaultenv: update PS1 according to security policy
        https://git.pengutronix.de/cgit/barebox/commit/?id=98e1b8ef80b9 (link may not be stable)
[07/17] security: policy: support externally provided configs
        https://git.pengutronix.de/cgit/barebox/commit/?id=d94aa6a99dfa (link may not be stable)
[08/17] commands: implement sconfig command
        https://git.pengutronix.de/cgit/barebox/commit/?id=56de5ea4fe40 (link may not be stable)
[09/17] docs: security-policies: add documentation
        https://git.pengutronix.de/cgit/barebox/commit/?id=9d8f7062b581 (link may not be stable)
[10/17] commands: go: add security config option
        https://git.pengutronix.de/cgit/barebox/commit/?id=58401df16031 (link may not be stable)
[11/17] console: ratp: add security config option
        https://git.pengutronix.de/cgit/barebox/commit/?id=d1f12e4aaaff (link may not be stable)
[12/17] bootm: support calling bootm_optional_signed_images at any time
        https://git.pengutronix.de/cgit/barebox/commit/?id=48f1c4c70944 (link may not be stable)
[13/17] bootm: make unsigned image support runtime configurable
        https://git.pengutronix.de/cgit/barebox/commit/?id=9dbde2ceea58 (link may not be stable)
[14/17] ARM: configs: add virt32_secure_defconfig
        https://git.pengutronix.de/cgit/barebox/commit/?id=cc285c8c0ab4 (link may not be stable)
[15/17] boards: qemu-virt: add security policies
        https://git.pengutronix.de/cgit/barebox/commit/?id=332277872144 (link may not be stable)
[16/17] boards: qemu-virt: allow setting policy from command line
        https://git.pengutronix.de/cgit/barebox/commit/?id=cea49ae7bb88 (link may not be stable)
[17/17] test: py: add basic security policy test
        https://git.pengutronix.de/cgit/barebox/commit/?id=b3773336f564 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



