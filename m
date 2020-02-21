Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mailout11.rmx.de ([94.199.88.76])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j55Hc-0002PY-QT
 for barebox@lists.infradead.org; Fri, 21 Feb 2020 10:11:46 +0000
Received: from kdin01.retarus.com (unknown [172.19.17.48])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mailout11.rmx.de (Postfix) with ESMTPS id 48P6gS1GXLz3yfT
 for <barebox@lists.infradead.org>; Fri, 21 Feb 2020 11:11:32 +0100 (CET)
Received: from ppmail.arri.de (unknown [217.111.95.7])
 (using TLSv1 with cipher AES128-SHA (128/128 bits))
 (No client certificate requested)
 by kdin01.retarus.com (Postfix) with ESMTPS id 48P6gR2lHRz2xCD
 for <barebox@lists.infradead.org>; Fri, 21 Feb 2020 11:11:31 +0100 (CET)
From: Christian Eggers <ceggers@arri.de>
Date: Fri, 21 Feb 2020 11:11:11 +0100
Message-ID: <20200221101111.14668-1-ceggers@arri.de>
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
Subject: [PATCH] usb: rename "struct usb_configuration" to "struct usb_config"
To: barebox@lists.infradead.org
Cc: Christian Eggers <ceggers@arri.de>

struct usb_configuration in usb.h conflicts with struct
usb_configuration in usb/composite.h

The version in usb/composite.h is also defined in Linux, so rename the
other one.

Signed-off-by: Christian Eggers <ceggers@arri.de>
---
 include/usb/usb.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/include/usb/usb.h b/include/usb/usb.h
index d39de71aff..4847a3de36 100644
--- a/include/usb/usb.h
+++ b/include/usb/usb.h
@@ -68,7 +68,7 @@ struct usb_interface {
 	struct usb_endpoint_descriptor ep_desc[USB_MAXENDPOINTS];
 };
 
-struct usb_configuration {
+struct usb_config {
 	struct usb_config_descriptor desc;
 
 	unsigned char	no_of_if;	/* number of interfaces */
@@ -95,7 +95,7 @@ struct usb_device {
 
 	int configno;			/* selected config number */
 	struct usb_device_descriptor *descriptor; /* Device Descriptor */
-	struct usb_configuration config; /* config descriptor */
+	struct usb_config config; /* config descriptor */
 	struct devrequest *setup_packet;
 
 	int have_langid;		/* whether string_langid is valid yet */
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
