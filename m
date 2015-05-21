Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp102.biz.mail.bf1.yahoo.com ([98.139.221.61])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YvEO5-0001km-Cm
 for barebox@lists.infradead.org; Thu, 21 May 2015 00:31:02 +0000
Message-ID: <1432168236.14341.228.camel@andreilinux>
From: Andrei Yakimov <ayakimov@iptec-inc.com>
Date: Wed, 20 May 2015 17:30:36 -0700
In-Reply-To: <87twv7hz8x.fsf@belgarion.home>
References: <1432063402.14341.126.camel@andreilinux>
 <20150520061901.GK6325@pengutronix.de> <87twv7hz8x.fsf@belgarion.home>
Mime-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Reply-To: ayakimov@iptec-inc.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: drivers/mtd/nand/nand_mrvl_nfc.c
To: Robert Jarzmik <robert.jarzmik@free.fr>
Cc: barebox@lists.infradead.org

I would like to provide a patch,
but I do not requesting any changes in baraebox
and not working with it.


I do not working with marvel chips,
do not have any controller description.

I found this problem in my 8313 u-boot elbc and
Scott Wood point me to same the problem in imx driver.

Checking linux drivers, found marvel driver which
looks like have same problem.

Geleral idea - linux nand detection flow, expect
PARAM command extra data will deliver as much data
as needed, each next read will trigger extra transfer
from nand chip. This is not true at least for 
elbc, imx and mrvl controllers ( just by looking
to the driver code).

Any controller with memory buffer and transferring
all data from chip at once and required another
nand commad to do next transfer will need to
be updated to read at least 1536 byte by param
commad.
Existing implementation for this type of controllers
will cause eventual failure on the field as soon 
as first ONFI/Jedec block will go bad unless other
other chip identification (by chip ID) pick it up.

Andrei


On Wed, 2015-05-20 at 20:37 +0200, Robert Jarzmik wrote:
> Sascha Hauer <s.hauer@pengutronix.de> writes:
> 
> > Hi Andrei,
> >
> > +Cc Robert Jarzmik <robert.jarzmik@free.fr>
> >
> > On Tue, May 19, 2015 at 12:23:22PM -0700, Andrei Yakimov wrote:
> >> Please,
> >>  change 
> >>   case NAND_CMD_PARAM:
> >>         host->buf_count = 256;
> >> To:
> >>   host->buf_count = 768;
> >> 
> >> If first copy of parameter page corrupted you will not able
> >> to use ONFI flash.
> >
> > Thanks for noting. However, like many other opensource projects we
> > communicate changes and change requests with formalized patches. Please
> > generate one using git format-patch or similar and send it to the list.
> > I'll happily make that change then.
> 
> Same from me, I'll happily review a patch.
> May I add also that host->ndcb3 and host->data_size deserve the same change
> within the NAND_CMD_PARAM case statement.
> 
> Cheers.
> 



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
