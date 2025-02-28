Delivery-date: Fri, 28 Feb 2025 08:18:40 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tnudt-007xqB-1O
	for lore@lore.pengutronix.de;
	Fri, 28 Feb 2025 08:18:40 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tnudq-0004FO-PZ
	for lore@pengutronix.de; Fri, 28 Feb 2025 08:18:40 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=JIynSvoQpj6gGPShIAKjZaIfqfmOLBOkIEqtfsyUd3o=; b=UyhiOUEQpTnUIIfj9rU8hZZoWZ
	FanKpG3TlN6Pv+kwKtp1CUIcNXcwWwEHVrgptK9ZT4mGZrPxcrzhZ5tEZUBARu+cOKq2+kWiwsuxb
	gBCuuFrkI6qhOdamQoU/CA9MS8UNn8PKtrlTLGmVxOfiw2PtER8xEULQ6lAcdiu3U4nNOc351OYSP
	R88CRzA2cCdVmMsgj6YnKHoWAceKrAzQzPhTXsT64TiHA2T2PAWU7Rnk7l+Q8cmpEt+Vu9N4AfsX/
	yxavibD5PZmmlCO4Kl1xWvAWucOq12dBWzHjIz9yrH6rXEuRI1pUI6S9K0XRALosn4fpDwRBlHbto
	erT1DOCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tnudH-00000009xkt-3lrw;
	Fri, 28 Feb 2025 07:18:03 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tnucF-00000009xcV-2y52
	for barebox@lists.infradead.org;
	Fri, 28 Feb 2025 07:17:00 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tnuc6-0003kA-Fw; Fri, 28 Feb 2025 08:16:50 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tnuc6-003FtI-0T;
	Fri, 28 Feb 2025 08:16:50 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tnuc6-005CL4-0H;
	Fri, 28 Feb 2025 08:16:50 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 28 Feb 2025 08:16:49 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250228-am625-secure-v1-1-4002488ff5ed@pengutronix.de>
References: <20250228-am625-secure-v1-0-4002488ff5ed@pengutronix.de>
In-Reply-To: <20250228-am625-secure-v1-0-4002488ff5ed@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1740727009; l=1097;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=bm+tAeebW/A9IjyfBt1Zh3b6ACvHsoH8xK2Lvbykm2k=;
 b=fVwyzDx4avqrbijgoUYiriawJPy07fjcx54gT1QLZshGN6E8/efYljRrfrjH8YRUuyuPZcfUx
 prMEwn0eOiTBBaq9/IZiMp+fu6fa3UDyK8GajK8bW1MomtkRsNiyIMm
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250227_231659_759627_31DD1D8A 
X-CRM114-Status: UNSURE (   8.95  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 01/13] firmware: always generate sha256sum
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Right now we only generate the sha256 for firmware files that are
loaded from an external binary. Instead, always generate the sha256
which helps with upcoming support for checking the next image hash.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 firmware/Makefile | 6 +-----
 1 file changed, 1 insertion(+), 5 deletions(-)

diff --git a/firmware/Makefile b/firmware/Makefile
index 4cf61587d6..095d6f0e31 100644
--- a/firmware/Makefile
+++ b/firmware/Makefile
@@ -76,9 +76,6 @@ filechk_fwbin = { \
 	echo "_fwname_$(FWSTR):"				;\
 	printf '.ascii "%s"\n' 'firmware/$(FWNAME)\n'		;\
 	echo "\#endif" 						;\
-}
-
-__fwbin_sha = { \
 	echo "    .section .rodata.$(FWSTR).sha"		;\
 	echo "    .p2align ASM_LGPTR"				;\
 	echo ".global _fw_$(FWSTR)_sha_start"			;\
@@ -90,10 +87,9 @@ __fwbin_sha = { \
 
 filechk_fwbin_ext = { \
 	$(filechk_fwbin)					;\
-	$(__fwbin_sha)						;\
 }
 
-$(obj)/%.gen.S: FORCE
+$(obj)/%.gen.S: $(obj)/%.sha.bin FORCE
 	$(call filechk,fwbin,.rodata.$(FWSTR),)
 
 $(obj)/%.extgen.S: $(obj)/%.sha.bin FORCE

-- 
2.39.5



