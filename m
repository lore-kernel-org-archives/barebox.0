Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-io0-x244.google.com ([2607:f8b0:4001:c06::244])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fuqlh-0001b2-Bu
 for barebox@lists.infradead.org; Wed, 29 Aug 2018 03:03:42 +0000
Received: by mail-io0-x244.google.com with SMTP id q4-v6so3225361iob.8
 for <barebox@lists.infradead.org>; Tue, 28 Aug 2018 20:03:30 -0700 (PDT)
MIME-Version: 1.0
References: <20180825210315.4661-1-andrew.smirnov@gmail.com>
 <20180827074939.wx7vzos7qg7o23hb@pengutronix.de>
In-Reply-To: <20180827074939.wx7vzos7qg7o23hb@pengutronix.de>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 28 Aug 2018 20:03:18 -0700
Message-ID: <CAHQ1cqGKKAvs25KOCD9nznQ2bXgqMtQ4L9zeyyDPQ=3j_bDYew@mail.gmail.com>
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
Subject: Re: [PATCH 0/6] i.MX51 RDU1 and Babbage USB fixes
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Mon, Aug 27, 2018 at 12:49 AM Sascha Hauer <s.hauer@pengutronix.de> wrote:
>
> On Sat, Aug 25, 2018 at 02:03:09PM -0700, Andrey Smirnov wrote:
> > Everyone:
> >
> > These patches are a number of fixes I came up with while looking into
> > USB related problems on Babbage board.
> >
> > Feedback is welcome!
> >
> > Thanks,
> > Andrey Smirnov
> >
> > Andrey Smirnov (6):
> >   clk: i.MX: Port Linux clock tree for i.MX51 and i.MX53
> >   ARM: imx51-zii-rdu1: Swtich to using Linux clock tree
> >   ARM: freescale-mx51-babbage: Swtich to using Linux clock tree
> >   ARM: freescale-mx51-babbage: Add USBH1 PHY reset sequence
> >   dts: imx51-babbage: Add USBH1 iomux configuration
> >   ARM: imx51-zii-rdu1: Add USBH1,2 iomux configuration
>
> do 4/6 - 6/6 depend on the first three? If not I would apply them
> independently.

I don't believe they are. Should be safe to apply independently.

Thanks,
Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
