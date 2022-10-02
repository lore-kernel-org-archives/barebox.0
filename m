Delivery-date: Sun, 02 Oct 2022 15:00:53 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oeyaT-003SSY-AN
	for lore@lore.pengutronix.de; Sun, 02 Oct 2022 15:00:53 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oeyaS-000815-4z
	for lore@pengutronix.de; Sun, 02 Oct 2022 15:00:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=tiK0sgyNs98HPDXBsxHvTGMOlW4SBAdGTe8DaObwIzI=; b=VuQKeLBPd/Q0Or6j6GEjpJcht4
	dmeabv2v7+UYjiB1aWAQxBJZ2u4z0wCcOf6Npl2vf9iOu56tCrxyZ7JXP7PBT0uR6GrO1WklzfdMH
	d1CqLgajnyZE1BMpYzof/m1JBQ8oPDSSELOm0U8SH2Sfa1/SFY7fe8oNvazof9CiGW27uzvlW93v/
	lMUAMQMoadoc+LZc0EVEEfD8SgZdbTao13URsc227tiRmdJ9dIQURJZqSuh7NbJ+owa947fxDSKOk
	dkROE1kpsdZCosXNIEnQ4l/LLYnTdJ4pvSI7uBllZmYOilD9GhZPAfDgKp3rSBQBdHDT+P6Euh66m
	VOT1KnNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oeyYb-001H6B-Ev; Sun, 02 Oct 2022 12:58:57 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oeyYX-001H5G-7Y
	for barebox@lists.infradead.org; Sun, 02 Oct 2022 12:58:54 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oeyYA-0007qG-4G; Sun, 02 Oct 2022 14:58:30 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oeyY9-004BTN-WC; Sun, 02 Oct 2022 14:58:28 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oeyY7-00EGj3-O0; Sun, 02 Oct 2022 14:58:27 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: hpa@zytor.com,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>,
	Borislav Petkov <bp@alien8.de>,
	Dave Hansen <dave.hansen@linux.intel.com>,
	x86@kernel.org,
	Jonathan Corbet <corbet@lwn.net>
Cc: barebox@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-doc@vger.kernel.org,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Sun,  2 Oct 2022 14:57:53 +0200
Message-Id: <20221002125752.3400831-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221002_055853_276563_28C07672 
X-CRM114-Status: GOOD (  10.38  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2] Documentation: x86: boot: reserve type_of_loader=13 for barebox
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

barebox[1], a bootloader for mostly ARM and MIPS embedded systems,
can also be built as EFI payload for x86[2] to provide redundant
power-fail safe, watchdog-supervised boot up.

Since its v2015.09.0 release, it has been booting Linux on x86 with
type_of_loader=0xff[3]. Reserve 13, the next free id, so that can be
used instead in the future.

[1]: https://www.barebox.org/
[2]: https://www.barebox.org/doc/latest/boards/efi.html
[3]: https://elixir.bootlin.com/barebox/v2022.09.0/source/common/efi/payload/image.c#L217

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - elaborate on what barebox is and add some links to commit
    message (Boris)

v1 was here:
https://lore.kernel.org/all/20220513143039.2065756-1-a.fatoum@pengutronix.de/
---
 Documentation/x86/boot.rst | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/x86/boot.rst b/Documentation/x86/boot.rst
index 894a19897005..240d084782a6 100644
--- a/Documentation/x86/boot.rst
+++ b/Documentation/x86/boot.rst
@@ -455,6 +455,7 @@ Protocol:	2.00+
 	11 Minimal Linux Bootloader
 	   <http://sebastian-plotz.blogspot.de>
 	12 OVMF UEFI virtualization stack
+	13 barebox
 	== =======================================
 
   Please contact <hpa@zytor.com> if you need a bootloader ID value assigned.
-- 
2.30.2



