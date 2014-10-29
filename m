Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x232.google.com ([2a00:1450:4010:c03::232])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XjV9v-0004xA-Nm
 for barebox@lists.infradead.org; Wed, 29 Oct 2014 15:27:40 +0000
Received: by mail-la0-f50.google.com with SMTP id hz20so190312lab.9
 for <barebox@lists.infradead.org>; Wed, 29 Oct 2014 08:27:16 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Wed, 29 Oct 2014 18:28:02 +0300
Message-Id: <1414596482-829-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH] Documentation: dts: add missed Ingenic Semiconductor vendor
 prefix
To: barebox@lists.infradead.org

We already have jz4755 and jz4780 Ingenic chips support,
but documentation for Ingenic devicetree vendor prefix is missed.

Based on this linux kernel commit:

    commit 52f31dc5fc817642c0b5a5bc5cdae6ab18e99987
    Author: Paul Burton <paul.burton@imgtec.com>
    Date:   Mon Jul 8 12:12:11 2013 +0100

        devicetree/bindings: add Ingenic Semiconductor vendor prefix

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 dts/Bindings/vendor-prefixes.txt | 1 +
 1 file changed, 1 insertion(+)

diff --git a/dts/Bindings/vendor-prefixes.txt b/dts/Bindings/vendor-prefixes.txt
index ac7269f..0cfdb01 100644
--- a/dts/Bindings/vendor-prefixes.txt
+++ b/dts/Bindings/vendor-prefixes.txt
@@ -65,6 +65,7 @@ ibm	International Business Machines (IBM)
 idt	Integrated Device Technologies, Inc.
 iom	Iomega Corporation
 img	Imagination Technologies Ltd.
+ingenic	Ingenic Semiconductor
 intel	Intel Corporation
 intercontrol	Inter Control Group
 isee	ISEE 2007 S.L.
-- 
2.1.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
