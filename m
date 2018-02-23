Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wr0-x232.google.com ([2a00:1450:400c:c0c::232])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1ep7lS-0002Qm-Ar
 for barebox@lists.infradead.org; Fri, 23 Feb 2018 07:27:38 +0000
Received: by mail-wr0-x232.google.com with SMTP id u49so13026314wrc.10
 for <barebox@lists.infradead.org>; Thu, 22 Feb 2018 23:27:18 -0800 (PST)
MIME-Version: 1.0
From: Yegor Yefremov <yegorslists@googlemail.com>
Date: Fri, 23 Feb 2018 08:26:56 +0100
Message-ID: <CAGm1_ksaqOepiKg2yRHaH2Bs+fur2ujDQEiDmaAD0HYADxj6Vw@mail.gmail.com>
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
Subject: linux.bootargs: export mtdparts from DTS
To: barebox <barebox@lists.infradead.org>

My board will be configured via DTS file, that contains an MTD
partition table [1]. How can it be automatically exported to
global.inux.bootargs.mtdparts?

[1] https://git.pengutronix.de/cgit/barebox/tree/arch/arm/dts/am335x-baltos-minimal.dts#n217

Yegor

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
