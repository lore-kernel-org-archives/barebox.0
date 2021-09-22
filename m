Delivery-date: Wed, 22 Sep 2021 08:57:55 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mSwCZ-0005HV-Ad
	for lore@lore.pengutronix.de; Wed, 22 Sep 2021 08:57:55 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mSwCX-0003EP-UH
	for lore@pengutronix.de; Wed, 22 Sep 2021 08:57:55 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tEJQgW0xN1ujWygw81us+b3gV2zOAcaJPn9urYZ9vIY=; b=UdaCNaxHFRwl8Q
	uFX1+JkFnQjSxBtN3BjTIveg0JsRnEflJFP7ej+qEbJqWg0AQjad1NGLOJLb6SdaHNlxW6bNn8eMb
	4G4HyvTglqzvkwQoTfj5eMoxxK5SQC10D8cvDz+AAR2zPb8kBAnT1h08MpoTNMF5Zv9O1vYROj4q6
	T8bEKJdoazQy46ZyQyI6lkO65QBBQ+K17GlqxnXSefBhxZr24JR06cyCTi/6jI3Yb+Na+LXtTnvdo
	2JfgdvBZT1xwpuxnhPfT3KIGux3cw87LerTDKNQVlNkw1jbBD/bp2QM149RTO7wVfbiED34n+hqqa
	rGRFxC97TB4DvRvtnK3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mSwAv-007BLp-4O; Wed, 22 Sep 2021 06:56:13 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mSw5Q-0079jT-HO
 for barebox@lists.infradead.org; Wed, 22 Sep 2021 06:50:34 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1mSw5N-0002AP-AH; Wed, 22 Sep 2021 08:50:29 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1mSw5M-0005Yq-AG; Wed, 22 Sep 2021 08:50:28 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Peter Rosin <peda@axentia.se>, Sam Ravnborg <sam@ravnborg.org>,
 Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 22 Sep 2021 08:49:59 +0200
Message-Id: <20210922065000.20970-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210922065000.20970-1-a.fatoum@pengutronix.de>
References: <20210922065000.20970-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210921_235032_644353_054328E8 
X-CRM114-Status: GOOD (  11.84  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/5] Documentation: boards: at91: remove done TODOs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

All DT-enabled boards are now in the at91_multi_defconfig.
The SAMA5 ones also generate first stage bootloaders with the same
config.

Cc: Sam Ravnborg <sam@ravnborg.org>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/boards/at91.rst | 14 ++++++++------
 1 file changed, 8 insertions(+), 6 deletions(-)

diff --git a/Documentation/boards/at91.rst b/Documentation/boards/at91.rst
index e45feee94733..199e4d653050 100644
--- a/Documentation/boards/at91.rst
+++ b/Documentation/boards/at91.rst
@@ -31,14 +31,18 @@ The resulting images will be placed under ``images/``:
 
 ::
 
-  barebox-groboards-sama5d27-giantboard.img
-  barebox-groboards-sama5d27-giantboard-xload-mmc.img
+  barebox-at91sam9x5ek.img
+  barebox-at91sam9263ek.img
   barebox-microchip-ksz9477-evb.img
+  barebox-microchip-ksz9477-evb-xload-mmc.img
   barebox-sama5d27-som1-ek.img
   barebox-sama5d27-som1-ek-xload-mmc.img
+  barebox-groboards-sama5d27-giantboard.img
+  barebox-groboards-sama5d27-giantboard-xload-mmc.img
+  barebox-skov-arm9cpu.img
 
-Older supported boards have yet to be migrated to multi-image and/or the
-new defconfig. The majority of these have a short entry here.
+Older supported boards have yet to be migrated to multi-image and device tree.
+The majority of these have a short entry here.
 For each board defconfig file(s) are noted but barebox may include additional
 defconfig files and may also include boards not included in the following.
 
@@ -54,7 +58,5 @@ This is a list of AT91 specific TODO items, listed in no particular order.
 
 * Update remaining boards to DT
 * Update remaing boards to support multi image boot
-* Include remaining boards in ``at91_multi_defconfig``
-* Get bootstrap working in combination with multi image
 * Introduce defaultenv2 for all boards
 * Add pwm driver (required to support backlight)
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

