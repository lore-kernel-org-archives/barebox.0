Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-yh0-x22a.google.com ([2607:f8b0:4002:c01::22a])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WqIoU-0001cm-N3
 for barebox@lists.infradead.org; Fri, 30 May 2014 09:09:23 +0000
Received: by mail-yh0-f42.google.com with SMTP id t59so1336271yho.1
 for <barebox@lists.infradead.org>; Fri, 30 May 2014 02:09:01 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <1401440856-6145-2-git-send-email-holgerschurig@gmail.com>
References: <1401440856-6145-1-git-send-email-holgerschurig@gmail.com>
 <1401440856-6145-2-git-send-email-holgerschurig@gmail.com>
Date: Fri, 30 May 2014 11:09:01 +0200
Message-ID: <CAOpc7mHPOyZzj2=___XBMLhxr2CZkTz5kkifyLAZOi1-OLb_zw@mail.gmail.com>
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
Subject: Re: [PATCH 01/10] drvlist: factor the driver list out of 'devinfo'
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

barebox:/ drvinfo
Driver  Device(s)
-------------------
imx-gpio
        209c000.gpio
        20a0000.gpio
        20a4000.gpio
        20a8000.gpio
        20ac000.gpio
        20b0000.gpio
        20b4000.gpio
imx6-ccm
        20c4000.ccm
imx-iomuxv3
        20e0000.iomuxc
imx-gpt
        2098000.gpt
...
mem
        mem0
        mem1
barebox-environment

Use 'devinfo DEVICE' for more information
barebox:/

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
