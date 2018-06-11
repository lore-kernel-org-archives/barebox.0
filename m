Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from vs10.datenmanufaktur-hosting.net ([185.138.26.202]
 helo=vs81.iboxed.net)
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fSGaV-0004MO-UF
 for barebox@lists.infradead.org; Mon, 11 Jun 2018 06:46:00 +0000
Date: Mon, 11 Jun 2018 06:39:32 +0000 (UTC)
From: Alexander Kurz <akurz@blala.de>
Message-ID: <alpine.DEB.2.20.1806110631180.5797@blala.de>
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
Subject: re: [RESEND v3 50/52] scripts: imx-image: Share the code to write
 barebox header
To: "Andrey Smirnov <andrew.smirnov@gmail.com>"@blala.de
Cc: barebox@lists.infradead.org

Hi Andrey,
there's something wrong with this patch,
when generating e.g. the kindle3 image (imx35 / kindle3_defconfig) 
with this patch, the generated imximage differs and the device wont
boot. "Share the code to ..." should not change the program behaviour.

Regards, Alexander

--- barebox.imximg_x4_1 2018-06-11 08:27:31.660011787 +0200
+++ barebox.imximg_x4_2 2018-06-11 08:27:26.676011669 +0200
@@ -1,6 +1,6 @@
 000000 ea0003fe eafffffe eafffffe eafffffe
 000010 eafffffe eafffffe eafffffe eafffffe
-000020 65726162 00786f62 00000000 00022000
+000020 65726162 00786f62 00000000 00000000
 000030 55555555 55555555 55555555 55555555
 *
 000050 00000000 00000000 00000000 00000000
@@ -25,12 +25,8 @@
 000510 00000000 00022000 00000000 00000000
 000520 00000000 00000000 00000000 00000000
 *
-001000 ea0003fe eafffffe eafffffe eafffffe
-001010 eafffffe eafffffe eafffffe eafffffe
-001020 65726162 00786f62 00000000 00022000
-001030 55555555 55555555 55555555 55555555
-*
-001050 00000000 00000000 00000000 00000000
+001020 00000000 00000000 00000000 00022000
+001030 00000000 00000000 00000000 00000000
 *
 001400 87f00400 000000b1 00000000 87eff814
 001410 00000000 87eff81c 87eff400 b17219e9


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
