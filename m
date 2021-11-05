Delivery-date: Fri, 05 Nov 2021 13:23:42 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1miyFy-0001l2-0A
	for lore@lore.pengutronix.de; Fri, 05 Nov 2021 13:23:42 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1miyFw-0000K7-VR
	for lore@pengutronix.de; Fri, 05 Nov 2021 13:23:41 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/U279Lq72cXNPlRPZIwkF+aol5D7eIh3VcVPsZFxYho=; b=bYGOlTFjVDwHZc
	iZHJuLq7IGY3n/HCAGe4cNezAFt7dfhcLo2VAYZZ9Ftt49aA8jTVQ5S/ZtMovAJqbZeHvw7ZT6oVO
	LGtlXdhPccsJc6CmyGDYJDQ6ovixpkc6QG1pJ1iQALdmC9LgJu8ZXbB6Wajjk7+RzXlvnrhOmAd3E
	FQh06SPRuR7UIsN37eg23c4NlsK/H7XKCTeSYObftwO65FUqj0CXm0Xx4ge9lvXGNIRRwM6AJKdNJ
	bg9qFUaO8QdvBn4J4YTtI4f3695+71XoF9GvL8OCpWr3BzgAqll0vFs7nDyfmnSxpfZkVAMoikCC/
	VsSRoNHXwz699iA4jJTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1miyEX-00BFFf-1H; Fri, 05 Nov 2021 12:22:13 +0000
Received: from smtp93.iad3a.emailsrvr.com ([173.203.187.93])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1miyEP-00BFES-Dv
 for barebox@lists.infradead.org; Fri, 05 Nov 2021 12:22:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mev.co.uk;
 s=20190130-41we5z8j; t=1636114921;
 bh=aaValPZRnAOd0yj1HTAaUPwVdPpNGuKmsMt+b3isT0o=;
 h=From:To:Subject:Date:From;
 b=JElJvCQsjTjXcz3zLBOMrCNWfjMwu53nZHu2BX0bXqIJAoKJbDvnKL/hNNkRn5syn
 mu//N5baJRWfdb0D2NsGTH36gREpzZQUCJwTqz2UE+XDWMB02nh1dSMUbuGu7XzRju
 cDSMPh6nTPyrNEnEdiLqRHrBbage/B4w+sfmLyoQ=
X-Auth-ID: abbotti@mev.co.uk
Received: by smtp36.relay.iad3a.emailsrvr.com (Authenticated sender:
 abbotti-AT-mev.co.uk) with ESMTPSA id D5F603A78; 
 Fri,  5 Nov 2021 08:22:00 -0400 (EDT)
From: Ian Abbott <abbotti@mev.co.uk>
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>,
 Ian Abbott <abbotti@mev.co.uk>
Date: Fri,  5 Nov 2021 12:21:45 +0000
Message-Id: <20211105122146.29370-2-abbotti@mev.co.uk>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20211105122146.29370-1-abbotti@mev.co.uk>
References: <20211105122146.29370-1-abbotti@mev.co.uk>
MIME-Version: 1.0
X-Classification-ID: 6f09cc8c-29e8-4c57-a62d-ba4724a39c85-2-1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211105_052205_589797_A2048E70 
X-CRM114-Status: GOOD (  14.45  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] ARM: Terasic DE0-Nano-SoC/Atlas-SoC: Use upstream
 compatible string
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The upstream (Linux) 'compatible' string for the Terasic
DE0-Nano-SoC/Atlas-SoC board in
"dts/src/arm/socfpga_cyclone5_de0_nano_soc.dts" differs from the barebox
'compatible' string for the same board in
"arch/arm/dts/socfpga_cyclone5_de0_nano_soc.dts":

Linux: "terasic,de0-atlas"
barebox:  "terasic,de0-nano-soc"

That results in an incompatibility when trying to boot a bootloader spec
entry with a 'devicetree' key that refers to the DTB file built from the
Linux sources.  The barebox bootloader spec loader will ignore the entry
because the 'compatible' string in the root node of the DTB does not
match what barebox expects.

Remove the 'compatible' string list from
"arch/arm/dts/socfpga_cyclone5_de0_nano_soc.dts" so that barebox uses
the upstream compatible string list.  Also remove the 'model' string
("Terasic DE0-Nano-SoC/Atlas-SoC Kit") so that barebox uses the upstream
(and shorter!) model name ("Terasic DE-0(Atlas)").

Finally, update the `of_machine_is_compatible("terasic,de0-nano-soc")`
function call in `socfpga_init()` to use the "terasic,de0-atlas" string.

Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Signed-off-by: Ian Abbott <abbotti@mev.co.uk>
---
 arch/arm/boards/terasic-de0-nano-soc/board.c   | 2 +-
 arch/arm/dts/socfpga_cyclone5_de0_nano_soc.dts | 3 ---
 2 files changed, 1 insertion(+), 4 deletions(-)

diff --git a/arch/arm/boards/terasic-de0-nano-soc/board.c b/arch/arm/boards/terasic-de0-nano-soc/board.c
index 8e69319d17..c6036a41f9 100644
--- a/arch/arm/boards/terasic-de0-nano-soc/board.c
+++ b/arch/arm/boards/terasic-de0-nano-soc/board.c
@@ -24,7 +24,7 @@ static int phy_fixup(struct phy_device *dev)
 
 static int socfpga_init(void)
 {
-	if (!of_machine_is_compatible("terasic,de0-nano-soc"))
+	if (!of_machine_is_compatible("terasic,de0-atlas"))
 		return 0;
 
 	if (IS_ENABLED(CONFIG_PHYLIB))
diff --git a/arch/arm/dts/socfpga_cyclone5_de0_nano_soc.dts b/arch/arm/dts/socfpga_cyclone5_de0_nano_soc.dts
index 427f150fb4..c737b091a7 100644
--- a/arch/arm/dts/socfpga_cyclone5_de0_nano_soc.dts
+++ b/arch/arm/dts/socfpga_cyclone5_de0_nano_soc.dts
@@ -19,9 +19,6 @@
 #include "socfpga.dtsi"
 
 / {
-	model = "Terasic DE0-Nano-SoC/Atlas-SoC Kit";
-	compatible = "terasic,de0-nano-soc","altr,socfpga-cyclone5", "altr,socfpga";
-
 	chosen {
 		stdout-path = &uart0;
 
-- 
2.33.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

