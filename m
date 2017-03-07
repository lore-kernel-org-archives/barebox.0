Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1clN2R-0007v5-Vm
 for barebox@lists.infradead.org; Tue, 07 Mar 2017 21:53:02 +0000
Date: Tue, 7 Mar 2017 22:52:35 +0100
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20170307215235.GA19993@ravnborg.org>
References: <20170306225356.31475-1-andrew.smirnov@gmail.com>
 <20170306225356.31475-33-andrew.smirnov@gmail.com>
 <20170307163531.GB26868@ravnborg.org>
 <CAHQ1cqHuaA_3GXqqneUoBgH-xdzMBqTE7fHOP_Rx8cyoVEjVCg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHQ1cqHuaA_3GXqqneUoBgH-xdzMBqTE7fHOP_Rx8cyoVEjVCg@mail.gmail.com>
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
Subject: Re: [PATCH 32/45] usb: ohci-at91: Check result of clk_get()
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Tue, Mar 07, 2017 at 01:21:40PM -0800, Andrey Smirnov wrote:
> On Tue, Mar 7, 2017 at 8:35 AM, Sam Ravnborg <sam@ravnborg.org> wrote:
> > On Mon, Mar 06, 2017 at 02:53:43PM -0800, Andrey Smirnov wrote:
> >> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> >> ---
> >>  drivers/usb/host/ohci-at91.c | 9 +++++++++
> >>  1 file changed, 9 insertions(+)
> >>
> >> diff --git a/drivers/usb/host/ohci-at91.c b/drivers/usb/host/ohci-at91.c
> >> index 0f5c8f1..c70d898 100644
> >> --- a/drivers/usb/host/ohci-at91.c
> >> +++ b/drivers/usb/host/ohci-at91.c
> >> @@ -47,7 +47,16 @@ static int at91_ohci_probe(struct device_d *dev)
> >>       struct ohci_regs __iomem *regs = (struct ohci_regs __iomem *)dev->resource[0].start;
> >>
> >>       iclk = clk_get(NULL, "ohci_clk");
> >> +     if (IS_ERR(iclk)) {
> >> +             dev_err(dev, "Failed to get 'iclk'\n");
> > iclk is the internal name. Woudl it make more sense to use "ohci_clk" here?
> >
> 
> I was looking at the corresponding kernel driver and that's where I
> got the name for the variable. If you think 'ohci_clk' is a better
> name I have no problem changing it.

It is not something I have strong opinions about.
But I later noticed you sued "interface clk" and "function clk".
So it would be good to be consistent.

Even if the kernel is not consistent we can do better in barebox.

	Sam

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
