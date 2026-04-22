Delivery-date: Wed, 22 Apr 2026 10:02:23 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wFSXP-00F1Uy-0S
	for lore@lore.pengutronix.de;
	Wed, 22 Apr 2026 10:02:23 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wFSXL-0003de-Bd
	for lore@pengutronix.de; Wed, 22 Apr 2026 10:02:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+WV29H17m/8X4JkTznX+UNh+5xDBPrg7DpGPR191xpY=; b=0PtXMyD1RCMzsPtFQ92ZZ9520q
	cxhTda2Bld1ZVHX6AXTmF2YzAXasWy6zzGNsBEUrTmaeAijsHkTaV2auMzdBOJgeZshiZ7FRhEN0T
	4bgzG/E9A4HtCT154WLf27QfjPm5/7KqpRJncVFx/6/sMlNFCmBxkIrreQ0CKHaQZjmwWBCoUSl4j
	9LSgTjDiet5jncZpQPREhQn7iXv+XWCuVCQc18kxP2ypG1wwQkNmBTXUhTMdm/lxJarpZC0a73crx
	K/VPfkYBs59vaNb8MyGmySMIDqSUAKjl2EMfA0UcjWrGreehsV7yjb2iPazwqQluweCcOUjZ2HHoV
	9YzHGE9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wFSWd-00000009kbh-4BUi;
	Wed, 22 Apr 2026 08:01:35 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wFSWZ-00000009kbM-1Ido
	for barebox@lists.infradead.org;
	Wed, 22 Apr 2026 08:01:35 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wFSWW-0003Ik-7y; Wed, 22 Apr 2026 10:01:28 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wFSWV-006dCy-2Q;
	Wed, 22 Apr 2026 10:01:27 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wFSWV-0000000ALvi-2t3x;
	Wed, 22 Apr 2026 10:01:27 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@barebox.org>
In-Reply-To: <20260413074522.1410710-1-a.fatoum@barebox.org>
References: <20260413074522.1410710-1-a.fatoum@barebox.org>
Message-Id: <177684488768.2467426.16407173046718177540.b4-ty@pengutronix.de>
Date: Wed, 22 Apr 2026 10:01:27 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260422_010131_377218_E63AAE38 
X-CRM114-Status: UNSURE (   6.23  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 0/7] test: Add framebuffer test
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 13 Apr 2026 09:44:43 +0200, Ahmad Fatoum wrote:
> QEMU allows taking screenshots of screen. Make use of this to enable
> doing some rudimentary graphic tests.
> 
> Ahmad Fatoum (7):
>   ARM: multi_v8_defconfig: enable QEMU ramfb driver
>   test: enable VirtIO keyboard
>   commands: fbtest: add flush for single pattern
>   test: conftest: don't call .startswith on int
>   test: conftest: set -display none when non-interactive
>   test: conftest: add qemu feature
>   test: add framebuffer screenshot testing via QMP screendump
> 
> [...]

Applied, thanks!

[1/7] ARM: multi_v8_defconfig: enable QEMU ramfb driver
      https://git.pengutronix.de/cgit/barebox/commit/?id=1e1b3b66677a (link may not be stable)
[2/7] test: enable VirtIO keyboard
      https://git.pengutronix.de/cgit/barebox/commit/?id=50c2aabc574b (link may not be stable)
[3/7] commands: fbtest: add flush for single pattern
      https://git.pengutronix.de/cgit/barebox/commit/?id=af2a6133e535 (link may not be stable)
[4/7] test: conftest: don't call .startswith on int
      https://git.pengutronix.de/cgit/barebox/commit/?id=80554888f677 (link may not be stable)
[5/7] test: conftest: set -display none when non-interactive
      https://git.pengutronix.de/cgit/barebox/commit/?id=74693d62342f (link may not be stable)
[6/7] test: conftest: add qemu feature
      https://git.pengutronix.de/cgit/barebox/commit/?id=af5b226aa085 (link may not be stable)
[7/7] test: add framebuffer screenshot testing via QMP screendump
      https://git.pengutronix.de/cgit/barebox/commit/?id=3fb451e0110a (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



