Delivery-date: Tue, 27 Jun 2023 07:54:06 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qE1eR-005QY5-Bl
	for lore@lore.pengutronix.de; Tue, 27 Jun 2023 07:54:06 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qE1eO-0007nQ-Ni
	for lore@pengutronix.de; Tue, 27 Jun 2023 07:54:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IKvwX0SNfYJYPS1NdIZ16LAwsCscUIAOy68iRixQJUc=; b=ow39flb8lTpQmF
	MGpQgWPNSdLSrzWd9nEoxKqhYLuHF+IDAsw9C0g2JOUNUis7kzNq+EkLaRo8GjaiVnbGhEAbb46bj
	4puivo3tmSfE8zx7ZMSY20V+PXBajnevc39zvQ3MZMaGGCTqZhELXggpt3hXXbBdiuKMbSbKCo8iP
	DdXAt8+spkoXjrJHkR8TYvVineD9D85IQ2LHZae/QBadFwZxAebKJx2tpb7k4P6F3FRUJ8Ij9GWfb
	nQtDpi30P1ySnWjqnnJ3VsoqXfPMC9Xn9V+ZHeb7Rl5lFTOB85EVOaRfn5NxHIITuM0lSdjdIUfiX
	1ECFN6d2jHxRAl6R4v+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qE1dC-00ByIz-1c;
	Tue, 27 Jun 2023 05:52:50 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qE1d6-00ByDa-1F
	for barebox@lists.infradead.org;
	Tue, 27 Jun 2023 05:52:46 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qE1d3-0007LD-GO; Tue, 27 Jun 2023 07:52:41 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qE1d2-00AND7-On; Tue, 27 Jun 2023 07:52:40 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qE1d2-00GOt2-11;
	Tue, 27 Jun 2023 07:52:40 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue, 27 Jun 2023 07:52:35 +0200
Message-Id: <20230627055239.3908872-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230627055239.3908872-1-a.fatoum@pengutronix.de>
References: <20230627055239.3908872-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230626_225244_428492_F9DB6535 
X-CRM114-Status: GOOD (  11.92  )
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
Cc: uol@pengutronix.de, Ahmad Fatoum <a.fatoum@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH master v2 3/7] firmware: turn missing firmware into linker error
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Appending to firmware-y results in an assembly file being generated that
defines a section embedding the firmware in question verbatim via .incbin.
To update the assembly file as required, the target has a dependency on
the firmware. When the firmware is missing, the build will abort there.

In preparation for deferring missing PBL firmware errors till the very
end, let's remove the firmware dependency if the missing firmware file
is built into PBL and replace the .incbin with a reference to an ultimately
undefined variable.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 firmware/Makefile | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/firmware/Makefile b/firmware/Makefile
index ef99f617cab8..1888154ce86c 100644
--- a/firmware/Makefile
+++ b/firmware/Makefile
@@ -42,6 +42,7 @@ obj-pbl-y := $(addsuffix .gen.o, $(firmware-y))
 
 FWNAME    = $(patsubst $(obj)/%.extgen.S,%,$(patsubst $(obj)/%.gen.S,%,$@))
 FWSTR     = $(subst /,_,$(subst .,_,$(subst -,_,$(FWNAME))))
+FWNAME_EXISTS = $(if $(wildcard $(fwdir)/$(FWNAME)),1,0)
 
 filechk_fwbin = { \
 	echo "/* Generated by $(src)/Makefile */"		;\
@@ -50,7 +51,11 @@ filechk_fwbin = { \
 	echo "    .p2align $(ASM_LGPTR)"			;\
 	echo ".global _fw_$(FWSTR)_start"			;\
 	echo "_fw_$(FWSTR)_start:"				;\
+	echo "\#if $(FWNAME_EXISTS)"				;\
 	echo "    .incbin \"$(fwdir)/$(FWNAME)\""		;\
+	echo "\#else"						;\
+	echo "ASM_PTR _fwname_$(FWSTR)"				;\
+	echo "\#endif"						;\
 	echo ".global _fw_$(FWSTR)_end"				;\
 	echo "_fw_$(FWSTR)_end:"				;\
 }
@@ -88,7 +93,7 @@ clean-files += *.sha.bin *.sum
 $(patsubst %.gen.o,$(obj)/%.gen.o, $(obj-pbl-y)): $(obj)/%.gen.o: $(fwdir)/%
 
 # The same for pbl:
-$(patsubst %.gen.o,$(obj)/%.gen.pbl.o, $(obj-pbl-y) $(pbl-y)): $(obj)/%.gen.pbl.o: $(fwdir)/%
+$(patsubst %.gen.o,$(obj)/%.gen.pbl.o, $(obj-pbl-y) $(pbl-y)): $(obj)/%.gen.pbl.o: $(wildcard $(fwdir)/%)
 $(patsubst %.gen.o,$(obj)/%.extgen.pbl.o, $(pbl-y)): $(obj)/%.extgen.pbl.o: $(fwdir)/%
 
 pbl-y += $(addsuffix .extgen.o, $(fw-external-y))
-- 
2.39.2



