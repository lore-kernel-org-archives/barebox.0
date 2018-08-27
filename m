Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-io0-x244.google.com ([2607:f8b0:4001:c06::244])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fuR0t-00051A-5i
 for barebox@lists.infradead.org; Mon, 27 Aug 2018 23:33:40 +0000
Received: by mail-io0-x244.google.com with SMTP id q4-v6so581311iob.8
 for <barebox@lists.infradead.org>; Mon, 27 Aug 2018 16:33:28 -0700 (PDT)
MIME-Version: 1.0
References: <20180824030511.23021-1-andrew.smirnov@gmail.com>
 <20180824030511.23021-2-andrew.smirnov@gmail.com>
 <20180827065356.czsutcrwoxiwysvj@pengutronix.de>
In-Reply-To: <20180827065356.czsutcrwoxiwysvj@pengutronix.de>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 27 Aug 2018 16:33:16 -0700
Message-ID: <CAHQ1cqFzwTWUn5EYaBsSHxajv=eXzJrjmSY_dLgcYE8r8r6+Ng@mail.gmail.com>
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
Subject: Re: [PATCH 1/3] mci: imx-esdhc: Bail out if DMA address is larger
 than 32-bits
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Sun, Aug 26, 2018 at 11:53 PM Sascha Hauer <s.hauer@pengutronix.de> wrote:
>
> On Thu, Aug 23, 2018 at 08:05:09PM -0700, Andrey Smirnov wrote:
> > On 64-bit SoCs it becomes possible to end up with a DMA buffer
> > allocated in the region of memory inaccessible to ESDHC
> > controller. Change the code to bail out if that happens to avoid
> > silent failures.
> >
> > Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> > ---
> >  drivers/mci/imx-esdhc.c | 3 +++
> >  1 file changed, 3 insertions(+)
> >
> > diff --git a/drivers/mci/imx-esdhc.c b/drivers/mci/imx-esdhc.c
> > index db96a8139..f6451e204 100644
> > --- a/drivers/mci/imx-esdhc.c
> > +++ b/drivers/mci/imx-esdhc.c
> > @@ -304,6 +304,9 @@ esdhc_send_cmd(struct mci_host *mci, struct mci_cmd *cmd, struct mci_data *data)
> >                       dma = dma_map_single(host->dev, ptr, num_bytes, dir);
> >                       if (dma_mapping_error(host->dev, dma))
> >                               return -EIO;
> > +
> > +                     if (dma > U32_MAX)
> > +                             return -EFAULT;
> >               }
>
> If struct device_d had a dma_mask member, it could be initialized by the
> esdhc driver probe function and dma_map_single() would already fail on
> addresses > 32bit without additional checks.
>
> That's what Linux does and I think we should do the same.
>

Good idea, will do in v2.

Thanks,
Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
