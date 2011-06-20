Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QYY2k-0000nA-Fj
	for barebox@lists.infradead.org; Mon, 20 Jun 2011 06:33:07 +0000
Date: Mon, 20 Jun 2011 08:33:03 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110620063303.GK23771@pengutronix.de>
References: <6F2524F76379064FB8CB9CEE698D56DA8D40EB1725@IN-MSG-01.amer.actel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6F2524F76379064FB8CB9CEE698D56DA8D40EB1725@IN-MSG-01.amer.actel.com>
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
Subject: Re: sandbox compilation problem
To: "Murthy, Ramana" <Ramana.Murthy@microsemi.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hi Murthy,

On Wed, Jun 15, 2011 at 03:58:51PM +0530, Murthy, Ramana wrote:
> Hi,
> 
> I am trying to build sandbox for ARCH=sandbox, facing below errors. I
> am not sure if the build environment is the problem?  Do I need to
> have linux source code include paths to build this successfully?

Please do a 'make sandbox_defconfig' and try again. The loads command
does not make much sense on sandbox and shouldn't be compiled (Of course
it shouldn't break the build also, I hope I'll have a look there soon, I
just realized the sandbox is broken on the -next branch aswell.

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
