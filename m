Delivery-date: Mon, 08 Jul 2024 12:24:05 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sQlXQ-002kHK-2z
	for lore@lore.pengutronix.de;
	Mon, 08 Jul 2024 12:24:05 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sQlXQ-0002VM-Cq
	for lore@pengutronix.de; Mon, 08 Jul 2024 12:24:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:MIME-Version:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=AvLfq++dFU32UdmDP8ur8JvrMsSnXGfxmbOb3x1ZOqU=; b=kByrE6vFacksexX/yFkyYxD9QY
	CqT1BDDFji0xdexatgaGAD2EGiPBZ+dMOxrLc7OLNvSJnT3b6EcEL2xSXdGP26BCL2HwFks+bapKp
	ZhnN14tTpXJilD0VDpvcxa/5RiUyENHki0xdYm0kuSG3lnaCGwJBAjqxtzrHol3RpHcNxTnUGCO9l
	bdxwgNxNZkoICVfVCJ5Ha7cuVreY1XND7Y5Ir1WO0XcG96SJEtjlXdMICWa1EjKhBEON+IoChFB+x
	5V2gtZUfhMgHWjXYMZN2fo2SeYoXrf3++PYzdzVtMtI8G/1WozYPDuavRg91Wr9IxsE1pimj8W+RD
	FRK8dVAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sQlWh-00000003RDv-471Y;
	Mon, 08 Jul 2024 10:23:19 +0000
Received: from smtpout-2.cvg.de ([2003:49:a034:1067:5::2])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sQlWd-00000003RBv-3pS8
	for barebox@lists.infradead.org;
	Mon, 08 Jul 2024 10:23:18 +0000
Received: from mail-mta-3.intern.sigma-chemnitz.de (mail-mta-3.intern.sigma-chemnitz.de [192.168.12.71])
	by mail-out-2.intern.sigma-chemnitz.de (8.17.1/8.17.1) with ESMTPS id 468AMtW0133188
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=OK)
	for <barebox@lists.infradead.org>; Mon, 8 Jul 2024 12:22:55 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sigma-chemnitz.de;
	s=v2022040800; t=1720434176;
	bh=AvLfq++dFU32UdmDP8ur8JvrMsSnXGfxmbOb3x1ZOqU=; l=1966;
	h=From:To:Subject:Date;
	b=iA9p/FeFyBIKD5LfuXGpP35vuu3Z10rYiJb3nie9fR84cjkJ/f1jeoghsHNFiAF+0
	 u25iUNRJfTpnHlOWKPaTTLuMqUc0ICOiGAG3RESYMfrD0pK7686JGigL/3oDYoAQZG
	 shyVlxw6sBRGDQkst5ioC5vHSbTgufSti/8l0n5hiq6zJJkgN2/Yo8pdpSmoCDezGx
	 xgGcqtSG4TqoUpgsdGodn4OdiGccWMYfWqqd2apNiu4fNOoj9fsaxE5P/F8Pjo1odd
	 0V+arhkQPsSVFcDMaj3IuUYoMngfCslim6LurEaBFqWBMXo9W69umKexQ4WYvC4fkL
	 JVdA+CE9gdTtg==
Received: from reddoxx.intern.sigma-chemnitz.de (reddoxx.sigma.local [192.168.16.32])
	by mail-mta-3.intern.sigma-chemnitz.de (8.17.1/8.17.1) with ESMTP id 468AMr6I2901875
	for <barebox@lists.infradead.org> from enrico.scholz@sigma-chemnitz.de; Mon, 8 Jul 2024 12:22:54 +0200
Received: from mail-msa-2.intern.sigma-chemnitz.de ([192.168.12.72])
	by reddoxx.intern.sigma-chemnitz.de with ESMTP
	id MA3PGQNO0F; Mon, 08 Jul 2024 12:22:53 +0200
Received: from ensc-pc.intern.sigma-chemnitz.de (ensc-pc.intern.sigma-chemnitz.de [192.168.3.24])
	by mail-msa-2.intern.sigma-chemnitz.de (8.17.1/8.17.1) with ESMTPS id 468AMqES130113
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO)
	for <barebox@lists.infradead.org> from ensc@sigma-chemnitz.de; Mon, 8 Jul 2024 12:22:53 +0200
Received: from ensc by ensc-pc.intern.sigma-chemnitz.de with local (Exim 4.97.1)
	(envelope-from <ensc@sigma-chemnitz.de>)
	id 1sQlWG-0000000Gnha-0Knq
	for barebox@lists.infradead.org;
	Mon, 08 Jul 2024 12:22:52 +0200
From: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
To: barebox@lists.infradead.org
Date: Mon, 08 Jul 2024 12:22:52 +0200
Message-ID: <lyjzhwxjwj.fsf@ensc-pc.intern.sigma-chemnitz.de>
User-Agent: Gnus/5.13 (Gnus v5.13)
MIME-Version: 1.0
Content-Type: text/plain
X-REDDOXX-Id: 668bbdfdb121c496daaabd9e
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240708_032316_712289_F6350658 
X-CRM114-Status: UNSURE (   6.34  )
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
X-Spam-Status: No, score=-104.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	USER_IN_WELCOMELIST,USER_IN_WHITELIST autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Major memory performance decline from u-boot to barebox
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello,

I have a karo tx6s module (imx6s, 512 MiB RAM) which is shipped with an
ancient u-boot 2015 bootloader.

barebox 2024.07 works out-of-the box on it. But under the booted linux
system a see a major regression in memory performance.

E.g. u-boot has

| # hdparm -tT /dev/mmcblk3
|  Timing cached reads:   1236 MB in  2.00 seconds = 618.46 MB/sec

while barebox shows only

|  Timing cached reads:    574 MB in  2.00 seconds = 287.08 MB/sec


Running tinymembench[1] shows that pure memory read operations are not
affected; e.g. both variants report around

|  NEON read                                           :   1398.5 MB/s


But write operations differ by a factor of 4-5:

| standard memset                                      :   2054.4 MB/s

on u-boot vs. barebox with

| standard memset                                      :    472.7 MB/s


I modified barebox to use the same DCD like u-boot; resulting MMDC
registers are nearly identical[2].  /sys/kernel/debug/clk/clk_summary
is also nearly the same (only LVDS1_SEL (unused) has another parent).
TZASC is not used.  GPRx registers are identical.

Systems are running with linux 6.6 and master on an initrd.

Disabling L2 cache in linux slows down things, but the relative results
are similar (no difference in read, memset 322.3 MB/s -> 728.5 MB/s).

Building barebox with CONFIG_MMU disabled makes no difference.


Looking at another iMX6 system shows similar bad numbers for barebox.
E.g. an iMX6QP has a memset rate of 613.6 MB/s.  But I do not have
u-boot available for comparision.


What could be the reason the u-boot is so much faster?  Which memory
related settings are carried over from the bootloader to linux?  What
could I test else?



Enrico

Footnotes:
[1]  https://github.com/ssvb/tinymembench, from OE scarthgap

[2]  -0x021b0848: 0x484c494b
     +0x021b0848: 0x474b4a4b
     -0x021b084c: 0x2a2d2b2c
     +0x021b084c: 0x2a2c2c2c
     -0x021b0868: 0x791a7e18
     +0x021b0868: 0x7a1a7e18
     -0x021b086c: 0x7a177e1a
     +0x021b086c: 0x78177c1a

     - --> barebox,  + --> u-boot


