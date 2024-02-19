Delivery-date: Mon, 19 Feb 2024 14:39:25 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rc3rg-00Ea2R-3D
	for lore@lore.pengutronix.de;
	Mon, 19 Feb 2024 14:39:25 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rc3rg-0005mz-BE
	for lore@pengutronix.de; Mon, 19 Feb 2024 14:39:24 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=trt1Irnafxy+xBSu2pjAV9tL87CSb5hNL9q+k6HHk80=; b=pebzarEnp5nbLo6jEa0m51Qqnb
	U355zQc+XqwXJz0LST1VSdBI1MIUQFFLTQ2BPYWXYaZoJngl4HxWZdIA6MmV+Ek4ROAqx1rSrrERQ
	MFEGB7MUa5aaT9lf66dNzP+JHVOn38FT3IZgmjQ9ZnHejITw5CB++heBKgQDAHlcZaAE8XoCQ1jjM
	X2W0kN9Y7QqLmJS1Pa8C01fGJ61qDyH7Ei8VI6r2jDdOxnAE2IQdED413G6oceTCDuC46Ir6ds7XY
	2TfIoppARRI0S5sKreC5+WK/wbVaIktWObI4b0cbjW0GKOU7CrlixxA8bnYMEtQg8T0eDGJ+qhVIW
	dQWLaQaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rc3r7-0000000AfzX-2WgI;
	Mon, 19 Feb 2024 13:38:49 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rc3r2-0000000Afvy-1fKM
	for barebox@lists.infradead.org;
	Mon, 19 Feb 2024 13:38:46 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rc3r1-000512-5Y
	for barebox@lists.infradead.org; Mon, 19 Feb 2024 14:38:43 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rc3r0-001f3J-PJ
	for barebox@lists.infradead.org; Mon, 19 Feb 2024 14:38:42 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rc3r0-00GySQ-28
	for barebox@lists.infradead.org;
	Mon, 19 Feb 2024 14:38:42 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Mon, 19 Feb 2024 14:38:20 +0100
Message-Id: <20240219133835.3886399-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240219_053844_487154_D60BB9D5 
X-CRM114-Status: UNSURE (   7.07  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 00/15] usb: xhci: pull in fixes from U-Boot v2024.01
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The latest U-Boot release saw some fixes to the xHCI driver contributed
by the Asahi Linux project to improve robustness in case of errors.

Port these to barebox as well as a couple of cleanup commits that make
the code in barebox look more similar to changes that happened to U-Boot
in the meantime.

Ahmad Fatoum (15):
  usb: xhci: usb: xhci: avoid type conversion of void *
  usb: xhci: add various debugging prints
  usb: xhci: call xhci_flush_cache where appropriate
  usb: xhci: use macros for formatting values
  usb: xhci: Add missing endian conversions (cpu_to_leXX / leXX_to_cpu)
  usb: xhci: Add missing xhci_readl()
  usb: xhci: don't use xhci_writeq for normal SDRAM
  usb: xhci: support non-1:1 mapped xHCI
  usb: xhci: reset endpoint on USB stall
  usb: xhci: Fix root hub descriptor
  usb: xhci: Guard all calls to xhci_wait_for_event
  usb: xhci: Better error handling in abort_td()
  usb: xhci: Allow context state errors when halting an endpoint
  usb: xhci: Recover from halted bulk endpoints
  usb: xhci: Do not panic on event timeouts

 drivers/usb/host/xhci-mem.c  |  99 +++++++++---------
 drivers/usb/host/xhci-ring.c | 190 +++++++++++++++++++++++++++--------
 drivers/usb/host/xhci.c      |  62 ++++++++----
 drivers/usb/host/xhci.h      |  16 ++-
 4 files changed, 247 insertions(+), 120 deletions(-)

-- 
2.39.2



