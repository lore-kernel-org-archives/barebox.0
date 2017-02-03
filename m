Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-yb0-f173.google.com ([209.85.213.173])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cZeBi-00036N-BZ
 for barebox@lists.infradead.org; Fri, 03 Feb 2017 13:46:08 +0000
Received: by mail-yb0-f173.google.com with SMTP id w194so6007425ybe.0
 for <barebox@lists.infradead.org>; Fri, 03 Feb 2017 05:45:44 -0800 (PST)
MIME-Version: 1.0
From: Haris Papadopoulos <haris@amberbox.com>
Date: Fri, 3 Feb 2017 13:44:43 +0000
Message-ID: <CACmkAZEcG-VJCJt6va7fBamCV7BexSrQn3S8hBudyasyk97npA@mail.gmail.com>
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
Subject: Multiple root file systems
To: barebox@lists.infradead.org

Hi,

I am trying to create a system with one bootloader, one kernel and
multiple filesystems. I am going to use barebox bootchooser
(http://www.barebox.org/doc/latest/user/bootchooser.html)

My current /boot/nand file is as follows:


   #!/bin/sh

   [ -e /env/config-expansions ] && /env/config-expansions

   [ ! -e /dev/nand0.root.ubi ] && ubiattach /dev/nand0.root

   global.bootm.image="/dev/nand0.root.ubi.kernel"
   global.bootm.oftree="/dev/nand0.root.ubi.oftree"

   global.linux.bootargs.dyn.root="root=ubi0:root ubi.mtd=root
rootfstype=ubifs rw"

I would like to use two filesysyems with names root1 and root2. How
should I modify the above?

Thanks
Haris

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
