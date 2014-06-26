Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-we0-x231.google.com ([2a00:1450:400c:c03::231])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X0ApO-0008Hh-Rb
 for barebox@lists.infradead.org; Thu, 26 Jun 2014 14:39:07 +0000
Received: by mail-we0-f177.google.com with SMTP id u56so3702135wes.8
 for <barebox@lists.infradead.org>; Thu, 26 Jun 2014 07:38:41 -0700 (PDT)
Date: Thu, 26 Jun 2014 16:38:34 +0200
From: Alexander Aring <alex.aring@gmail.com>
Message-ID: <20140626143831.GA30025@omega>
References: <1403606628-30148-1-git-send-email-sebastian.hesselbarth@gmail.com>
 <20140625065615.GM15686@pengutronix.de>
 <20140625124006.GA25802@omega>
 <20140626055658.GW15686@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20140626055658.GW15686@pengutronix.de>
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

On Thu, Jun 26, 2014 at 07:56:58AM +0200, Sascha Hauer wrote:
> On Wed, Jun 25, 2014 at 02:40:08PM +0200, Alexander Aring wrote:
> > Hi,
> > 
> > I resend this mail. My last one was malformed, because I tried to
> > answert this mail via smartphone while boring lecture at university.
> > 
> > On Wed, Jun 25, 2014 at 08:56:15AM +0200, Sascha Hauer wrote:
> > > On Tue, Jun 24, 2014 at 12:43:48PM +0200, Sebastian Hesselbarth wrote:
> > > > This adds pinctrl drivers for Marvell Dove and Kirkwood SoCs based
> > > > on a common driver stub. This design is based on the corresponding
> > > > Linux driver and should ease additional drivers for Marvell Armada
> > > > SoCs.
> > > > 
> > > > Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
> > > 
> > > Applied with a small change:
> > > 
> > > > +static int kirkwood_pinctrl_probe(struct device_d *dev)
> > > > +{
> > > > +	const struct of_device_id *match =
> > > > +		of_match_node(kirkwood_pinctrl_of_match, dev->device_node);
> > > > +	struct mvebu_pinctrl_soc_info *soc =
> > > > +		(struct mvebu_pinctrl_soc_info *)match->data;
> > > > +
> > > > +	mpp_base = dev_request_mem_region(dev, 0);
> > > 
> > > I added a return value check here. Not checking it means that the driver
> > > could do NULL pointer dereferences during runtime.
> > > 
> > > I should really fix the places where the check is missing in the tree.
> > > 
> > 
> > I spotted this also at my last patch for print warning for resource
> > conflicts and I thought a zero base address is also valid for some
> > cases.
> > 
> > Thats why I didn't add checks on null.
> > 
> > What I mean is that the dev_request_mem_region API reference can return
> > NULL which is for example "(void *)0x00000000" and is also valid. We
> > can't use this as error indicator.
> 
> We could also return an error pointer instead of NULL. Given that not
> many drivers check the return value anyway this shouldn't be hard to
> change.
> 

yeah, but a ERR_PTR(-ERRNO) is also some valid address which
dev_request_mem_region could return. Likely in power of two addresses.
But this is more unlikely than check on NULL. :-)

Anyway I would try to use the ERR_PTR solution.


I also see now because we print warning on resource conflicts Holger
reports some resource conflict on his board. Maybe there is also some
others board with resource conflicts but we didn't saw that because the
debug print level.

I only add pr_warn for conflicts, but there are also some other debug
prints on error handling, maybe we should change it to:

diff --git a/common/resource.c b/common/resource.c
index 1ea2a75..e77805b 100644
--- a/common/resource.c
+++ b/common/resource.c
@@ -44,7 +44,7 @@ struct resource *__request_region(struct resource *parent,
        struct resource *r, *new;
 
        if (end < start) {
-               debug("%s: request region 0x%08llx:0x%08llx: end < start\n",
+               pr_warn("%s: request region 0x%08llx:0x%08llx: end < start\n",
                                __func__,
                                (unsigned long long)start,
                                (unsigned long long)end);
@@ -53,7 +53,7 @@ struct resource *__request_region(struct resource *parent,
 
        /* outside parent resource? */
        if (start < parent->start || end > parent->end) {
-               debug("%s: 0x%08llx:0x%08llx outside parent resource 0x%08llx:0x%08llx\n",
+               pr_warn("%s: 0x%08llx:0x%08llx outside parent resource 0x%08llx:0x%08llx\n",
                                __func__,
                                (unsigned long long)start,
                                (unsigned long long)end,

Should I prepare a patch for this? Maybe more users comes because there
os something wrong with device probing, etc...

- Alex

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
