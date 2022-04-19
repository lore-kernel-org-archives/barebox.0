Delivery-date: Tue, 19 Apr 2022 10:41:52 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ngjQn-007dyf-NS
	for lore@lore.pengutronix.de; Tue, 19 Apr 2022 10:41:52 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ngjQl-0006de-2G
	for lore@pengutronix.de; Tue, 19 Apr 2022 10:41:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9tBWu4u4oQf64WcfdA+OaGWTf2x2r67nLSXkIiqCtek=; b=IgshF6N6h+zMXF
	WFkKFsgrmqbkjtQ6XVZ+zgr4BOzy8/CFjUuYQczdPn3MMgheWPyvsvhMFm5xH6x/S0HL5ISMGZxpP
	4ho4Kq1zvOLPjqE6/RCm3hI3DPSykz4QGFD0N+37r7bI4h3Q4FtOZ5FNM8d8AS7rtIxJ3QZ+h4s0D
	3Jzl+h1Mv8VZUMDZXnSXz7/4pFdVz/okzt9M73ibKKwLZrqla1B+dDGbA1swgp4jCsydT9uP5wzmK
	nju78JXokPE3Tp931DiwFbFtF8mfI4c7fOZ30mWFQpcl3kTqYQyiWaqMpPK5BzJs/VZONin1T4IJu
	IJ3w89kDczjGk6g19qjg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ngjPF-002MoA-4v; Tue, 19 Apr 2022 08:40:17 +0000
Received: from cpanel.siel.si ([46.19.9.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ngjP9-002Mmn-92
 for barebox@lists.infradead.org; Tue, 19 Apr 2022 08:40:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=norik.com; 
 s=default;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:
 Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=cOFMy/jJvLBoIPWWMYDweJ1o3xvQuZkF0nwu5K0HHFc=; b=aH2vGGFGNbYw4+Nyco3vtPBs+7
 EIvg6ZHh/2IHUXYUEHIlda2T5vN69/LKKHO1ZrCp6CoJCl/BjoMjw6kdkFu0G6bs5TwWo+f/2Hi8j
 Emrm2OcI9dmklymaEYkER0O4FwXn6KalWfqzVpVx2PSVxo74w6B2AmeCaPKRKARJtVzt2DybAXYfZ
 5bsTqpIlIuFH3Q7sokpXklYdoD7ozoOQFQgWed3e2XxjCad6mg0LP3FPWm3WpIqhCFe8qvb+1Cud1
 VaZhpRLl3wHVh/typRl9HbtxoDx/HWvcjl4QToC+a3lW0JqKjCAejbPUWZII6NKmc48TQzDLRUcoV
 GM1+u6LA==;
Received: from 89-212-21-243.static.t-2.net ([89.212.21.243]:47500
 helo=localhost.localdomain)
 by cpanel.siel.si with esmtpsa (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (Exim 4.95)
 (envelope-from <andrej.picej@norik.com>) id 1ngjOs-008P51-C3;
 Tue, 19 Apr 2022 10:40:01 +0200
From: Andrej Picej <andrej.picej@norik.com>
To: barebox@lists.infradead.org
Cc: upstream@phytec.de
Date: Tue, 19 Apr 2022 10:39:46 +0200
Message-Id: <20220419083946.151251-1-andrej.picej@norik.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - cpanel.siel.si
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - norik.com
X-Get-Message-Sender-Via: cpanel.siel.si: authenticated_id:
 andrej.picej@norik.com
X-Authenticated-Sender: cpanel.siel.si: andrej.picej@norik.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220419_014011_833960_0B5C77DB 
X-CRM114-Status: UNSURE (   5.21  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] ARM: pbab01: allow USB-OTG port runtime configuration
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Since commit a5a4c1d5a3 ("dts: update to v5.13-rc1"), which synced
kernel dts, USB-OTG port on phyFLEX board was set to work only in
peripheral mode. This has to do with phyFLEX baseboard hardware bug,
which prevents correct USB OTG ID pin detection in kernel code.

Unlike linux kernel, barebox doesn't support OTG auto-detection mode via
ID pin. In barebox, user has to select desired USB mode of operation by
setting 'otg.mode' variable. Thus delete 'dr_mode' property from dts to
be able to later select USB OTG operating mode at runtime (either host
or peripheral).

Signed-off-by: Andrej Picej <andrej.picej@norik.com>
---
 arch/arm/dts/imx6qdl-phytec-pbab01.dtsi | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/dts/imx6qdl-phytec-pbab01.dtsi b/arch/arm/dts/imx6qdl-phytec-pbab01.dtsi
index 991c7e4fab..36870facdd 100644
--- a/arch/arm/dts/imx6qdl-phytec-pbab01.dtsi
+++ b/arch/arm/dts/imx6qdl-phytec-pbab01.dtsi
@@ -15,6 +15,10 @@
 	status = "okay";
 };
 
+&usbotg {
+	/delete-property/ dr_mode;
+};
+
 #ifdef USE_STATE_EXAMPLE
 #include "state-example.dtsi"
 #endif
-- 
2.25.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

