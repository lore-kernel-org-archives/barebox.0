Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mailout05.rmx.de ([94.199.90.90])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itrxl-000333-9C
 for barebox@lists.infradead.org; Tue, 21 Jan 2020 11:44:57 +0000
Received: from kdin01.retarus.com (unknown [172.19.17.48])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mailout05.rmx.de (Postfix) with ESMTPS id 4826CQ1p2Jz9tMl
 for <barebox@lists.infradead.org>; Tue, 21 Jan 2020 12:44:50 +0100 (CET)
Received: from ppmail.arri.de (unknown [217.111.95.7])
 (using TLSv1 with cipher AES128-SHA (128/128 bits))
 (No client certificate requested)
 by kdin01.retarus.com (Postfix) with ESMTPS id 4826CH30jBz2yvR
 for <barebox@lists.infradead.org>; Tue, 21 Jan 2020 12:44:43 +0100 (CET)
From: Christian Eggers <ceggers@arri.de>
Date: Tue, 21 Jan 2020 12:44:20 +0100
Message-ID: <20200121114421.24401-2-ceggers@arri.de>
In-Reply-To: <20200121114421.24401-1-ceggers@arri.de>
References: <20200121114421.24401-1-ceggers@arri.de>
MIME-Version: 1.0
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
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 2/3] usb: otg: Select CONFIG_PARAMETER
To: barebox@lists.infradead.org
Cc: Christian Eggers <ceggers@arri.de>, ceggers@gmx.de

Without CONFIG_PARAMETER, usb_register_otg_device() will always fail.

Signed-off-by: Christian Eggers <ceggers@arri.de>
---
 drivers/usb/otg/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/usb/otg/Kconfig b/drivers/usb/otg/Kconfig
index 2c094452b..20b4d7f8c 100644
--- a/drivers/usb/otg/Kconfig
+++ b/drivers/usb/otg/Kconfig
@@ -9,4 +9,5 @@ config USB_TWL4030
 
 config USB_OTGDEV
 	bool
+	select PARAMETER
 
-- 
Christian Eggers
Embedded software developer

Arnold & Richter Cine Technik GmbH & Co. Betriebs KG
Sitz: Muenchen - Registergericht: Amtsgericht Muenchen - Handelsregisternummer: HRA 57918
Persoenlich haftender Gesellschafter: Arnold & Richter Cine Technik GmbH
Sitz: Muenchen - Registergericht: Amtsgericht Muenchen - Handelsregisternummer: HRB 54477
Geschaeftsfuehrer: Dr. Michael Neuhaeuser; Stephan Schenk; Walter Trauninger; Markus Zeiler


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
