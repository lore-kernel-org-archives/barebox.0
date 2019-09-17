Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAATk-0004Td-Lc
 for barebox@lists.infradead.org; Tue, 17 Sep 2019 10:13:02 +0000
Date: Tue, 17 Sep 2019 12:12:59 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190917101259.qnpwut4ybwk7a4gz@pengutronix.de>
References: <20190917084810.24608-1-r.czerwinski@pengutronix.de>
 <cf32aaa74d87b697e70a0e09635c110fc42a1a8a.camel@pengutronix.de>
 <fff93ef5605ca77343a9c60b0b4335aa34d93331.camel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <fff93ef5605ca77343a9c60b0b4335aa34d93331.camel@pengutronix.de>
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
Subject: Re: [PATCH] Doc: i.MX: Document image structure for i.MX
To: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Sep 17, 2019 at 12:02:15PM +0200, Rouven Czerwinski wrote:
> On Tue, 2019-09-17 at 11:13 +0200, Lucas Stach wrote:
> > On Di, 2019-09-17 at 10:48 +0200, Rouven Czerwinski wrote:
> > > Document the image and load structure for i.MX6 and i.MX8MQ.
> > > 
> > > Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
> > > ---
> > >  Documentation/boards/imx.rst | 69
> > > ++++++++++++++++++++++++++++++++++++
> > >  1 file changed, 69 insertions(+)
> > > 
> > > diff --git a/Documentation/boards/imx.rst
> > > b/Documentation/boards/imx.rst
> > > index 71cc6bb09a..7110492eba 100644
> > > --- a/Documentation/boards/imx.rst
> > > +++ b/Documentation/boards/imx.rst
> > > @@ -142,6 +142,75 @@ It must be included in the board's flash
> > > header:
> > >  
> > >  Analogous to HABv4 options and a template exist for HABv3.
> > >  
> > > +Secure Boot on i.MX6
> > > +--------------------
> > > +
> > > +The secure boot process on i.MX6 consist of the following image
> > > constellation::
> > > +
> > > +    0x0 +---------------------------------+
> > > +        | Barebox Header                  |
> > > +  0x400 +---------------------------------+       -
> > > +        | i.MX IVT Header                 |       |
> > > +        | Boot Data                       +--+    |
> > > +        | CSF Pointer                     +--|-+  | Signed Area
> > > +        +---------------------------------+  | |  |
> > > +        | Device Configuration Data (DCD) |  | |  |
> > > + 0x1000 +---------------------------------+  | |  |
> > > +        | Barebox Prebootloader (PBL)     |<-+ |  |
> > > +        +---------------------------------+    |  |
> > > +        | Piggydata (Main Barebox Binary) |    |  |
> > > +        +---------------------------------+    |  -
> > > +        | Command Sequence File (CSF)     |<---+
> > > +        +---------------------------------+
> > > +
> > > +Here the Command Sequence File signs the complete Header, PBL and
> > > piggy data
> > > +file. This ensures that the whole barebox binary is authenticated.
> > > This is
> > > +possible since the DDR RAM is configured using the DCD and the
> > > whole DDR memory
> > > +area can be used to load data onto the device for authentication.
> > 
> > That's not a universally true statement for all i.MX6 boards. There
> > are
> > quite a few that also do the two step loading with PBL in SRAM and
> > DRAM
> > setup from the PBL. But I'm not sure if and how we want to reflect
> > this
> > in the documentation.
> 
> Do we even support HAB on these boards? They would require the same
> setup as done on the i.MX8MQ currently, I have not looked into boards
> in the tree yet.

No, we don't have HAB support for these boards. Indeed we would have to
do the same as on i.MX8. Maybe that's worth mentioning here.

Sascha


-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
