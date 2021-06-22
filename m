Delivery-date: Tue, 22 Jun 2021 10:09:29 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lvbTN-0007dA-N8
	for lore@lore.pengutronix.de; Tue, 22 Jun 2021 10:09:29 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lvbTM-0000Az-J6
	for lore@pengutronix.de; Tue, 22 Jun 2021 10:09:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=DRMIrs0H6psB6eveDbIvmMIMKZrHopu5gxHVwvUlgKw=; b=MtFf9SMyhS8qA0
	dXveuzrjY5rWsO1eH0hZjB+kre8SYfW8MoTWh0H+MPLzyRWtwYyW2CUKegwjx7OuAgMYseFFUbxiN
	bqMLhpPsM6aINC8nnbjYBQklo6SeCTQ9TLhzW9daPeThbn7tcKVSwcrnhAFjIArqfaJhLMZxL8uVT
	2G1wZnY5B0PyTklqZneeaDY6iVvoMEFsVW6iS+QFDs+0g2A9g5/Tqv29VnmPF/NBuwXiUhZVk2Hod
	GEqne3qlvepbIBRYt6QDMLR0t+ERaxOMgNw/W63uEnMI+HRJw/B2BGpmikdJCi3j90ry0v+pF/E2a
	oaRXXRfKicz28IS20oPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lvbSG-006Anp-6y; Tue, 22 Jun 2021 08:08:20 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lvbSC-006AnO-4a
 for barebox@lists.infradead.org; Tue, 22 Jun 2021 08:08:17 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lvbS9-00007I-5t; Tue, 22 Jun 2021 10:08:13 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lvbS8-0007Nx-QS; Tue, 22 Jun 2021 10:08:12 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Alexander Dahl <ada@thorsis.com>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 22 Jun 2021 10:08:11 +0200
Message-Id: <20210622080811.28335-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210622_010816_221400_6D177F15 
X-CRM114-Status: GOOD (  15.42  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: at91: sama5d27_som1_ek: populate MAC address from EEPROM
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

With the latest NVMEM enhancements merged, barebox networking core now
always consults NVMEM cells referenced in the network controller
device tree node before it falls back to randomizing a new address.

The SAM5D27-SOM1 has a 256 byte EEPROM, which holds a MAC address in its
last 6 bytes. Describe this in the device tree, so boards using the SoM
will get an unique MAC address assigned and fixed up into the kernel
device tree. This change can be dropped again when/if the change is
submitted and applied upstream.

Reported-by: Alexander Dahl <ada@thorsis.com>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/dts/at91-sama5d27_som1.dtsi   | 18 ++++++++++++++++++
 arch/arm/dts/at91-sama5d27_som1_ek.dts |  2 +-
 2 files changed, 19 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/dts/at91-sama5d27_som1.dtsi

diff --git a/arch/arm/dts/at91-sama5d27_som1.dtsi b/arch/arm/dts/at91-sama5d27_som1.dtsi
new file mode 100644
index 000000000000..0d84c45f9263
--- /dev/null
+++ b/arch/arm/dts/at91-sama5d27_som1.dtsi
@@ -0,0 +1,18 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+
+#include "sama5d2.dtsi"
+
+&macb0 {
+	nvmem-cells = <&macaddr>;
+	nvmem-cell-names = "mac-address";
+};
+
+&{/ahb/apb/i2c@f8028000/at24@50} {
+	#address-cells = <1>;
+	#size-cells = <1>;
+
+	macaddr: mac-address@fa {
+		reg = <0xfa 6>;
+		label = "mac-address";
+	};
+};
diff --git a/arch/arm/dts/at91-sama5d27_som1_ek.dts b/arch/arm/dts/at91-sama5d27_som1_ek.dts
index 97a326dd2b26..1a704b42680f 100644
--- a/arch/arm/dts/at91-sama5d27_som1_ek.dts
+++ b/arch/arm/dts/at91-sama5d27_som1_ek.dts
@@ -4,7 +4,7 @@
  */
 
 #include <arm/at91-sama5d27_som1_ek.dts>
-#include "sama5d2.dtsi"
+#include "at91-sama5d27_som1.dtsi"
 
 / {
 	chosen {
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

