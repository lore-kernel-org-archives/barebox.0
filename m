Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-we0-x22a.google.com ([2a00:1450:400c:c03::22a])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WzmVE-00081E-Mp
 for barebox@lists.infradead.org; Wed, 25 Jun 2014 12:40:41 +0000
Received: by mail-we0-f170.google.com with SMTP id w61so1937490wes.29
 for <barebox@lists.infradead.org>; Wed, 25 Jun 2014 05:40:17 -0700 (PDT)
Date: Wed, 25 Jun 2014 14:40:08 +0200
From: Alexander Aring <alex.aring@gmail.com>
Message-ID: <20140625124006.GA25802@omega>
References: <1403606628-30148-1-git-send-email-sebastian.hesselbarth@gmail.com>
 <20140625065615.GM15686@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20140625065615.GM15686@pengutronix.de>
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
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi,

I resend this mail. My last one was malformed, because I tried to
answert this mail via smartphone while boring lecture at university.

On Wed, Jun 25, 2014 at 08:56:15AM +0200, Sascha Hauer wrote:
> On Tue, Jun 24, 2014 at 12:43:48PM +0200, Sebastian Hesselbarth wrote:
> > This adds pinctrl drivers for Marvell Dove and Kirkwood SoCs based
> > on a common driver stub. This design is based on the corresponding
> > Linux driver and should ease additional drivers for Marvell Armada
> > SoCs.
> > 
> > Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
> 
> Applied with a small change:
> 
> > +static int kirkwood_pinctrl_probe(struct device_d *dev)
> > +{
> > +	const struct of_device_id *match =
> > +		of_match_node(kirkwood_pinctrl_of_match, dev->device_node);
> > +	struct mvebu_pinctrl_soc_info *soc =
> > +		(struct mvebu_pinctrl_soc_info *)match->data;
> > +
> > +	mpp_base = dev_request_mem_region(dev, 0);
> 
> I added a return value check here. Not checking it means that the driver
> could do NULL pointer dereferences during runtime.
> 
> I should really fix the places where the check is missing in the tree.
> 

I spotted this also at my last patch for print warning for resource
conflicts and I thought a zero base address is also valid for some
cases.

Thats why I didn't add checks on null.

What I mean is that the dev_request_mem_region API reference can return
NULL which is for example "(void *)0x00000000" and is also valid. We
can't use this as error indicator.

Maybe we could change the API to:

int dev_request_mem_region_by_name(struct device_d *dev, void __iomem
				   **ptr, const char *name)

same for dev_request_mem_region. Then we can work with errno here and
set the old return via *ptr = foo. But would be a huge change in the API
or it's uncommon that somebody request iomem for NULL address... This
could happen for some memory locations.

- Alex

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
