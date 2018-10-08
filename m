Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g9Q6L-0000W1-Ba
 for barebox@lists.infradead.org; Mon, 08 Oct 2018 07:37:15 +0000
Date: Mon, 8 Oct 2018 09:36:59 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20181008073659.q3qlbjqacb4yay7k@pengutronix.de>
References: <20181002140403.3735-1-s.hauer@pengutronix.de>
 <20181003205029.GA20734@ravnborg.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20181003205029.GA20734@ravnborg.org>
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
Subject: Re: [PATCH 00/14] UBIFS update
To: Sam Ravnborg <sam@ravnborg.org>
Cc: Barebox List <barebox@lists.infradead.org>

Hi Sam,

On Wed, Oct 03, 2018 at 10:50:29PM +0200, Sam Ravnborg wrote:
> Hi Sasha.
> 
> On Tue, Oct 02, 2018 at 04:03:49PM +0200, Sascha Hauer wrote:
> > This series updates the UBIFS codebase to Linux-4.19-rc6.
> 
> Excpet that we are now in sync with upstream kernel, what else
> does this set of patches provide?
> Better performance, bugs fixed, or?
> 
> Just asking out of curiosity as there is known (by me) problems
> with the current barebox ubifs code.

I am also not aware of any problems in the current UBIFS code. The
motivation for updating it is that I want to add authentication support:
http://lists.infradead.org/pipermail/linux-mtd/2018-September/083902.html
This will be easier on a current codebase.

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
