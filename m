Delivery-date: Tue, 19 Sep 2023 16:17:38 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qibXn-003Ty2-7h
	for lore@lore.pengutronix.de; Tue, 19 Sep 2023 16:17:38 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qibXl-0000Du-4p
	for lore@pengutronix.de; Tue, 19 Sep 2023 16:17:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=J6ZmpWvLMrsRd/mhrIrg9iJowJNnHoAuawyyG22L2sY=; b=0Zo6QXj1NBPQPHU4YBhB6lCJ0d
	TO0YeHx7wEeFeYNI/y5uPwKkJvkNnOL4c57VwDc+fMPEfFp2RKtz0IoWgl6tgAoW9W53/hP3KoGgF
	XLYFt7Y2tAoE3XZMJ2nQWI20kh8tpnV9oea7fVKCX9IH1YFcgW/WL2IEAe1cSWI5SnmsoQ9kw3Uko
	tLBt+sKCOZDohAfC2vJxXtLb/8SkCisdBMxOdIigcGf+aNuJjiunqav/3vuxXe4DgtObvrn5wPBRT
	p4sv9wQ3GdHRm0ylDvSMJWmhfy1C1duiuaDClbAcNKKEhWM0rGcaIYj0D4cBG0quZ7QIaOdHSxHhQ
	SMrElpAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qibWL-000cqu-1A;
	Tue, 19 Sep 2023 14:16:09 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qibWE-000cnc-1h
	for barebox@lists.infradead.org;
	Tue, 19 Sep 2023 14:16:07 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qibWD-0007y9-2S; Tue, 19 Sep 2023 16:16:01 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qibWC-007Ten-MI; Tue, 19 Sep 2023 16:16:00 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qibWC-000BZL-1y;
	Tue, 19 Sep 2023 16:16:00 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: rcz@pengutronix.de,
	mfe@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 19 Sep 2023 16:15:52 +0200
Message-Id: <20230919141552.44037-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230919_071602_575435_44149720 
X-CRM114-Status: GOOD (  13.62  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] Documentation: boards: imx: add some HAB documentation
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We could use some extra documentation on how to use the hab command to
fuse a SoC and what output should be expected. Add this to the
documentation. Procedure was done with HABv4 on i.MX8MM, which is not
yet upstream[1], but should be equivalent for i.MX6.

[1]: https://lore.barebox.org/barebox/20230705144219.504194-1-r.czerwinski@pengutronix.de/

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/boards/imx.rst | 47 ++++++++++++++++++++++++++++++++++++
 1 file changed, 47 insertions(+)

diff --git a/Documentation/boards/imx.rst b/Documentation/boards/imx.rst
index 17465efdd9be..5a4f52b392d5 100644
--- a/Documentation/boards/imx.rst
+++ b/Documentation/boards/imx.rst
@@ -178,6 +178,53 @@ It must be included in the board's flash header:
 
 Analogous to HABv4 options and a template exist for HABv3.
 
+To verify HAB working as intended, install the ``barebox-*-s.img`` onto the
+boot medium and trigger a power-on reset. barebox will read the HAB log on
+startup and report any errors it finds. A good unfused boot looks like this::
+
+  HABv4: Status: Operation completed successfully (0xf0)
+  HABv4: Config: Non-secure IC (0xf0)
+  HABv4: State: Non-secure state (0x66)
+  HABv4: No HAB Failure Events Found!
+
+To have the bootrom verify the barebox binary, the SRK hash needs to be burnt
+into the fuses. As fuses can't be unburnt, the ``hab`` command should be used
+instead of direct device access to not risk writing unrelated fuses::
+
+  barebox$ hab -p -s SRK_1_2_3_4_fuse.bin
+
+Afterwards, images signed with a different key will trigger errors at barebox
+startup, but system will still be able to boot to shell.
+
+To have the BootROM refuse booting differently signed images, the ``SRK_LOCK``
+fuse needs to be burnt::
+
+  barebox$ hab -p -l
+
+On next startup, barebox will report that the system is now locked::
+
+  HABv4: Status: Operation completed successfully (0xf0)
+  HABv4: Config: Secure IC (0xcc)
+  HABv4: State: Trusted state (0x99)
+  HABv4: No HAB Failure Events Found!
+
+This can also be seen with the ``hab -i`` command::
+
+  Current SRK hash: <some non-zero value>
+  secure mode
+
+Similarly, on supported SoCs, the ``bootrom -l`` command will indicate that
+device is closed. Example output after booting via ``imx-usb-loader``::
+
+
+  [e0] Internal use
+  [11] Boot mode is Boot from Serial Download
+  [23] Secure config is Closed
+  [41] FUSE_SEL_VALUE Fuse is blown
+  [d0] Enters serial download processing
+  [a0] Image authentication result: PASS (0x000000f0) @3506438144 ticks
+  [00] End of list
+
 Secure Boot on i.MX6
 ~~~~~~~~~~~~~~~~~~~~
 
-- 
2.39.2



