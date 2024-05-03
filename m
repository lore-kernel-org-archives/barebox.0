Delivery-date: Fri, 03 May 2024 12:33:13 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s2qE5-00H7mv-1c
	for lore@lore.pengutronix.de;
	Fri, 03 May 2024 12:33:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s2qE4-0001El-QU
	for lore@pengutronix.de; Fri, 03 May 2024 12:33:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=CAVuwYLJ3X1jpSwcxscp0OL1QMb8KVfgovtiSlvtzOc=; b=L8db6fcb1MdbVZfEJ4OqLBcW7T
	oNRdOqfUhC8/c+8/jXLxxwzHOufgpsNlkTH+a29bdMzPljJo1A9XatW1Yi+rP7vg+9C+vRMA037YS
	RaECwyHj7k3vPvKKUhZq+E1pX1mhN/V4mn2vQxME6ECJgU2rpXX40PNZugI7E76JUe7jXOjv2UqQq
	5yDtSLd5pUJdxUh2/HQJ9zKlmKQKjodw3qRf/Hyu0VXpHBSxJGDbsWZ7emZIu2OULn7ftDDYvvysa
	aFyHpYGRwXRaZJjB83/owjRyh/vlLnLnkcnP4HC70q8j8kVicqp1AxlsT39bTPFXWDiKuL0c2xaMN
	RCxO2bQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2qDd-0000000G3r4-2Flr;
	Fri, 03 May 2024 10:32:45 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2qDZ-0000000G3oV-1pru
	for barebox@lists.infradead.org;
	Fri, 03 May 2024 10:32:42 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s2qDQ-0000ye-2i; Fri, 03 May 2024 12:32:32 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s2qDP-00FgUP-MG; Fri, 03 May 2024 12:32:31 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s2qDP-005jqG-1w;
	Fri, 03 May 2024 12:32:31 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: mfe@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri,  3 May 2024 12:32:28 +0200
Message-Id: <20240503103230.1367842-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240503_033241_517520_A73E1B62 
X-CRM114-Status: GOOD (  15.99  )
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
X-Spam-Status: No, score=-5.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/3] firmware: support optional firmware in barebox proper
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

For firmware used in the prebootloader, missing firmware is handled
according to the CONFIG_MISSING_FIRMWARE_ERROR symbol:

  - If set, barebox will throw an error when assmebling the final image
    with a list of missing firmware

  - If unset, a warning will be printed for each barebox image that
    can't be built due to missing firmware and all

This replaced the previous behavior of make throwing an error due to a
missing dependency, which broke the ability to use a single config for
multiple platforms, where only some have missing firmware.

Nothing of the sort was done for firmware in barebox proper. We only
have that on Layerscape for PPA (EL3 Secure Monitor) and FMan (NIC).

With the addition of Layerscape to multi_v8_defconfig, building that
config now also throws aforementioned make errors.

This is now also resolved depending on CONFIG_MISSING_FIRMWARE_ERROR:

  - If set, an immediate make error occurs as before as we can't
    pinpoint which of the enabled barebox images will at runtime
    instantiate the driver that requires the firmware.

  - If unset, we continue build as normal and the size of the firmware
    as determined at runtime will be zero bytes. Code in barebox
    proper is expected to check for that and report an error.

Fixes: 9922f78ec58c3a7b8d28427f470edc469627c9cd.
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 firmware/Makefile | 24 ++++++++++++++++++------
 1 file changed, 18 insertions(+), 6 deletions(-)

diff --git a/firmware/Makefile b/firmware/Makefile
index 83ce77f510ba..d5e4cee8594b 100644
--- a/firmware/Makefile
+++ b/firmware/Makefile
@@ -61,7 +61,7 @@ filechk_fwbin = { \
 	echo "_fw_$(FWSTR)_start:"				;\
 	echo "\#if $(FWNAME_EXISTS)"				;\
 	echo "    .incbin \"$(fwdir)/$(FWNAME)\""		;\
-	echo "\#else"						;\
+	echo "\#elif defined(__PBL__)"				;\
 	echo "ASM_PTR _fwname_$(FWSTR)"				;\
 	echo "\#endif"						;\
 	echo ".global _fw_$(FWSTR)_end"				;\
@@ -102,13 +102,25 @@ $(obj)/%.sum: FORCE
 
 clean-files += *.sha.bin *.sum
 
-# The .o files depend on the binaries directly; the .S files don't.
-$(patsubst %.gen.o,$(obj)/%.gen.o, $(obj-pbl-y)): $(obj)/%.gen.o: $(fwdir)/%
+# This dependency is used if missing firmware should fail the build immediately
+fwdep-required-y = $(fwdir)/%
+# This dependency expands to nothing if the file doesn't exist. This allows
+# delaying the firmware check:
+#
+#   - to final assembly of the PBL image for pbl-firmware
+#   - to runtime for firmware in barebox proper
+#
+# This way, we allow users to build defconfigs with multiple images without requiring
+# them to install all firmware for all platforms if only few are of interest.
+fwdep-required-n = $$(wildcard $(fwdir)/%)
 
-# The same for pbl:
 .SECONDEXPANSION:
-$(patsubst %.gen.o,$(obj)/%.gen.pbl.o, $(obj-pbl-y) $(pbl-y)): $(obj)/%.gen.pbl.o: $$(wildcard $(fwdir)/%)
-$(patsubst %.extgen.o,$(obj)/%.extgen.pbl.o, $(pbl-fwext-y)): $(obj)/%.extgen.pbl.o: $$(wildcard $(fwdir)/%)
+# The .o files depend on the binaries directly if available; the .S files don't.
+$(patsubst %.gen.o,$(obj)/%.gen.pbl.o, $(obj-pbl-y) $(pbl-y)): $(obj)/%.gen.pbl.o: $(fwdep-required-n)
+$(patsubst %.extgen.o,$(obj)/%.extgen.pbl.o, $(pbl-fwext-y)): $(obj)/%.extgen.pbl.o: $(fwdep-required-n)
+# For barebox proper, firmware existance is either checked here
+# or in driver code by checking whether size != 0
+$(patsubst %.gen.o,$(obj)/%.gen.o, $(obj-pbl-y)): $(obj)/%.gen.o: $(fwdep-required-$(CONFIG_MISSING_FIRMWARE_ERROR))
 
 pbl-y += $(pbl-fwext-y)
 
-- 
2.39.2



