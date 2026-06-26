Delivery-date: Fri, 26 Jun 2026 19:45:03 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wdAbv-00A9ap-1l
	for lore@lore.pengutronix.de;
	Fri, 26 Jun 2026 19:45:03 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wdAbu-0007wV-It
	for lore@pengutronix.de; Fri, 26 Jun 2026 19:45:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0ALVUWPnkePX+9e812pMHd6XKE3LvLWXQS2krbBe9ak=; b=hSOlBD4oXNOLyGbtyL+MOGa3tR
	FfR1H6jXn3/nhamgP4f8iO7XydG3F6h+5tn64KJxMBA3CXgJLcsPyz0G91czvdVeFiTcmsOzUL2TU
	MKck0bAfDK3WENR+2s7iqqRJRyBGcX+5mt1ba//gDkQAuAtlnO3zzIhQuNT4tqHuejIwzzjrzwUxk
	6xWIBJlhYztX5fxwDH4A2p/RnoMWGRyC1cSoW1/NLppkepErErnmeuoTyMo3EYoSnU/kI5lkGAbAj
	qymfpgtqMdBibQZzjsuMS0IwBZjHCuv3KuxAJXR7AtCvSiLYRZ5SPefw2exL8AbdeYD4DdJ8/aLig
	J2Oca/uA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wdAak-0000000BiXS-1lbV;
	Fri, 26 Jun 2026 17:43:50 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wdAah-0000000BiV2-1NUx
	for barebox@lists.infradead.org;
	Fri, 26 Jun 2026 17:43:49 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1wdAaf-0003ev-Pa; Fri, 26 Jun 2026 19:43:45 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Fri, 26 Jun 2026 19:31:41 +0200
Message-ID: <20260626174342.1923132-6-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260626174342.1923132-1-a.fatoum@barebox.org>
References: <20260626174342.1923132-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260626_104347_369875_EDCB53BB 
X-CRM114-Status: GOOD (  26.46  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 5/5] usb: hub: tolerate transient disconnects during reset
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Port over U-Boot commit 74c0d756dea14855bec47f380b6ccb557be5db7c:

|   usb: hub: don't check CONNECTION in hub_port_reset()
|
|   One specific USB 3.0 device behaves strangely when reset by
|   usb_new_device()'s call to hub_port_reset(). For some reason, the device
|   appears to briefly drop off the bus when this second bus reset is
|   executed, yet if we retry this loop, it'll eventually come back after
|   another two resets.
|
|   If USB bus reset is executed over and over within usb_new_device()'s call
|   to hub_port_reset(), I see the following sequence of results, which
|   repeats as long as you want:
|
|   1) STAT_C_CONNECTION = 1 STAT_CONNECTION = 0  USB_PORT_STAT_ENABLE 0
|   2) STAT_C_CONNECTION = 1 STAT_CONNECTION = 1  USB_PORT_STAT_ENABLE 0
|   3) STAT_C_CONNECTION = 1 STAT_CONNECTION = 1  USB_PORT_STAT_ENABLE 1
|
|   The device in question is a SanDisk Ultra USB 3.0 16GB memory stick with
|   USB VID/PID 0x0781/0x5581.
|
|   In order to allow this device to work with U-Boot, ignore the
|   {C_,}CONNECTION bits in the status/change registers, and only use the
|   ENABLE bit to determine if the reset was successful.
|
|   To be honest, extensive investigation has failed to determine why this
|   problem occurs. I'd love to know! I don't know if it's caused by:
|   * A HW bug in the device
|   * A HW bug in the Tegra USB controller
|   * A SW bug in the U-Boot Tegra USB driver
|   * A SW bug in the U-Boot USB core
|
|   This issue only occurs when the device's USB3 pins are attached to the
|   host; if only the USB2 pins are connected the issue does not occur. The
|   USB3 controller on Tegra is in reset, so is not actively communicating
|   with the device at all - a USB3 analyzer confirms this. Slightly
|   unplugging the device (so the USB3 pins don't contact) or using a USB2
|   cable or hub as an intermediary avoids the problem. For some reason,
|   the Linux kernel (either on the same Tegra board, or on an x86 host)
|   has no issue with the device, and I observe no disconnections during
|   reset.
|
|   This change won't affect any USB device that already works, since such
|   devices could not currently be triggering the error return this patch
|   removes, or they wouldn't be working currently.
|
|   However, this patch is quite reliable in practice, hence I hope it's
|   acceptable to solve the problem.
|
|   The only potential fallout I can see from this patch is:
|
|   * A broken device that triggers C_CONNECTION/!CONNECTION now causes the
|     loop in hub_port_reset() to run multiple times. If it never succeeds,
|     this will cause "usb start" to take roughly 1s extra to execute.
|
|   * If the user unplugs a device while hub_port_reset() is executing, and
|     very quickly swaps in a new device, hub_port_reset() might succeed on
|     the new device. This would mean that any information cached about the
|     original device (from the descriptor read in usb_new_device(), which
|     simply caches the max packet size) might be invalid, which would cause
|     problems talking to the new device. However, without this change, the
|     new device wouldn't work anyway, so this is probably not much of a
|     loss.
|
|   Signed-off-by: Stephen Warren <swarren@nvidia.com>

Assisted-by: Codex:gpt-5.5
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 drivers/usb/core/hub.c | 19 ++++++++++++++++---
 1 file changed, 16 insertions(+), 3 deletions(-)

diff --git a/drivers/usb/core/hub.c b/drivers/usb/core/hub.c
index e969fc466a8e..3820b4cc9067 100644
--- a/drivers/usb/core/hub.c
+++ b/drivers/usb/core/hub.c
@@ -208,9 +208,22 @@ static int hub_port_reset(struct usb_device *hub, int port,
 			(portstatus & USB_PORT_STAT_CONNECTION) ? 1 : 0,
 			(portstatus & USB_PORT_STAT_ENABLE) ? 1 : 0);
 
-		if ((portchange & USB_PORT_STAT_C_CONNECTION) ||
-		    !(portstatus & USB_PORT_STAT_CONNECTION))
-			return -1;
+		/*
+		 * Perhaps we should check for the following here:
+		 * - C_CONNECTION hasn't been set.
+		 * - CONNECTION is still set.
+		 *
+		 * Doing so would ensure that the device is still connected
+		 * to the bus, and hasn't been unplugged or replaced while the
+		 * USB bus reset was going on.
+		 *
+		 * However, if we do that, then (at least) a San Disk Ultra
+		 * USB 3.0 16GB device fails to reset on (at least) an NVIDIA
+		 * Tegra Jetson TK1 board. For some reason, the device appears
+		 * to briefly drop off the bus when this second bus reset is
+		 * executed, yet if we retry this loop, it'll eventually come
+		 * back after another reset or two.
+		 */
 
 		if (portstatus & USB_PORT_STAT_ENABLE)
 			break;
-- 
2.47.3



