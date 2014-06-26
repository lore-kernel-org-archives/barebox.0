Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X02gT-0001Og-9S
 for barebox@lists.infradead.org; Thu, 26 Jun 2014 05:57:22 +0000
Date: Thu, 26 Jun 2014 07:56:58 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140626055658.GW15686@pengutronix.de>
References: <1403606628-30148-1-git-send-email-sebastian.hesselbarth@gmail.com>
 <20140625065615.GM15686@pengutronix.de>
 <20140625124006.GA25802@omega>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20140625124006.GA25802@omega>
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
Subject: Re: [PATCH v2] pinctrl: mvebu: add pinctrl drivers for Dove and
 Kirkwood
To: Alexander Aring <alex.aring@gmail.com>
Cc: barebox@lists.infradead.org

On Wed, Jun 25, 2014 at 02:40:08PM +0200, Alexander Aring wrote:
> Hi,
> 
> I resend this mail. My last one was malformed, because I tried to
> answert this mail via smartphone while boring lecture at university.
> 
> On Wed, Jun 25, 2014 at 08:56:15AM +0200, Sascha Hauer wrote:
> > On Tue, Jun 24, 2014 at 12:43:48PM +0200, Sebastian Hesselbarth wrote:
> > > This adds pinctrl drivers for Marvell Dove and Kirkwood SoCs based
> > > on a common driver stub. This design is based on the corresponding
> > > Linux driver and should ease additional drivers for Marvell Armada
> > > SoCs.
> > > 
> > > Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
> > 
> > Applied with a small change:
> > 
> > > +static int kirkwood_pinctrl_probe(struct device_d *dev)
> > > +{
> > > +	const struct of_device_id *match =
> > > +		of_match_node(kirkwood_pinctrl_of_match, dev->device_node);
> > > +	struct mvebu_pinctrl_soc_info *soc =
> > > +		(struct mvebu_pinctrl_soc_info *)match->data;
> > > +
> > > +	mpp_base = dev_request_mem_region(dev, 0);
> > 
> > I added a return value check here. Not checking it means that the driver
> > could do NULL pointer dereferences during runtime.
> > 
> > I should really fix the places where the check is missing in the tree.
> > 
> 
> I spotted this also at my last patch for print warning for resource
> conflicts and I thought a zero base address is also valid for some
> cases.
> 
> Thats why I didn't add checks on null.
> 
> What I mean is that the dev_request_mem_region API reference can return
> NULL which is for example "(void *)0x00000000" and is also valid. We
> can't use this as error indicator.

We could also return an error pointer instead of NULL. Given that not
many drivers check the return value anyway this shouldn't be hard to
change.

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
