Delivery-date: Mon, 19 Jan 2026 08:29:09 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vhjhG-002x5i-1C
	for lore@lore.pengutronix.de;
	Mon, 19 Jan 2026 08:29:09 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vhjhF-0001ao-9q
	for lore@pengutronix.de; Mon, 19 Jan 2026 08:29:09 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=aM0yeQ5hHnB49llWp2UyQUf/odTBJ8gwgAxZ1ZNcGtk=; b=gWjj1TQwKi4hvFYELOib0Jma19
	wCsGcYU+zLv4zwqwkwgcazzZ2TGp+gNL8IWi7rl81sbC8A6gu7Y/3Brg3UmUYODPhnUJWoPT9je6K
	eDC0y36WgGdOaOOBZ/q6ddAzGych3tQiui6CpnOBvUpWrcRufwyfgZpBx8D6GDvozrJPpKqOgJocJ
	iWzgf9AxBBd2S5uVPv/5boBoEJNhrAaZOol95lbWJKTWRQKb08zxf4GI80f1Qh6ZAIXGLXSD5gCS8
	pzjibzaOgqUluXchkw14DL9fPL/L3+HLc+I6+HGcE/hjcqyk1uaU3FPt+3Qvil2oWdkvSDXCG+qgz
	W4Ayw47w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vhjga-00000001TZx-2Kyw;
	Mon, 19 Jan 2026 07:28:28 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vhjgY-00000001TZR-0x3r
	for barebox@lists.infradead.org;
	Mon, 19 Jan 2026 07:28:28 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vhjgU-0001SW-OT; Mon, 19 Jan 2026 08:28:22 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vhjgV-001N7u-0H;
	Mon, 19 Jan 2026 08:28:22 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vhjgU-00000003ON1-1PoA;
	Mon, 19 Jan 2026 08:28:22 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@barebox.org>
Cc: David Dgien <dgienda125@gmail.com>
In-Reply-To: <20260116160654.3981425-1-a.fatoum@barebox.org>
References: <20260116160654.3981425-1-a.fatoum@barebox.org>
Message-Id: <176880770232.808618.29013978837638992.b4-ty@pengutronix.de>
Date: Mon, 19 Jan 2026 08:28:22 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260118_232826_272433_7D0421AA 
X-CRM114-Status: UNSURE (   9.20  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 00/13] ARM32: modules: fix bitrot and add test
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 16 Jan 2026 17:06:23 +0100, Ahmad Fatoum wrote:
> v1 -> v2:
>   - drop <fdt.h> include in <compressed-dtb.h> in favor of
>     https://lore.barebox.org/barebox/20260114120221.941836-3-a.fatoum@pengutronix.de/T/#m191aec342beb0a80468f5c18a7cdd58dedad08ad
>   - patch 01/13 is new to allow deleting the .tmp_barebox_modules_env
>     directory
>   - renamed virt-el2@multi_v8_defconfig.yaml to dt-2nd@multi_v8_defconfig.yaml
>   - added YAML configs for ARM32 as well (Sascha)
>   - changed printf in lowlevel.c to pr_info (Sascha)
> 
> [...]

Applied, thanks!

[01/13] kbuild: fold rmdirs into rmfiles
        https://git.pengutronix.de/cgit/barebox/commit/?id=9914f8fdddac (link may not be stable)
[02/13] boards: qemu-virt: reserve BIOS device tree
        https://git.pengutronix.de/cgit/barebox/commit/?id=e6b570cd12cd (link may not be stable)
[03/13] ARM: qemu-virt: add image for use as -bios
        https://git.pengutronix.de/cgit/barebox/commit/?id=555631bf396a (link may not be stable)
[04/13] kbuild: build *.mod.c with -std=gnu11
        https://git.pengutronix.de/cgit/barebox/commit/?id=a9687a8f0af8 (link may not be stable)
[05/13] ARM32: mark modules as incompatible with ARM_MMU_PERMISSIONS
        https://git.pengutronix.de/cgit/barebox/commit/?id=8b26bb51e606 (link may not be stable)
[06/13] treewide: fix some missing EXPORT_SYMBOL
        https://git.pengutronix.de/cgit/barebox/commit/?id=20752da0f8b2 (link may not be stable)
[07/13] pci: ecam: enable build as module
        https://git.pengutronix.de/cgit/barebox/commit/?id=b317d4408c38 (link may not be stable)
[08/13] kbuild: add support for installing and stripping modules
        https://git.pengutronix.de/cgit/barebox/commit/?id=dbbd806920b3 (link may not be stable)
[09/13] ARM32: module: handle more relocations
        https://git.pengutronix.de/cgit/barebox/commit/?id=8ba9b6daf11c (link may not be stable)
[10/13] commands: pm_domain: make command tristate
        https://git.pengutronix.de/cgit/barebox/commit/?id=c49215926a57 (link may not be stable)
[11/13] test: conftest: add support for describing FW_CFG environment in YAML
        https://git.pengutronix.de/cgit/barebox/commit/?id=0590c54d58b1 (link may not be stable)
[12/13] defaultenv: add barebox_modules_env target
        https://git.pengutronix.de/cgit/barebox/commit/?id=b8d781f46605 (link may not be stable)
[13/13] test: arm: add simple driver/command module test
        https://git.pengutronix.de/cgit/barebox/commit/?id=469a1673c976 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



