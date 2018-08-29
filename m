Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-yb0-x233.google.com ([2607:f8b0:4002:c09::233])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fv17Z-0000QF-6H
 for barebox@lists.infradead.org; Wed, 29 Aug 2018 14:06:58 +0000
Received: by mail-yb0-x233.google.com with SMTP id y8-v6so612279ybn.12
 for <barebox@lists.infradead.org>; Wed, 29 Aug 2018 07:06:46 -0700 (PDT)
MIME-Version: 1.0
From: Bogdan Harjoc <harjoc@gmail.com>
Date: Wed, 29 Aug 2018 17:06:34 +0300
Message-ID: <CAF4+tmpOXPrW55zBodV7Hv7ixFRzT_0w2Kk7YU2WWQ-g0cJdJQ@mail.gmail.com>
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
Subject: dwc2 USB host initialization issue
To: barebox@lists.infradead.org, u-boot@lists.denx.de

I am trying to initialize a dwc2 usb otg host using the u-boot dwc2
driver in u-boot and barebox and am trying to get past the port
power-up step. The controller is activated successfully once the Linux
kernel boots up and the mass storage devices are accessible, but in
u-boot and barebox it seems to not receive the

USB_PORT_STAT_C_CONNECTION
nor the
USB_PORT_STAT_C_ENABLE

port change status. In the bootloader, usb_get_port_status returns
0x510 (i.e. HIGH_SPEED | POWER | RESET), while under linux the status
after powering up the port is 0x101 (i.e. POWER | CONNECTION) and the
linux usb core then properly brings up the port.

I looked at the submitted usb requests, and didn't see any relevant
difference (bootloader vs linux). All I could see from the debug
output is that PwrOn2PwrGood time and HubContrCurrent are both zero in
barebox and nonzero in linux.

Could the cause be the fact that in the bootloader the port comes up
with HIGH_SPEED status ? Can I disable this flag during hub
initialization ? Or is there another probable cause for this ?

Regards,
Bogdan

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
