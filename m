Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-it0-x241.google.com ([2607:f8b0:4001:c0b::241])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fuQzv-0004rt-1t
 for barebox@lists.infradead.org; Mon, 27 Aug 2018 23:32:40 +0000
Received: by mail-it0-x241.google.com with SMTP id e14-v6so74364itf.1
 for <barebox@lists.infradead.org>; Mon, 27 Aug 2018 16:32:28 -0700 (PDT)
MIME-Version: 1.0
References: <20180824030511.23021-1-andrew.smirnov@gmail.com>
 <20180824171520.GB16451@ravnborg.org>
In-Reply-To: <20180824171520.GB16451@ravnborg.org>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 27 Aug 2018 16:32:16 -0700
Message-ID: <CAHQ1cqH63_ReCQT=uO3wMY074Stb9Ct-B0igkM_57E7LM9LJmw@mail.gmail.com>
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
Subject: Re: [PATCH 0/3] i.MX8 malloc pool position and 32-bit only DMA
To: Sam Ravnborg <sam@ravnborg.org>
Cc: Barebox List <barebox@lists.infradead.org>

On Fri, Aug 24, 2018 at 10:15 AM Sam Ravnborg <sam@ravnborg.org> wrote:
>
> Hi Andrey.
>
> > This series is a result of debugging FEC and uSDHC failures on
> > i.MX8MQ. Patches 1 and 2 are pretty straightforward and shouldn't be
> > controversial. Patch 3, OTOH, may or may not be a good way to solve
> > this problem, but it's a good way to start a discussion on the subject
> > which is my main goal here.
> >
> > Feedback is welcome!
> >
> > Thanks,
> > Andrey Smirnov
> >
> > Andrey Smirnov (3):
> >   mci: imx-esdhc: Bail out if DMA address is larger than 32-bits
> >   net: fec: Bail out if DMA address is larger than 32-bits
>
> In the above patches the checks are distributed to the
> users. Are there any reason why we could not centralize this
> check in the dma code?

We definitely can. As Sascha already pointed out this can be folded
into dma_mapping_error().

> As I assume it is everyone that is constrained to the
> 32BIT address space.
>
> And do we really need these checks if we teach
> malloc to only provide memory that is DMA'able?
>

I'd prefer to keep them since I'd rather not have a situation where
there's a chance of silent, hard to detect, failure, since it
manifests in really bizarre ways (in my case Ethernet would stop
working after I would probe eMMC). Also, once all of the error
checking is folded into dma_mapping_error() it wouldn't be that much
of code anyway.

Thanks,
Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
