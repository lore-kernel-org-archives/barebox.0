Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-yh0-x235.google.com ([2607:f8b0:4002:c01::235])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WqIlh-0007Dn-BH
 for barebox@lists.infradead.org; Fri, 30 May 2014 09:06:29 +0000
Received: by mail-yh0-f53.google.com with SMTP id i57so1314273yha.12
 for <barebox@lists.infradead.org>; Fri, 30 May 2014 02:06:07 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <1401440856-6145-9-git-send-email-holgerschurig@gmail.com>
References: <1401440856-6145-1-git-send-email-holgerschurig@gmail.com>
 <1401440856-6145-9-git-send-email-holgerschurig@gmail.com>
Date: Fri, 30 May 2014 11:06:07 +0200
Message-ID: <CAOpc7mGt74byOT3H5OmRLn3fs3-DkiEe9Zso_JSrAb3RatbQQQ@mail.gmail.com>
From: Holger Schurig <holgerschurig@gmail.com>
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
Subject: Re: [PATCH 08/10] bootm: beautify output
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

The output is now ...

Without -v:

    Loading ARM Linux zImage '/mnt/linux/arch/arm/boot/zImage'
    commandline: console=ttymxc0,115200n8 quiet root=/dev/ram rdinit=/sbin/init

With -v:

    Loading ARM Linux zImage '/mnt/linux/arch/arm/boot/zImage'
    OS image not yet relocated
    Loading initrd GZIP compressed '/mnt/image/boot/initrd.img.gz'
    initrd image not yet relocated
    Passing control to ARM zImage handler
    no OS load address, defaulting to 0x10707000
    no initrd load address, defaulting to 0x109c9000
    commandline: console=ttymxc0,115200n8 quiet root=/dev/ram rdinit=/sbin/init

    Starting kernel at 0x10707000, initrd at 0x109c9000, oftree at 0x10a98000...

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
