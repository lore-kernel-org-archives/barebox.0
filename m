Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-io1-xd2d.google.com ([2607:f8b0:4864:20::d2d])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlpkC-0006BV-Kg
 for barebox@lists.infradead.org; Fri, 12 Jul 2019 07:13:26 +0000
Received: by mail-io1-xd2d.google.com with SMTP id h6so18233278iom.7
 for <barebox@lists.infradead.org>; Fri, 12 Jul 2019 00:13:24 -0700 (PDT)
MIME-Version: 1.0
References: <d00a48e4-406c-c4ae-7d2d-4c89c3428fda@eks-engel.de>
 <20190711203617.4014fbc3a8c357e2de2d422d@gmail.com>
In-Reply-To: <20190711203617.4014fbc3a8c357e2de2d422d@gmail.com>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Fri, 12 Jul 2019 00:13:11 -0700
Message-ID: <CAHQ1cqGrOd4PEpXT4-s+1cAtjkU3gnbaUK0-BoC7f1stbYP_sA@mail.gmail.com>
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
Subject: Re: MII command to read and write specific registers
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: Barebox List <barebox@lists.infradead.org>, Benjamin Beckmeyer <beb@eks-engel.de>

On Thu, Jul 11, 2019 at 10:36 AM Antony Pavlov <antonynpavlov@gmail.com> wrote:
>
> On Thu, 11 Jul 2019 15:30:01 +0200
> Benjamin Beckmeyer <beb@eks-engel.de> wrote:
>
> > Hey all,
> > is there a possibility to read/write specific registers from/to different MII addresses?
> >
> > I know that there is miitool but it just can give me the first 16 registers of a PHY.
> > But I need write specific registers e.g. MII addr 2 register 0 and read MII addr 2
> > register 1. I know uboot is having the mii command(exactly what I would need), and I
> > have seen that there were parameters for address and register in miitool but they
> > were deleted lastly.
> >
>
> Hi Benjamin!
>
> You can use /dev/mdio* devices for reading/writing MII registers.
> E.g.
>   md -s /dev/mdio0-phy00
>   mw -d /dev/mdio0-phy00 -w 0 0x12345678
>
> Just after barebox boot there is no /dev/mdio* devices.
> After network interface initialization (e.g. after ifup command) or
> after miitool command  the /dev/mdio* devices appear.
>

Adding to that, if you device doesn't have register layout detectable
by MII bus probe algorithm an arbitrary phydev can be forcefully
created using

  miitool -r <busno>:<addr>

Comes really handy when dealing with something other than PHY devices
(e.g reading switch registers).

Thanks,
Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
