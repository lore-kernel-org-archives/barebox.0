Delivery-date: Tue, 14 Jan 2025 09:19:17 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tXc8r-000wUW-2U
	for lore@lore.pengutronix.de;
	Tue, 14 Jan 2025 09:19:17 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tXc8r-0003Nm-4e
	for lore@pengutronix.de; Tue, 14 Jan 2025 09:19:17 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=E3WuixY9UxQai3gJSZYS7QuHZT/FoWdlulEHV1uEOFM=; b=GSwhj6OyXnn9BABr8sNDG8MXD+
	f9EKw6H4RFjnEGOGAzyfTZjhExZUaytKoFwKvgtjaBR5gCU8YcxxmfcERsH9nCLNRZhen5kskbzeO
	wtXwl2WtH/BEGZT29IoaJAC+oSucdzZeOp17XEL/EFrTuH8+qUTOJN0l5g+mCz2auWcxEUOnJfay/
	7rqT6aJE/BivPrkSWy5VnSc8NHfvUQdamXiHADynD62v8mwhGsJHyOLxc8gy9/QgnLU9wSsFQYv5K
	KEZbqz3/oXIrz8mFe+yNIaUo53hVv7ZhYempYO+HgIPHYDCkWSudVfzZdsW76T/UpDM+72uywxtwT
	1Hq0qXEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tXc8G-00000007nV5-41dz;
	Tue, 14 Jan 2025 08:18:40 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tXc8E-00000007nUO-3xOT
	for barebox@lists.infradead.org;
	Tue, 14 Jan 2025 08:18:40 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tXc8D-0003GQ-Fy; Tue, 14 Jan 2025 09:18:37 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tXc8B-000Oy1-0F;
	Tue, 14 Jan 2025 09:18:35 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tXc8B-00CL8k-1f;
	Tue, 14 Jan 2025 09:18:35 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Felix Singer <felixsinger@posteo.net>
In-Reply-To: <20250112083432.320215-1-a.fatoum@pengutronix.de>
References: <20250112083432.320215-1-a.fatoum@pengutronix.de>
Message-Id: <173684271551.2941145.10362356239335095881.b4-ty@pengutronix.de>
Date: Tue, 14 Jan 2025 09:18:35 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250114_001838_988056_8EBA3A3D 
X-CRM114-Status: GOOD (  11.03  )
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
Subject: Re: [PATCH 00/13] images: add barebox FIT image target
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Sun, 12 Jan 2025 09:34:19 +0100, Ahmad Fatoum wrote:
> The generic barebox-dt-2nd.img depends on the user to fish out
> the correct device tree from arch/${SRCARCH}/dts and to instruct
> the preceding boot stage to pass that device tree to the barebox image.
> 
> To make this easier, especially with an eye towards using this as a
> coreboot payload, let's have the barebox build system produce a FIT
> image combining barebox-dt-2nd.img and all the enabled device trees.
> 
> [...]

Applied, thanks!

[01/13] ARM: dts: add device trees for the QEMU Virt machine
        https://git.pengutronix.de/cgit/barebox/commit/?id=a22fce9bedf8 (link may not be stable)
[02/13] treewide: collect the name of all board device trees
        https://git.pengutronix.de/cgit/barebox/commit/?id=bbd61ad6665f (link may not be stable)
[03/13] kbuild: collect available device trees in dtbs-list
        https://git.pengutronix.de/cgit/barebox/commit/?id=dcffa72602bc (link may not be stable)
[04/13] scripts: add new scripts_dtc target
        https://git.pengutronix.de/cgit/barebox/commit/?id=2ca6ebc73a12 (link may not be stable)
[05/13] kbuild: restrict dtbs target to enabled DTs by default
        https://git.pengutronix.de/cgit/barebox/commit/?id=3c862a83f019 (link may not be stable)
[06/13] kbuild: improve make help description
        https://git.pengutronix.de/cgit/barebox/commit/?id=40193e790f3a (link may not be stable)
[07/13] kbuild: allow dependency on any file in images/
        https://git.pengutronix.de/cgit/barebox/commit/?id=9e503475b38a (link may not be stable)
[08/13] arch: maintain Linux kernel and mkimage ARCH mapping in Kconfig
        https://git.pengutronix.de/cgit/barebox/commit/?id=afd870d029e4 (link may not be stable)
[09/13] arch: make BOARD_GENERIC_DT a user-selectable option across archs
        https://git.pengutronix.de/cgit/barebox/commit/?id=5e65b8e19e49 (link may not be stable)
[10/13] images: add barebox FIT image target
        https://git.pengutronix.de/cgit/barebox/commit/?id=9de7043299e4 (link may not be stable)
[11/13] MAKEALL: rename target in symbols to more appropiate defconfig
        https://git.pengutronix.de/cgit/barebox/commit/?id=eb42ba0bd839 (link may not be stable)
[12/13] MAKEALL: add support for building arbitrary targets
        https://git.pengutronix.de/cgit/barebox/commit/?id=942c985dee45 (link may not be stable)
[13/13] ci: container: add python3-libfdt dependency for barebox.fit
        https://git.pengutronix.de/cgit/barebox/commit/?id=46696161387b (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



