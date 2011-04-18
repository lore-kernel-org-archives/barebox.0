Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1QBtG8-0006Y8-RY
	for barebox@lists.infradead.org; Mon, 18 Apr 2011 18:33:17 +0000
Date: Mon, 18 Apr 2011 20:33:13 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110418183313.GP14770@pengutronix.de>
References: <BANLkTi=FxqCsR1vY_p_i-XVB8g-niciODA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <BANLkTi=FxqCsR1vY_p_i-XVB8g-niciODA@mail.gmail.com>
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
Subject: Re: New MACH Addition
To: Marko Milutinovic <markomilutin@gmail.com>
Cc: barebox@lists.infradead.org

Hi Marko,

On Mon, Apr 18, 2011 at 12:17:47PM -0600, Marko Milutinovic wrote:
> Hello,
> 
> I recently ported barebox to a platform using an old AT91 chip (at91m55800a,
> ARM7TDMI core). There is already a MACH_AT91 folder but this chip is
> sufficiently different that I just made a new folder MACH_AT91_legacy. This
> was just a test project for me to get familiar with using barebox.
> 
> I'm just wondering if there is any value in me merging in the code for this?
> I realize it's a pretty old chipset, but I'm finding barebox very useful and
> would like to contribute to it.

I never even heard of this chip. I think adding support for it should be
ok, but we might remove it in the future should non trivial architecture
changes become necessary and nobody cares for updating this.

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
