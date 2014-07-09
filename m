Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.visioncatalog.com ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X4u8n-0003Ks-KJ
 for barebox@lists.infradead.org; Wed, 09 Jul 2014 15:50:42 +0000
Message-ID: <1404921012.3612.15.camel@lws-gamez.phytec.de>
From: Teresa Gamez <t.gamez@phytec.de>
Date: Wed, 09 Jul 2014 17:50:12 +0200
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
Subject: AM335x MLO images broken
To: s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org

Hello Sascha,

since 

commit d1ec6fb0c9bb66939e85964c2f5214b117c78ecf
Author: Sascha Hauer <s.hauer@pengutronix.de>
Date:   Mon Jul 7 14:13:14 2014 +0200

    ARM: OMAP: Do not show MLO/SPI image options with OMAP_MULTI_BOARDS


the creation of a proper MLO image is not working any more. When I run 
make am335x_mlo_defconfig && make I get:
..
images built:
barebox-am33xx-phytec-phycore.img
barebox-am33xx-beaglebone.img

instead of the expected

barebox-am33xx-phytec-phycore-mlo.img
barebox-am33xx-beaglebone-mlo.img

and they also won't work.

Teresa


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
