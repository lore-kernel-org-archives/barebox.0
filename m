Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-yk0-x230.google.com ([2607:f8b0:4002:c07::230])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Wn6Ro-0001iA-VQ
 for barebox@lists.infradead.org; Wed, 21 May 2014 13:20:45 +0000
Received: by mail-yk0-f176.google.com with SMTP id q9so1547858ykb.7
 for <barebox@lists.infradead.org>; Wed, 21 May 2014 06:20:21 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <1400662482-23560-1-git-send-email-antonynpavlov@gmail.com>
References: <1400662482-23560-1-git-send-email-antonynpavlov@gmail.com>
Date: Wed, 21 May 2014 15:20:21 +0200
Message-ID: <CAOpc7mHG9eaRRWkYxazwRCeVrAXB_LPLuD2zPp8WLOj9yiTVnQ@mail.gmail.com>
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
Subject: Re: [PATCH] [RFC] [WIP] commands: add tree view capable lsusb
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Nice, I would just remove the extra empty lines. Linux' "lsusb -t" for
example produces this:

holger@desktop:~$ lsusb -t
/:  Bus 02.Port 1: Dev 1, Class=root_hub, Driver=ehci-pci/2p, 480M
    |__ Port 1: Dev 2, If 0, Class=hub, Driver=hub/8p, 480M
        |__ Port 1: Dev 27, If 0, Class=HID, Driver=usbhid, 1.5M
        |__ Port 2: Dev 4, If 0, Class=HID, Driver=usbhid, 1.5M
        |__ Port 6: Dev 126, If 0, Class=hub, Driver=hub/2p, 480M
/:  Bus 01.Port 1: Dev 1, Class=root_hub, Driver=ehci-pci/2p, 480M
    |__ Port 1: Dev 2, If 0, Class=hub, Driver=hub/6p, 480M

Also please add an entry into commands/Kconfig: And put it into the
info group, lsusb just shows something, it doesn't manipulate any
hardware.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
