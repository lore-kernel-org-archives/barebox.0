Delivery-date: Tue, 10 Sep 2024 13:49:18 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1snzN0-0038ue-2r
	for lore@lore.pengutronix.de;
	Tue, 10 Sep 2024 13:49:18 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1snzMz-0001Qj-MW
	for lore@pengutronix.de; Tue, 10 Sep 2024 13:49:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=8MANzBQ65DrPv18yoOqmNAKSeRCsIk0kPf5FxZLEVP0=; b=EymvqRBIRApTQv0/vvKL1RtzXO
	sSlLyEUyBp1yN4+2EYxmhhJMPu1fPRNvzJRTj1KTg7yCXf2UnmJl0vvPceFTlvo6fF4t0TAvp25Q3
	7bew120L4HEGaRxdfLfne0WhpIUvkCjVT3k9FFoTRN4xipF0RmKCemhnz+9EdcUm2FnO+FQM76oYX
	YLjGb0GmF9I2F4KBnTLbtbFV27BZLaF4mLZS7JndgKbt55BvESQjF7DVTIEBAjd2SRWcPxUiJQ5jU
	XvMFoaRVp3+dByryhVMpAaQh17L19C25XlbbH5byjf5kjInq6tWnteNVrRUucOPi8M0XL4F1xfR4B
	i3lGXIhg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1snzMO-00000005R8V-402H;
	Tue, 10 Sep 2024 11:48:40 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1snzMK-00000005R6T-3ftX
	for barebox@lists.infradead.org;
	Tue, 10 Sep 2024 11:48:39 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1snzMJ-0000q5-48; Tue, 10 Sep 2024 13:48:35 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1snzMI-006sx5-NW; Tue, 10 Sep 2024 13:48:34 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1snzMI-00CWph-0a;
	Tue, 10 Sep 2024 13:48:34 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: lst@pengutronix.de
Date: Tue, 10 Sep 2024 13:48:28 +0200
Message-Id: <20240910114832.2984195-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240910_044837_009978_1B065815 
X-CRM114-Status: GOOD (  10.33  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 0/4] dma: debug: track DMA buffer ownership with KASAN
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

There is litte we can do in software if a DMA master decides to corrupt
memory that is owned by the CPU. What we could do, however, is to ensure
that code doesn't access memory while not owned by the CPU.

This is done by recording ownership information into the KASAN shadow memory.
That way accessing a device mapped buffer before sync'ing it to the CPU is
detected like KASAN would detect a use-after-free. Below is the output
after adding a (void)readl(packet) into the network device send routing just
after mapping it to the device:

  BUG: KASAN: dma-mapped-to-device in eqos_send+0xdc/0x1a8
  Read of size 4 at addr 0000000040419f00

  Call trace:
  [<7fbd4980>] (unwind_backtrace+0x0/0xb0) from [<7fbd4a40>] (dump_stack+0x10/0x18)
  [<7fbd4a40>] (dump_stack+0x10/0x18) from [<7fba2360>] (kasan_report+0x11c/0x290)
  [<7fba2360>] (kasan_report+0x11c/0x290) from [<7fba1f44>] (__asan_load4+0x54/0xb8)
  [<7fba1f44>] (__asan_load4+0x54/0xb8) from [<7fb2e52c>] (eqos_send+0xdc/0x1a8)
  [<7fb2e52c>] (eqos_send+0xdc/0x1a8) from [<7fbb6544>] (eth_send+0x154/0x16c)
  [<7fbb6544>] (eth_send+0x154/0x16c) from [<7fbb7114>] (net_ip_send+0xe8/0xf8)
  [<7fbb7114>] (net_ip_send+0xe8/0xf8) from [<7fbb7d10>] (net_udp_send+0x68/0x78)
  [<7fbb7d10>] (net_udp_send+0x68/0x78) from [<7fbb9b50>] (bootp_request+0x174/0x188)
  [<7fbb9b50>] (bootp_request+0x174/0x188) from [<7fbb9ce8>] (dhcp_request+0x184/0x274)
  [<7fbb9ce8>] (dhcp_request+0x184/0x274) from [<7fbb9fd0>] (dhcp+0x34/0x80)
  [<7fbb9fd0>] (dhcp+0x34/0x80) from [<7fb9df64>] (do_dhcp+0x1cc/0x1d0)
  [<7fb9df64>] (do_dhcp+0x1cc/0x1d0) from [<7fb097d8>] (execute_command+0x54/0xa8)
  [<7fb097d8>] (execute_command+0x54/0xa8) from [<7fb0584c>] (execute_binfmt+0x80/0xc0)
  [<7fb0584c>] (execute_binfmt+0x80/0xc0) from [<7fb1522c>] (run_list_real+0xc2c/0xcdc)
  [<7fb1522c>] (run_list_real+0xc2c/0xcdc) from [<7fb1441c>] (parse_stream_outer+0x154/0x220)
  [<7fb1441c>] (parse_stream_outer+0x154/0x220) from [<7fb15554>] (run_shell+0x64/0xac)
  [<7fb15554>] (run_shell+0x64/0xac) from [<7fb01fa4>] (run_init+0x100/0x26c)
  [<7fb01fa4>] (run_init+0x100/0x26c) from [<7fb0217c>] (start_barebox+0x6c/0xd0)
  [<7fb0217c>] (start_barebox+0x6c/0xd0) from [<7fbd2864>] (psci_driver_register+0x0/0x1c)
  [<7fbd2864>] (psci_driver_register+0x0/0x1c) from [<7fb0000c>] (__bare_init_start+0x0/0x14)
  [<7fb0000c>] (__bare_init_start+0x0/0x14) from [<00a01ae0>] (0xa01ae0)
  [<00a01ae0>] (0xa01ae0) from [<00a01360>] (0xa01360)


  Memory state around the buggy address:
   0000000040419e00: 00 00 00 00 00 00 00 00 02 fc ff ff ff ff fc 00
   0000000040419e80: 00 00 00 fc 00 00 00 00 04 fc ff ff ff ff fc fc
  >0000000040419f00: f8 f8 f8 f8 f8 f8 f8 f8 f8 f8 f8 f8 f8 f8 f8 f8
                     ^
   0000000040419f80: f8 f8 f8 f8 f8 f8 f8 f8 f8 f8 f8 f8 f8 f8 f8 f8
   000000004041a000: f8 f8 f8 f8 f8 f8 f8 f8 f8 f8 f8 00 00 00 00 00
==================================================================

Cheers,
Ahmad Fatoum (4):
  Revert "dma: debug: detect repeated DMA sync"
  KASan: implement non-warning kasan_is_poisoned_shadow
  dma: debug: poison DMA buffers with KASAN while owned by device
  dma: debug: detect repeated DMA sync using KASAN

 drivers/dma/debug.c        | 74 ++++++++++++++++++++++++++++++++------
 include/linux/kasan.h      |  4 ++-
 lib/kasan/generic.c        | 37 +++++++++++++++++++
 lib/kasan/generic_report.c |  4 +--
 4 files changed, 106 insertions(+), 13 deletions(-)

-- 
2.39.2



