Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from vsmx012.vodafonemail.xion.oxcs.net ([153.92.174.90])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9lpu-0007xx-T8
 for barebox@lists.infradead.org; Thu, 05 Mar 2020 08:26:32 +0000
Received: from vsmx004.vodafonemail.xion.oxcs.net (unknown [192.168.75.198])
 by mta-8-out.mta.xion.oxcs.net (Postfix) with ESMTP id 9A8C0F34F4A
 for <barebox@lists.infradead.org>; Thu,  5 Mar 2020 08:26:17 +0000 (UTC)
Received: from app-48.app.xion.oxcs.net (app-48.app.xion.oxcs.net [10.10.1.48])
 by mta-8-out.mta.xion.oxcs.net (Postfix) with ESMTPA id 8496419AF52
 for <barebox@lists.infradead.org>; Thu,  5 Mar 2020 08:26:15 +0000 (UTC)
Date: Thu, 5 Mar 2020 09:26:15 +0100 (CET)
From: Giorgio Dal Molin <giorgio.nicole@arcor.de>
Message-ID: <2105504494.1423.1583396775377@mail.vodafone.de>
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
Subject: barebox image for an spi flash (like m25p0) on an imx7 soc
To: barebox@lists.infradead.org

Hi,

does barebox support generating a bootloader image that's able to boot
from an spi nor flash (m25p0) on an imx7 soc ?

I'm currently able to read/write/erase the flash and I can also 'barebox_update'
the image on the flash but the imx7 does not want to boot from it.

After comparing a working u-boot image with what 'barebox_update' flashes I think
the problem is the barebox image does not have the proper binary layout.

Is this use case already implemented or is it still a TODO ?

thank you,
giorgio

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
