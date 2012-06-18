Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from [2a02:8b8:656::164] (helo=bar.sig21.net)
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Sghnk-00045W-MC
 for barebox@lists.infradead.org; Mon, 18 Jun 2012 19:39:53 +0000
Date: Mon, 18 Jun 2012 21:39:28 +0200
From: Johannes Stezenbach <js@sig21.net>
Message-ID: <20120618193928.GB4166@sig21.net>
References: <1340030880-10062-1-git-send-email-js@sig21.net>
 <1340030880-10062-3-git-send-email-js@sig21.net>
 <CAONxwYPRvOL0FL1PfuQ7MjCr+vY7g6OnR_m8v38y+71EvsHmhw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAONxwYPRvOL0FL1PfuQ7MjCr+vY7g6OnR_m8v38y+71EvsHmhw@mail.gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 2/6] miidev: actually probe the PHY
To: Roberto Nibali <rnibali@gmail.com>
Cc: barebox@lists.infradead.org

Hi,

On Mon, Jun 18, 2012 at 08:27:08PM +0200, Roberto Nibali wrote:
> On Mon, Jun 18, 2012 at 4:47 PM, Johannes Stezenbach <js@sig21.net> wrote:
> 
> > Check if the PHY is really accessible (e.g. the
> > PHY address is correct) during probe.
> >
> > Signed-off-by: Johannes Stezenbach <js@sig21.net>
> > ---
> >  drivers/net/miidev.c |   12 ++++++++++++
> >  1 file changed, 12 insertions(+)
> >
> > diff --git a/drivers/net/miidev.c b/drivers/net/miidev.c
> > index 272234e..3545889 100644
> > --- a/drivers/net/miidev.c
> > +++ b/drivers/net/miidev.c
> > @@ -225,6 +225,14 @@ static struct file_operations miidev_ops = {
> >  static int miidev_probe(struct device_d *dev)
> >  {
> >        struct mii_device *mdev = dev->priv;
> > +       int val;
> > +
> > +       val = mii_read(mdev, mdev->address, MII_PHYSID1);
> > +       if (val < 0 || val == 0xffff)
> > +               goto err_out;
> > +       val = mii_read(mdev, mdev->address, MII_PHYSID2);
> > +       if (val < 0 || val == 0xffff)
> > +               goto err_out;
> >
> >
> Suppose this has no influence on drivers/net/fec_imx.c:fec_set_hwaddr()
> returning -1?

Well, the MAC address goes to the MAC not the PHY... so it
shouldn't have any adverse effect on that.

Besides checking that the PHY address is correct this also
catches cases where the PHY is broken or not soldered correctly,
or when the MDIO clock divisor is wrong etc. 
Can save time in trouble shooting.


Johannes

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
