Delivery-date: Mon, 14 Jul 2025 09:34:11 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ubDhT-00HKWb-2C
	for lore@lore.pengutronix.de;
	Mon, 14 Jul 2025 09:34:11 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ubDhT-0004UW-4w
	for lore@pengutronix.de; Mon, 14 Jul 2025 09:34:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=zjDDOsyv7/RkWsv30uk6huMt+9NweetiT01/V+VrV1w=; b=EBC5JhQJi3bBj9kOQbdHjAJ5yh
	G8Yi2TYblGL+GXYb22pKF3AQojbg26w76QtP0CWXnXolI6WyXG6ASLDAlLvpVO94zrAnioQur18Hl
	W/ESftnJncBjwrk7qVbAe50jz18xGOsUdXD+s4UH8KUhP9t+nOQVNKoI4f3ITdmiCiTBAJStljlLl
	Roj9d0uL/95eZw01L1GyRBJ+MfE/PjSOTZpwO3EVkmVe9hi9GDL2OpF6r2t4YV1n0X4ishSd8f60Z
	Am3V/IAw4F7pE5OoWtUmotm/Un9oFkxPF3Vw92H8+wd5cs6wUaQWySN0/Nuk6Q1p5fqe0h6Dydf9s
	x+zFLLHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ubDgx-00000001U3A-1dgZ;
	Mon, 14 Jul 2025 07:33:39 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ubDMt-00000001RFd-1xES
	for barebox@lists.infradead.org;
	Mon, 14 Jul 2025 07:12:57 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1ubDMp-0000hT-Ga; Mon, 14 Jul 2025 09:12:51 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Gwenhael Goavec-Merou <gwenhael.goavec-merou@trabucayre.com>,
	Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon, 14 Jul 2025 09:12:48 +0200
Message-Id: <20250714071249.2428110-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250714_001255_502710_E45F0F0F 
X-CRM114-Status: UNSURE (   8.19  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] serial: cadence: support console= and earlycon= fixups
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

If we tell the serial driver core about the names of the Linux
console and earlycon driver, barebox can fix up the console= and
earlycon= arguments without having to hardcode Linux boot arguments.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 drivers/serial/serial_cadence.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/serial/serial_cadence.c b/drivers/serial/serial_cadence.c
index bda3269106c7..52b488e80f0a 100644
--- a/drivers/serial/serial_cadence.c
+++ b/drivers/serial/serial_cadence.c
@@ -212,6 +212,9 @@ static int cadence_serial_probe(struct device *dev)
 	cdev->getc = cadence_serial_getc;
 	cdev->flush = cadence_serial_flush;
 	cdev->setbrg = priv->clk ? cadence_serial_setbaudrate : NULL;
+	cdev->linux_console_name = "ttyPS";
+	cdev->linux_earlycon_name = "cdns";
+	cdev->phys_base = priv->regs;
 
 	cadence_serial_init_port(cdev);
 
-- 
2.39.5



