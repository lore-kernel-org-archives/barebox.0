Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-it0-x22c.google.com ([2607:f8b0:4001:c0b::22c])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fKn6A-0005FY-C6
 for barebox@lists.infradead.org; Mon, 21 May 2018 15:51:58 +0000
Received: by mail-it0-x22c.google.com with SMTP id c3-v6so21648237itj.4
 for <barebox@lists.infradead.org>; Mon, 21 May 2018 08:51:35 -0700 (PDT)
MIME-Version: 1.0
From: Pascal Vizeli <pascal.vizeli@syshack.ch>
Date: Mon, 21 May 2018 17:51:33 +0200
Message-ID: <CACvFaDfqmKOB20kdH=XeGRQv4e5spqCegjmaphsLhCOK_ZDSVA@mail.gmail.com>
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
Subject: RaspberryPi 1/2(/3)
To: barebox@lists.infradead.org

Hi,

I try to build a bootable barebox for raspberry with 2018.05.00 and buildroot:
https://github.com/home-assistant/hassos/tree/dev/buildroot-external

I build the origin rpi_defconfig but I'm was not able to boot the
'barebox.bin' and become a output on UART. I can boot the linux kernel
from rpi loader. If I try the barebox, it will be flash the green
light and if I disable the LED support, only the red power light is
seen.

I try also the RPi3 patches and end in same result.
I follow also this guide:
https://www.barebox.org/doc/latest/boards/bcm2835.html

Have anyone a idea what will be the problem or what I doing wrong?

Thanks for any support and hint what my brain do wrongly :)
Pascal

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
