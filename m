Delivery-date: Tue, 15 Oct 2024 09:03:49 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0bav-004Z8y-2M
	for lore@lore.pengutronix.de;
	Tue, 15 Oct 2024 09:03:49 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0bav-0002NM-3h
	for lore@pengutronix.de; Tue, 15 Oct 2024 09:03:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=w2qrMzsbztQ7mZmr3v2bMev7YZbPGmIwWU4UKNafzB4=; b=Fl/xfKBfMdignNkeopq4K6Qv22
	ij47cTyhtjfEjimuGfPkO0eeIE5j4vgBr5LynaVyzCtmlineLsA2mE0l0YsFXFoHMJLMxiV8F9IH1
	QNAwiVWBKfRYNDkyEnCvmvW4Vd44CBascjei1KwtHmN+qJd8ten2AF8KZTOgFdDP/t0WjaDap5fp3
	BPq2kj2zwZmAnZZfF81BzIWr6jLghvAteps8t/Ky7mvVinodQn/vs9uq8gDEyIbPMFBmp1+AMXkhA
	+vugx3Ekd2WYetFFTDLKox4y8VNW+OlXiD8rStzTIZ4DpoaQmEKKshorF5YGjZvK37pshLQEGO2y3
	58Rp7v5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0baM-00000007IRw-2M7R;
	Tue, 15 Oct 2024 07:03:14 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0bXB-00000007I0B-1FZ8
	for barebox@lists.infradead.org;
	Tue, 15 Oct 2024 06:59:58 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t0bX9-00020N-Np; Tue, 15 Oct 2024 08:59:55 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t0bX9-001yFX-Av; Tue, 15 Oct 2024 08:59:55 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t0bX9-004kUL-0v;
	Tue, 15 Oct 2024 08:59:55 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20241014113912.2826190-1-a.fatoum@pengutronix.de>
References: <20241014113912.2826190-1-a.fatoum@pengutronix.de>
Message-Id: <172897559528.1131484.13687176546465850836.b4-ty@pengutronix.de>
Date: Tue, 15 Oct 2024 08:59:55 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241014_235957_374079_E2493592 
X-CRM114-Status: UNSURE (   9.44  )
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
Subject: Re: [PATCH master 00/13] Misc compile test fixes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 14 Oct 2024 13:38:59 +0200, Ahmad Fatoum wrote:
> I compile tested with ARCH=sandbox make allyesconfig and these are fixes
> for the errors I ran into.
> 
> Given that a number of them may also affect other architectures and that
> the changes are quite limited in scope, I suggest this is taken directly
> to master.
> 
> [...]

Applied, thanks!

[01/13] clk: add stub definition for of_clk_get_from_provider
        https://git.pengutronix.de/cgit/barebox/commit/?id=2b0b0b593368 (link may not be stable)
[02/13] tee: add missing header for BIT macro definition
        https://git.pengutronix.de/cgit/barebox/commit/?id=0d2f3e5c480d (link may not be stable)
[03/13] tee: shm: include missing header for basprintf
        https://git.pengutronix.de/cgit/barebox/commit/?id=46ea52de7c62 (link may not be stable)
[04/13] net: dsa: realtek: fix CONFIG_SANDBOX build
        https://git.pengutronix.de/cgit/barebox/commit/?id=ace93553b086 (link may not be stable)
[05/13] pmdomain: imx8mp-blk-ctrl: add missing definition of ARRAY_SIZE
        https://git.pengutronix.de/cgit/barebox/commit/?id=2f5ce38ea80f (link may not be stable)
[06/13] PWM: rockchip: fix compile testing with CONFIG_SANDBOX
        https://git.pengutronix.de/cgit/barebox/commit/?id=20585afc9f17 (link may not be stable)
[07/13] watchdog: imxulp: drop unused include of asm/system.h
        https://git.pengutronix.de/cgit/barebox/commit/?id=b9dd2b801997 (link may not be stable)
[08/13] include: import uapi/linux/kernel.h header from Linux
        https://git.pengutronix.de/cgit/barebox/commit/?id=9012d0070ba0 (link may not be stable)
[09/13] usb: typec: fix compile test with CONFIG_SANDBOX
        https://git.pengutronix.de/cgit/barebox/commit/?id=d9fa8b26b60c (link may not be stable)
[10/13] bitops: fix missing defintion for DIV_ROUND_UP definitions
        https://git.pengutronix.de/cgit/barebox/commit/?id=bab7529d92a0 (link may not be stable)
[11/13] mci: am654-sdhci: drop dummy redefinition of MMC_CAP2_HS200/400
        https://git.pengutronix.de/cgit/barebox/commit/?id=c01345595682 (link may not be stable)
[12/13] hw_random: fix compilation with 64-bit size_t
        https://git.pengutronix.de/cgit/barebox/commit/?id=55a682298bee (link may not be stable)
[13/13] optee: make OP-TEE OF fixup ARM-specific
        https://git.pengutronix.de/cgit/barebox/commit/?id=56535d9cb0fc (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



