Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-vs1-xe36.google.com ([2607:f8b0:4864:20::e36])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3zes-0008Jw-Ao
 for barebox@lists.infradead.org; Tue, 18 Feb 2020 09:59:15 +0000
Received: by mail-vs1-xe36.google.com with SMTP id p14so12286756vsq.6
 for <barebox@lists.infradead.org>; Tue, 18 Feb 2020 01:59:13 -0800 (PST)
MIME-Version: 1.0
From: Yegor Yefremov <yegorslists@googlemail.com>
Date: Tue, 18 Feb 2020 10:58:42 +0100
Message-ID: <CAGm1_ku5kzBoxiRYks2uLYt1D6-QPB0vJm0DygF8a2WXTC6NoQ@mail.gmail.com>
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
Subject: musb is broken in master
To: barebox <barebox@lists.infradead.org>

I have bisected the musb driver on am335x (baltos system
arch/arm/dts/am335x-baltos-minimal.dts) from v2019.11.0 and this is
the result:

574eed3f6fcf056aa4c9e46c4b5224e3f7844d8d is the first bad commit
commit 574eed3f6fcf056aa4c9e46c4b5224e3f7844d8d
Author: Sascha Hauer <s.hauer@pengutronix.de>
Date:   Thu Dec 19 05:46:54 2019 +0100

    dts: update to v5.5-rc1

    Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

:040000 040000 4f6416a5af14d6328ef2c8ac46d9ac4a17a37404
525e33dda1e735ef2f633f4d99c501ba938a7263 M      dts

I need only the host functionality to mount a USB drive. My defconfig
can be found here [1].

Any idea what could have happened?

[1] https://github.com/visionsystemsgmbh/onrisc_br_bsp/blob/master/board/vscom/baltos/barebox/am335x_baltos_defconfig

Thanks.

Cheers,
Yegor

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
