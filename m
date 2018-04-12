Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phytec.co.uk ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f6YIA-0004rg-Mo
 for barebox@lists.infradead.org; Thu, 12 Apr 2018 09:13:20 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id E6323A002CE
 for <barebox@lists.infradead.org>; Thu, 12 Apr 2018 11:13:20 +0200 (CEST)
From: Daniel Schultz <d.schultz@phytec.de>
Date: Thu, 12 Apr 2018 11:13:02 +0200
Message-Id: <1523524382-19217-2-git-send-email-d.schultz@phytec.de>
In-Reply-To: <1523524382-19217-1-git-send-email-d.schultz@phytec.de>
References: <1523524382-19217-1-git-send-email-d.schultz@phytec.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH v2 2/2] ARM: dts: AM335x: Add keep-previous-content property
To: barebox@lists.infradead.org

Some of our customers may have data in the EEPROM region, which we newly
have assigned as state partition. This property should prevent them of
data loses.

Signed-off-by: Daniel Schultz <d.schultz@phytec.de>
---
 arch/arm/dts/am335x-phytec-state.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/dts/am335x-phytec-state.dtsi b/arch/arm/dts/am335x-phytec-state.dtsi
index fbc35b9..6bca597 100644
--- a/arch/arm/dts/am335x-phytec-state.dtsi
+++ b/arch/arm/dts/am335x-phytec-state.dtsi
@@ -23,6 +23,7 @@
 		backend-type = "raw";
 		backend = <&backend_state_eeprom>;
 		backend-stridesize = <40>;
+		keep-previous-content;
 
 		#address-cells = <1>;
 		#size-cells = <1>;
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
