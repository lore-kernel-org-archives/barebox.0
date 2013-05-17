Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UdDQ2-0007gW-8o
 for barebox@lists.infradead.org; Fri, 17 May 2013 05:41:31 +0000
Date: Fri, 17 May 2013 07:41:02 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130517054102.GP32299@pengutronix.de>
References: <1368603396-27887-1-git-send-email-thomas.petazzoni@free-electrons.com>
 <5193EAF6.2000605@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5193EAF6.2000605@gmail.com>
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
Subject: Re: [PATCHv2 00/10] kwbimage improvements, Kirkwood support
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org, Lior Amsalem <alior@marvell.com>, Ezequiel Garcia <ezequiel.garcia@free-electrons.com>

On Wed, May 15, 2013 at 10:07:18PM +0200, Sebastian Hesselbarth wrote:
> On 05/15/13 09:36, Thomas Petazzoni wrote:
> >Hello,
> >
> >This is a resend of yesterday patch set, rebased on top of the current
> >'next' branch. I have dropped the commits from Sebastian, since they
> >have been merged by Sascha, and I've added one commit that fixes the
> >SolidRun CuBox kwbimage.cfg to remove some lines that are no longer
> >necessary after the kwbimage improvements that are introduced by this
> >patch set.
> >
> >Best regards,
> >
> >Thomas
> >
> >Thomas Petazzoni (10):
> >   scripts/kwbimage: add a new function image_count_options()
> >   scripts/kwbimage: add a few sanity checks
> >   scripts/kwbimage: make the v0 image creation more flexible
> >   scripts/kwbimage: simplify the v1 image creation
> >   scripts/kwbimage: make image_boot_mode_id() return -1 on failure
> >   scripts/kwbimage: add support for NAND ECC and page size header
> >     fields
> >   arm: mvebu: add Feroceon CPU type
> >   arm: mvebu: initial support for Marvell Kirkwood SoCs
> >   arm: mvebu: add basic support for Globalscale Guruplug board
> >   arm: mvebu: remove useless lines in kwbimage.cfg for CuBox
> 
> Thomas,
> 
> I tested barebox-next with all patches applied on Dove and Armada 370.
> So you get my
> 
> Tested-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>

Thanks for testing

Applied this series.

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
