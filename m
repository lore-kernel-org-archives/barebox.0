Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ea0-x231.google.com ([2a00:1450:4013:c01::231])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UCb6L-0002Yv-FS
 for barebox@lists.infradead.org; Mon, 04 Mar 2013 19:31:11 +0000
Received: by mail-ea0-f177.google.com with SMTP id n13so912235eaa.22
 for <barebox@lists.infradead.org>; Mon, 04 Mar 2013 11:31:07 -0800 (PST)
Date: Mon, 4 Mar 2013 20:32:20 +0100
From: Alexander Aring <alex.aring@gmail.com>
Message-ID: <20130304193220.GC911@x61s.8.8.8.8>
References: <1362412809-23253-1-git-send-email-s.hauer@pengutronix.de>
 <20130304190529.GJ23022@game.jcrosoft.org>
 <20130304191617.GG1906@pengutronix.de>
 <20130304192548.GB911@x61s.8.8.8.8>
 <20130304192835.GH1906@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130304192835.GH1906@pengutronix.de>
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
Subject: Re: [PATCH] usb: ehci: initialize ehci_data
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Mar 04, 2013 at 08:28:35PM +0100, Sascha Hauer wrote:
> On Mon, Mar 04, 2013 at 08:25:49PM +0100, Alexander Aring wrote:
> > On Mon, Mar 04, 2013 at 08:16:17PM +0100, Sascha Hauer wrote:
> > > On Mon, Mar 04, 2013 at 08:05:29PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > > > On 17:00 Mon 04 Mar     , Sascha Hauer wrote:
> > > > > Without it fields of ehci_data may be unitialized and the driver
> > > > > crashes.
> > > > > 
> > > > > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > > > > ---
> > > > >  drivers/usb/host/ehci-hcd.c |    2 +-
> > > > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > > > > 
> > > > > diff --git a/drivers/usb/host/ehci-hcd.c b/drivers/usb/host/ehci-hcd.c
> > > > > index 0c789e4..7c389aa 100644
> > > > > --- a/drivers/usb/host/ehci-hcd.c
> > > > > +++ b/drivers/usb/host/ehci-hcd.c
> > > > > @@ -892,7 +892,7 @@ int ehci_register(struct device_d *dev, struct ehci_data *data)
> > > > >  
> > > > >  static int ehci_probe(struct device_d *dev)
> > > > >  {
> > > > > -	struct ehci_data data;
> > > > > +	struct ehci_data data = {};
> > > > 
> > > > I'll prefer a memset
> > > 
> > > Then you'll happy to hear that this is what the compiler makes from it
> > > anyway.
> > >
> > I think memset use a unnecessary function call. Is that right?
> 
> No, the result will be the same. As said, gcc will call memset anyway,
> even when you implicitly initialize a struct with '= {}'.
>
Ok, thanks for this information.

Alex

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
