Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mo6-p00-ob.smtp.rzone.de ([2a01:238:20a:202:5300::9])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gSjAq-0005Kx-NX
 for barebox@lists.infradead.org; Fri, 30 Nov 2018 13:49:43 +0000
Received: from odin.home.erwinrol.com by smtp.strato.de (RZmta 44.6 DYNA|AUTH)
 with ESMTPSA id L03290uAUDnOITj
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (curve secp521r1 with
 521 ECDH bits, eq. 15360 bits RSA))
 (Client did not present a certificate)
 for <barebox@lists.infradead.org>;
 Fri, 30 Nov 2018 14:49:24 +0100 (CET)
Message-ID: <1543585763.5085.14.camel@erwinrol.com>
From: Erwin Rol <mailinglists@erwinrol.com>
Date: Fri, 30 Nov 2018 14:49:23 +0100
Mime-Version: 1.0
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
Subject: imx6 usb update
To: Barebox List <barebox@lists.infradead.org>

Hallo all,

I have my barebox running on a iMx6 (phyBOARD-Segin + phyCORE-i.MX 6UL
Modul).

Loading via USB works fine, and via DFU I can upload a barebox image
and use barebox_update to flash barebox in NAND.

Is it possible to have DFU correctly flash barebox, without first
upload a image to /tmp/barebox and than use barebox_update ?

And a second question is it possible to detect if barebox was booted
from NAND or from USB via imx-loader ? I woud like to use that to start
the system normal when it boots from NAND but go in DFU update mode
when it was started via imx-usb-loader.

As always hints and tips are very welcome,

Erwin



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
