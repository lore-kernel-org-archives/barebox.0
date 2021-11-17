Delivery-date: Wed, 17 Nov 2021 14:02:20 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mnKZw-00060N-7z
	for lore@lore.pengutronix.de; Wed, 17 Nov 2021 14:02:20 +0100
Received: from bombadil.infradead.org ([198.137.202.133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mnKZv-0001kw-De
	for lore@pengutronix.de; Wed, 17 Nov 2021 14:02:20 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5DWPd7/3S2AFC3HJmXNfsc7JkA2TnQN+YgLZlZeCNw0=; b=FjIdTQxj31Yya9
	O5KWETs+UVHLB7o7+CrAKCgPYipqkSt0I/WZOZNi1iNSbsk5RjZ+MeTdvi+y3A7y2sXDc1WWmepTF
	jXOY106sk+3pbwqVMSfGU+BYuQx+8R6mx2QONKblMOqlEb6tUVh8u4qa1r1Be35mSTEKn9S7DlK0b
	diCHKEKLa72R6A7dpcp4ZY7zBGlK6cRl+sbS//4+snR2MMSq3xWmAuIbUo8CxftlmnaPBwQUz1qWc
	74Ag3Fp93s9BZ3YDRIKHc7JW+vyqwJDu4rt2w+79xc7V9Zs15a/ldkKH/dxwiLf7Q9REBR26vf9+E
	bOpDBlvgHgbyldJxPsbQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mnKYY-004lzW-Qq; Wed, 17 Nov 2021 13:00:54 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mnKYU-004lyk-CS
 for barebox@lists.infradead.org; Wed, 17 Nov 2021 13:00:51 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1mnKYQ-0001Sh-8s; Wed, 17 Nov 2021 14:00:46 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1mnKYP-00AEFx-Pl; Wed, 17 Nov 2021 14:00:45 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 17 Nov 2021 14:00:43 +0100
Message-Id: <20211117130044.2437471-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211117_050050_445627_A00D04E8 
X-CRM114-Status: GOOD (  10.51  )
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
X-SA-Exim-Connect-IP: 198.137.202.133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] ARM64: qemu-virt: enable PCI support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We now have a driver for the PCI controller on QEMU, so define
HW_HAS_PCI. The barebox PCI implementation doesn't yet deal with 64-bit
addresses, so use -M virt,highmem=off by default.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/Kconfig                    | 1 +
 test/arm/qemu_virt64_defconfig.yaml | 2 +-
 2 files changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index a8b7bdeaa6ee..14aa7e26af29 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -276,6 +276,7 @@ config ARCH_ARM64_VIRT
 	select SYS_SUPPORTS_64BIT_KERNEL
 	select ARM_AMBA
 	select BOARD_ARM_VIRT
+	select HW_HAS_PCI
 
 endchoice
 
diff --git a/test/arm/qemu_virt64_defconfig.yaml b/test/arm/qemu_virt64_defconfig.yaml
index ed308591da53..5da5dfeb7e27 100644
--- a/test/arm/qemu_virt64_defconfig.yaml
+++ b/test/arm/qemu_virt64_defconfig.yaml
@@ -3,7 +3,7 @@ targets:
     drivers:
       QEMUDriver:
         qemu_bin: qemu
-        machine: virt
+        machine: virt,highmem=off
         cpu: cortex-a57
         memory: 1024M
         kernel: barebox-dt-2nd.img
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

