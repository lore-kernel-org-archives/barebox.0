Delivery-date: Fri, 09 Jan 2026 16:11:28 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1veE9A-0031uh-1w
	for lore@lore.pengutronix.de;
	Fri, 09 Jan 2026 16:11:28 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1veE99-000374-TE
	for lore@pengutronix.de; Fri, 09 Jan 2026 16:11:28 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:MIME-Version:
	Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=TchlNkNBZKfAj+vum/r7PapFLsMO1J4NrxTSfcdtulw=; b=CRMdWzTf+j4Sqojt8cMS01/aYF
	aJzgyC+quk5CQoL/JDZhv3YYeWniE8ccjXMo/dAfRlL8RfPWPFNwNfaWrd0hLgiWoKyL/P2/QgDjr
	rNBxUXA/xrNE7tfZ4GPUqtlPBRXji2RP7axVg/QCPNefAzZ4uEqbLqA+KG2QddBYjnRXiIuGedhyl
	joimlugaxxL/XBGGmV86u8Qs4qQkIwEe8iK1Krn2w/wl5XKJ+7g13FSK2k8shwCiBGUbq7zoQB8A4
	bLG5Z6F6d7sBatbWvXa16wcPU1X3AQRT3hJODMcpCk+3F84cI0JHQHuyGCXlW+38odJlNZRZ/h3lO
	cPwwfJIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1veE8T-00000002Sbd-1ous;
	Fri, 09 Jan 2026 15:10:45 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1veE8Q-00000002Sah-3VRZ
	for barebox@lists.infradead.org;
	Fri, 09 Jan 2026 15:10:44 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1veE8N-00031H-VN
	for barebox@lists.infradead.org; Fri, 09 Jan 2026 16:10:39 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1veE8N-009roH-2W
	for barebox@lists.infradead.org;
	Fri, 09 Jan 2026 16:10:39 +0100
Received: from mtr by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1veE8N-002H6z-2E
	for barebox@lists.infradead.org;
	Fri, 09 Jan 2026 16:10:39 +0100
