Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mo6-p00-ob.smtp.rzone.de ([2a01:238:20a:202:5300::2])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gS1E2-0001pr-94
 for barebox@lists.infradead.org; Wed, 28 Nov 2018 14:54:05 +0000
Received: from odin.home.erwinrol.com by smtp.strato.de (RZmta 44.6 DYNA|AUTH)
 with ESMTPSA id L03290uASErk6zU
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (curve secp521r1 with
 521 ECDH bits, eq. 15360 bits RSA))
 (Client did not present a certificate)
 for <barebox@lists.infradead.org>;
 Wed, 28 Nov 2018 15:53:46 +0100 (CET)
Message-ID: <1543416825.5085.11.camel@erwinrol.com>
From: Erwin Rol <mailinglists@erwinrol.com>
Date: Wed, 28 Nov 2018 15:53:45 +0100
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
Subject: imx6ul (phytec Segin board) USB/DFU
To: Barebox List <barebox@lists.infradead.org>

Hallo All,

I am trying to get USB device (DFU) to work on my Phytec Segin board
(imx6ul SOC). 

I can upload barebox with imx-usb-loader and it starts fine (so USB
hardware is working)

Than when barebox runs I want to put that same USB port in DFU mode and
update the nand flash (barebox, env, kernel, rootfs) via DFU.

But I can't get it to work, I assume USB device mode setup is missing
from the board setup, but I can't really find info on how to add it.

Any hints are very welcome.

- Erwin


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
