Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-qt1-x841.google.com ([2607:f8b0:4864:20::841])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hai2I-0001re-Bj
 for barebox@lists.infradead.org; Tue, 11 Jun 2019 14:46:07 +0000
Received: by mail-qt1-x841.google.com with SMTP id 33so6661278qtr.8
 for <barebox@lists.infradead.org>; Tue, 11 Jun 2019 07:46:05 -0700 (PDT)
Date: Tue, 11 Jun 2019 10:46:03 -0400
Message-ID: <20190611104603.GC6199@t480s.localdomain>
From: Vivien Didelot <vivien.didelot@gmail.com>
In-Reply-To: <429f1bb0f0ae5c86d2d11be2e105eb5de6f59d1d.camel@pengutronix.de>
References: <20190610155835.18304-1-vivien.didelot@gmail.com>
 <429f1bb0f0ae5c86d2d11be2e105eb5de6f59d1d.camel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
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
Subject: Re: [PATCH] ARM: zii-rdu2: disable eth0 and eth1
To: Lucas Stach <l.stach@pengutronix.de>
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, barebox@lists.infradead.org

Hi Lucas,

On Tue, 11 Jun 2019 13:45:13 +0200, Lucas Stach <l.stach@pengutronix.de> wrote:
> Am Montag, den 10.06.2019, 11:58 -0400 schrieb Vivien Didelot:
> > The current support for the ZII RDU2 Board times out on eth0 and eth1
> > when booting 'net' from an alternative interface, like a USB Ethernet
> > dongle. eth0 is the DSA master interface and has no use within barebox,
> > as well as the gigabit interface eth1 which is wired to the switch
> > port 0. Disable them to allow Barebox to boot right away from network.
> 
> NACK.
> 
> With the just merged patches to the RDU2 environment the FEC interface
> is fully usable for regular network boot, which is what I use for my
> development setups.

Do you mean we can now use one of netleft, netaux or netright to tftpboot?

> As USB network boot requires additional hardware, I would say it's fair
> to require to change the environment on the boards used for DSA
> development.

I'd certainly agree with that if booting from a DSA slave is now possible.


Thanks,
Vivien

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
