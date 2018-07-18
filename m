Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-it0-x22f.google.com ([2607:f8b0:4001:c0b::22f])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ffm7J-0007bR-CV
 for barebox@lists.infradead.org; Wed, 18 Jul 2018 13:03:44 +0000
Received: by mail-it0-x22f.google.com with SMTP id w16-v6so4028366ita.0
 for <barebox@lists.infradead.org>; Wed, 18 Jul 2018 06:03:31 -0700 (PDT)
MIME-Version: 1.0
From: Giuseppe Levi <giuseppe.levi@gmail.com>
Date: Wed, 18 Jul 2018 15:02:48 +0200
Message-ID: <CAPPP46SniSuaZPfHGgb3YyvwDsW2jz6UwXLaNP5XL1PbF8_eWg@mail.gmail.com>
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
Subject: qemu and barebox
To: barebox@lists.infradead.org

Hi all,
i'm trying to run barebox using qemu because I need to develop and
emulate a spacial boot configuration of the CERN White Rabbit switch
(http://white-rabbit.web.cern.ch/).
I used  the ARCH=arm
and CROSS_COMPILE=aarch64-linux-gnu-

Selected the qemu virt board in menuconfig.

Compilation seems ok but when trying
qemu-system-aarch64 -m 2048M -cpu cortex-a57 -machine virt -display
none -serial stdio -kernel barebox

The system does not give me any output eve if is running using 100% of
one core on my 4 core machine.

The final goal would be to setup barebox to boot from network and then
arrange a bootp server un another virtual machine.

What I'm doing wrong ? is the CPU type cortex-a57 correct even if in
menuconfig the type is market as Atemel-AT91 ?



Thenks, Giuseppe Levi

-- 
Dr. Giuseppe Levi
Physics Dpt and INFN
viale Berti Pichat 6/2
40127 BOLOGNA
Mobile: +39 393 0086704

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