Date: Fri, 9 Jan 2026 16:10:39 +0100
From: Michael Tretter <m.tretter@pengutronix.de>
To: barebox@lists.infradead.org
Message-ID: <aWEab3b5tMev5AU4@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260109_071042_875250_0DED3E13 
X-CRM114-Status: UNSURE (   9.51  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Radxa ROCK 5T: SD card startup failure
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

since Commit a3bf6c16f77d ("dts: update to v6.19-rc1"), barebox fails to
initialize the SD card on my Radxa ROCK T5 board.

I tracked the failure down to a change of the pinctrl setting for the
card detect pin to RK_FUNC_GPIO (see sdmmc_det_pin). If I change the
pinctrl mux back to 1, the SD card is initialized correctly.

If the error happens, the dw_mmc driver reports a DATA ERROR on CMD13
with BIT(13) set (DWMCI_INTMSK_SBE) and runs into a timeout afterward:

	dw_mmc fe2c0000.mmc@fe2c0000.of: registered as mmc1
	dw_mmc fe2c0000.mmc@fe2c0000.of: Using fifo-depth=256
	mmc1: clock 0.0MHz width 1 timing legacy
	dw_mmc fe2c0000.mmc@fe2c0000.of: Buswidth = 0, clock: 0
	mmc1: clock 0.400000MHz width 1 timing legacy
	dw_mmc fe2c0000.mmc@fe2c0000.of: Buswidth = 0, clock: 400000
	dw_mmc fe2c0000.mmc@fe2c0000.of: Sending CMD0
	dw_mmc fe2c0000.mmc@fe2c0000.of: Sending CMD8
	mmc1: SD Card Rev. 2.00 or later detected
	dw_mmc fe2c0000.mmc@fe2c0000.of: Sending CMD55
	dw_mmc fe2c0000.mmc@fe2c0000.of: Sending CMD41
	dw_mmc fe2c0000.mmc@fe2c0000.of: Sending CMD55
	dw_mmc fe2c0000.mmc@fe2c0000.of: Sending CMD41
	dw_mmc fe2c0000.mmc@fe2c0000.of: Sending CMD55
	dw_mmc fe2c0000.mmc@fe2c0000.of: Sending CMD41
	dw_mmc fe2c0000.mmc@fe2c0000.of: Sending CMD55
	dw_mmc fe2c0000.mmc@fe2c0000.of: Sending CMD41
	dw_mmc fe2c0000.mmc@fe2c0000.of: Sending CMD55
	dw_mmc fe2c0000.mmc@fe2c0000.of: Sending CMD41
	mmc1: Put the Card in Identify Mode
	dw_mmc fe2c0000.mmc@fe2c0000.of: Sending CMD2
	mmc1: Card's identification data is: 03534453-44333247-8555412B-AC0191F5
	mmc1: Get/Set relative address
	dw_mmc fe2c0000.mmc@fe2c0000.of: Sending CMD3
	mmc1: Get card's specific data
	dw_mmc fe2c0000.mmc@fe2c0000.of: Sending CMD9
	mmc1: Card's specific data is: 400E0032-5B590000-EDC87F80-0A4040C3
	mmc1: Transfer speed: 25000000
	mmc1: Max. block length are: Write=512, Read=512 Bytes
	mmc1: Read block length: 512, Write block length: 512
	mmc1: Select the card, and put it into Transfer Mode
	dw_mmc fe2c0000.mmc@fe2c0000.of: Sending CMD7
	mmc1: Changing transfer frequency
	dw_mmc fe2c0000.mmc@fe2c0000.of: Sending CMD55
	mmc1: Trying to read the SCR (try 1 of 3)
	dw_mmc fe2c0000.mmc@fe2c0000.of: desc@ 0x00000000ad25b000 0x8000001c 0x00000008 0xad25aac0 0xad25b010
	dw_mmc fe2c0000.mmc@fe2c0000.of: Sending CMD51
	dw_mmc fe2c0000.mmc@fe2c0000.of: desc@ 0x00000000ad25b000 0x8000001c 0x00000040 0xad25aac0 0xad25b010
	dw_mmc fe2c0000.mmc@fe2c0000.of: Sending CMD6
	dw_mmc fe2c0000.mmc@fe2c0000.of: desc@ 0x00000000ad25b000 0x8000001c 0x00000040 0xad25aac0 0xad25b010
	dw_mmc fe2c0000.mmc@fe2c0000.of: Sending CMD6
	mmc1: detected SD card version 2.0
	mmc1: Capacity: 30436 MiB
	mmc1: Erase group is 1 sector(s). Trim not supported
	mmc1: Prepare for bus width change
	dw_mmc fe2c0000.mmc@fe2c0000.of: Sending CMD55
	mmc1: Set SD bus width to 4 bit
	dw_mmc fe2c0000.mmc@fe2c0000.of: Sending CMD6
	mmc1: clock 0.400000MHz width 4 timing legacy
	dw_mmc fe2c0000.mmc@fe2c0000.of: Buswidth = 2, clock: 400000
	mmc1: clock 50.0MHz width 4 timing SD HS
	dw_mmc fe2c0000.mmc@fe2c0000.of: Buswidth = 2, clock: 50000000
	dw_mmc fe2c0000.mmc@fe2c0000.of: Sending CMD55
	dw_mmc fe2c0000.mmc@fe2c0000.of: desc@ 0x00000000ad25b000 0x8000001c 0x00000040 0xad25d780 0xad25b010
	dw_mmc fe2c0000.mmc@fe2c0000.of: Sending CMD13
	dw_mmc fe2c0000.mmc@fe2c0000.of: DATA ERROR!
	dw_mmc fe2c0000.mmc@fe2c0000.of: desc@ 0x00000000ad25b000 0x8000001c 0x00000040 0xad25d780 0xad25b010
	dw_mmc fe2c0000.mmc@fe2c0000.of: Sending CMD13
	dw_mmc fe2c0000.mmc@fe2c0000.of: Send command timeout..
	dw_mmc fe2c0000.mmc@fe2c0000.of: desc@ 0x00000000ad25b000 0x8000001c 0x00000040 0xad25d780 0xad25b010
	dw_mmc fe2c0000.mmc@fe2c0000.of: Sending CMD13
	dw_mmc fe2c0000.mmc@fe2c0000.of: Send command timeout..
	dw_mmc fe2c0000.mmc@fe2c0000.of: desc@ 0x00000000ad25b000 0x8000001c 0x00000040 0xad25d780 0xad25b010
	dw_mmc fe2c0000.mmc@fe2c0000.of: Sending CMD13
	dw_mmc fe2c0000.mmc@fe2c0000.of: Send command timeout..
	mmc1: unable to read ssr: Connection timed out
	dw_mmc fe2c0000.mmc@fe2c0000.of: Sending CMD16
	dw_mmc fe2c0000.mmc@fe2c0000.of: Send command timeout..
	dw_mmc fe2c0000.mmc@fe2c0000.of: Sending CMD16
	dw_mmc fe2c0000.mmc@fe2c0000.of: Send command timeout..
	dw_mmc fe2c0000.mmc@fe2c0000.of: Sending CMD16
	dw_mmc fe2c0000.mmc@fe2c0000.of: Send command timeout..
	dw_mmc fe2c0000.mmc@fe2c0000.of: Sending CMD16
	dw_mmc fe2c0000.mmc@fe2c0000.of: Send command timeout..
	dw_mmc fe2c0000.mmc@fe2c0000.of: Sending CMD16
	dw_mmc fe2c0000.mmc@fe2c0000.of: Send command timeout..
	WARNING: mmc1: Card's startup fails with -110

It seems to me that the SD host controller fails to correctly initialize
if the card detect it directly muxed as GPIO instead of muxing it to the
SD host controller. At least that's what I understand from
https://lore.kernel.org/linux-rockchip/4920950.GXAFRqVoOG@diego/.

May there be some configuration in the SD host controller that needs to
be changed to ignore the card detect?

Michael


