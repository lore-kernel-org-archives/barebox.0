Delivery-date: Tue, 18 Jun 2024 08:49:13 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sJSeX-0080K5-1m
	for lore@lore.pengutronix.de;
	Tue, 18 Jun 2024 08:49:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sJSeW-0001ps-TP
	for lore@pengutronix.de; Tue, 18 Jun 2024 08:49:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=n1urXLFSoGz0AD5P/lrPi82xpUUCM2UuFVTxGPrSbzw=; b=K2DFSLcNkCb1Nmc60ihW/dbA3T
	il7EPuX7SxPX7MRQGK2si6zkayqN9+BV+jaQ+R2dN/Ad6G1s7+Cf7UOmJPMBg1clrU4fizBzSNyd0
	++z8rPjXdmqOtYLknUunfvMJMUGIJ+8gAYZ8/98zjPbKFM3aRploQTroUudp7DNoy9xTR2pxotkhQ
	NVbbQHh9tqh2+1NzHDGPMcYabr1eJHNRhDdo/hv36eL5KmVNjaCFbdrvGTGhmH1gUv+hGSXLYdMgZ
	tl3+GIN8sDqYMk0gZEzW63i0ZYxsKlQvIIFs92/FWRN4fIQccDmScL98mKQ0CPQCCcSVK6+pmVZH/
	FZsEgkiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJSe0-0000000DrqK-3RQZ;
	Tue, 18 Jun 2024 06:48:40 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJSdx-0000000DroM-3t2s
	for barebox@lists.infradead.org;
	Tue, 18 Jun 2024 06:48:39 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sJSdu-0001nI-Ig; Tue, 18 Jun 2024 08:48:34 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sJSdu-003A6f-5v; Tue, 18 Jun 2024 08:48:34 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sJSdu-00G5Mr-0N;
	Tue, 18 Jun 2024 08:48:34 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, 
 Steffen Trumtrar <s.trumtrar@pengutronix.de>
In-Reply-To: <20240617-v2024-05-0-topic-socfpga-arria10-xloader-v1-0-48a6eba4bb5e@pengutronix.de>
References: <20240617-v2024-05-0-topic-socfpga-arria10-xloader-v1-0-48a6eba4bb5e@pengutronix.de>
Message-Id: <171869331411.3833817.2679678175650426775.b4-ty@pengutronix.de>
Date: Tue, 18 Jun 2024 08:48:34 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240617_234838_075600_35FB7DB7 
X-CRM114-Status: UNSURE (   7.03  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 00/14] ARM: SoCFPGA: arria10: clean up early bitstream
 loading
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 17 Jun 2024 13:36:22 +0200, Steffen Trumtrar wrote:
> This series cleans up/reworks the early bitstream loading in the Arria10
> xloader code.
> 
> Some useful defines are added on the way.
> 
> 
> 
> [...]

Applied, thanks!

[01/14] ARM: arria10: system-manager: add handoff registers
        https://git.pengutronix.de/cgit/barebox/commit/?id=b22ad95de63c (link may not be stable)
[02/14] ARM: Arria10: reset manager: document reset source
        https://git.pengutronix.de/cgit/barebox/commit/?id=9c1fba4af288 (link may not be stable)
[03/14] ARM: socfpga: Arria10: PE1: remove arm_cpu_lowlevel_init
        https://git.pengutronix.de/cgit/barebox/commit/?id=29de11adfc0e (link may not be stable)
[04/14] ARM: arria10: reset-manager: don't touch l4 wdog
        https://git.pengutronix.de/cgit/barebox/commit/?id=8b89da8eafe2 (link may not be stable)
[05/14] ARM: Arria10: PE1: disable l4wd0 in bringup
        https://git.pengutronix.de/cgit/barebox/commit/?id=2d17c531768c (link may not be stable)
[06/14] ARM: Arria10: xload: rework __arria10_load_fpga
        https://git.pengutronix.de/cgit/barebox/commit/?id=974d9d7892cc (link may not be stable)
[07/14] ARM: arria10: xload: fix __arria10_load_fpga
        https://git.pengutronix.de/cgit/barebox/commit/?id=050398e77dc1 (link may not be stable)
[08/14] ARM: Arria10: xload: kick watchdog
        https://git.pengutronix.de/cgit/barebox/commit/?id=ed3372c6e07e (link may not be stable)
[09/14] ARM: arria10: mark image in OCRAM as valid
        https://git.pengutronix.de/cgit/barebox/commit/?id=b06718ef03d2 (link may not be stable)
[10/14] ARM: Arria10: arria10_finish_io: remove unused param
        https://git.pengutronix.de/cgit/barebox/commit/?id=eb720580ca67 (link may not be stable)
[11/14] ARM: Arria10: xload: remove useless writel
        https://git.pengutronix.de/cgit/barebox/commit/?id=5698989b30c4 (link may not be stable)
[12/14] ARM: Arria10: xload: refactor wait loops
        https://git.pengutronix.de/cgit/barebox/commit/?id=11e342fb4227 (link may not be stable)
[13/14] ARM: Arria10: xload: reduce timeout on condone
        https://git.pengutronix.de/cgit/barebox/commit/?id=fd0ed4c334c0 (link may not be stable)
[14/14] ARM: arria10-xload: rework broken bitstream handling
        https://git.pengutronix.de/cgit/barebox/commit/?id=7ead869ce2ab (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



