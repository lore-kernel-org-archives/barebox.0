Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PGUSv-0000ij-As
	for barebox@lists.infradead.org; Thu, 11 Nov 2010 10:33:14 +0000
Date: Thu, 11 Nov 2010 11:32:59 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20101111103259.GY6017@pengutronix.de>
References: <1289400839-5937-1-git-send-email-s.hauer@pengutronix.de>
	<1289400839-5937-9-git-send-email-s.hauer@pengutronix.de>
	<20101111052549.GB16995@jasper.tkos.co.il>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20101111052549.GB16995@jasper.tkos.co.il>
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
Subject: Re: [PATCH 08/13] mxc_nand: fix correct_data function
To: Baruch Siach <baruch@tkos.co.il>
Cc: barebox@lists.infradead.org

Hi Baruch,

On Thu, Nov 11, 2010 at 07:25:49AM +0200, Baruch Siach wrote:
> Hi Sascha,
> 
> On Wed, Nov 10, 2010 at 03:53:54PM +0100, Sascha Hauer wrote:
> > The v2 controller has a totally different mechanism to check
> > whether the data we read had ecc errors or not. Implement this.
> > The mechanism in the v2 controller happens to be identical to
> > the v3 controller.
> 
> Does this mean that the current .correct method in not compatible with v2 
> controllers? If so, does this bug makes any read error look like an 
> uncorrectable error? Something else (silent corruption)?

I'm afraid it's silent corruption. As I see it good crc sums can be
detected as bad crc sums and bad crc sums can be detected as good crc
sums if the v1 implementation is used instead of v2.

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
