Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PDlVt-0002LW-LC
	for barebox@lists.infradead.org; Wed, 03 Nov 2010 22:09:02 +0000
Date: Wed, 3 Nov 2010 23:08:58 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20101103220858.GJ6017@pengutronix.de>
References: <AANLkTimYPa2XDhv4HsL6U0eK-csu4dGqiNeu2BUcLwEv@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <AANLkTimYPa2XDhv4HsL6U0eK-csu4dGqiNeu2BUcLwEv@mail.gmail.com>
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
Subject: Re: how to get my patch to master or barebox dev cycle
To: Belisko Marek <marek.belisko@gmail.com>
Cc: barebox@lists.infradead.org

Hi Marek,

On Wed, Nov 03, 2010 at 08:46:25PM +0100, Belisko Marek wrote:
> Hi,
> 
> today I get an announce about new v2010.11.0 and I try to look to
> commits if my patch which was sent 19.10
> for mini2440 board support
> (http://lists.infradead.org/pipermail/barebox/2010-October/001881.html
> ) was taken.
> Patch was commented only to add some extra functionality and I suppose
> it could be taken to
> next branch and then to master in next release. But it was not.
> 
> So my question is what is development cycle for barebox? Similar to
> kernel with merge window and then only release?

I maintain two branches, master and next. next is always open to new
patches. After a (monthly) release I merge the next branch into master.
The master branch only gets fixes for collateral damages caused by
merging the next branch.
In case of the mini2440 patch I simply forgot to handle it, sorry for
that. I will have a look at it tomorrow.

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
