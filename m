Delivery-date: Tue, 21 May 2024 08:20:33 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s9IrR-00Bnix-0w
	for lore@lore.pengutronix.de;
	Tue, 21 May 2024 08:20:33 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s9IrQ-0005yn-M3
	for lore@pengutronix.de; Tue, 21 May 2024 08:20:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=X/ZRQy1IFR6FwApFSNtX8UB9F4wsKFIxMinCv8B0Lsc=; b=CowqEFZv/2X/zAQGqz5OEwBKsl
	jQ6Wl+CRK1ixSxCawrT5+nwx2vJjKCB7SmQkRi1QeNfQAEg08cEplYZYOL8wU+b5Wpe6bDe9/54Hk
	p4wBiyc/UvnKfipvRHBD1XMrKkXjwyDHnNTNB5HbMVYi4j31sEp9jLFkji5hpWaP/ert/Rt2BdzIo
	dKkBSgpXuUobP2ulysdDOuIIgJ8ozPiWEwzvISkzSbxYbyzy61bBuE2U4fSBLG3V1cbOr60eyg+4x
	Y1qXlYGE42sF6GtV4ssAK/mPqQherASODVZze2HvRKJ8B/TGlcH3PwqpqFdJoZWoemGIVg6rqMkIt
	FGLaDHtg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s9Ir2-0000000GSiB-0UTZ;
	Tue, 21 May 2024 06:20:08 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s9Iqy-0000000GShk-43iu
	for barebox@lists.infradead.org;
	Tue, 21 May 2024 06:20:06 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s9Iqx-0005r7-IK; Tue, 21 May 2024 08:20:03 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s9Iqx-002Lsf-5j; Tue, 21 May 2024 08:20:03 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s9Iqx-005zos-0L;
	Tue, 21 May 2024 08:20:03 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240517132656.3151273-1-a.fatoum@pengutronix.de>
References: <20240517132656.3151273-1-a.fatoum@pengutronix.de>
Message-Id: <171627240310.1429225.4310461180324090149.b4-ty@pengutronix.de>
Date: Tue, 21 May 2024 08:20:03 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240520_232005_044750_0F21DD8E 
X-CRM114-Status: GOOD (  11.59  )
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
Subject: Re: [PATCH 0/8] kconfig: cut down on duplication with merged
 defconfigs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 17 May 2024 15:26:48 +0200, Ahmad Fatoum wrote:
> We currently use scripts/kconfig/merge_config.sh only in MAKEALL.
> Linux has been using it inside Kbuild as well to derive new defconfigs
> from the existing ones that differ only by a few options, e.g. to enable
> virtualization or to switch endianness.
> 
> This is useful for us in barebox as well to cut down on the number of
> configs and to avoid bitrot in the less used ones, e.g. a lot of AT91
> configs can probably be replaced with two lines in mach-at91/Makefile
> each this way and e.g. x86 defconfig could have a virtio.defconfig for
> use with Qemu.
> 
> [...]

Applied, thanks!

[1/8] test: move common config fragments into common/boards/configs
      https://git.pengutronix.de/cgit/barebox/commit/?id=2f186d23e1d3 (link may not be stable)
[2/8] kconfig: merge_config.sh: sync with Linux v6.9
      https://git.pengutronix.de/cgit/barebox/commit/?id=0097b2cd7b51 (link may not be stable)
[3/8] kbuild: add support for merged defconfigs
      https://git.pengutronix.de/cgit/barebox/commit/?id=520af236cb7c (link may not be stable)
[4/8] MIPS: make use of merged defconfigs
      https://git.pengutronix.de/cgit/barebox/commit/?id=fb1007c0343a (link may not be stable)
[5/8] sandbox: stdio: fix ctrlc link error when CONFIG_CONSOLE_NONE=y
      https://git.pengutronix.de/cgit/barebox/commit/?id=c71726d70bf4 (link may not be stable)
[6/8] net: fix build with CONFIG_SHELL_NONE
      https://git.pengutronix.de/cgit/barebox/commit/?id=bcccae97ac40 (link may not be stable)
[7/8] power: reset: reboot-mode: fix link error without globalvar
      https://git.pengutronix.de/cgit/barebox/commit/?id=bf80cd13fa5c (link may not be stable)
[8/8] sandbox: add headless_defconfig
      https://git.pengutronix.de/cgit/barebox/commit/?id=15af24567132 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



