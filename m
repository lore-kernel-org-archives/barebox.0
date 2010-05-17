Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1ODwFH-0007z3-Qa
	for barebox@lists.infradead.org; Mon, 17 May 2010 09:04:20 +0000
Date: Mon, 17 May 2010 11:04:16 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20100517090416.GK31199@pengutronix.de>
References: <1273803319-24561-1-git-send-email-marc@cpdesign.com.au>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1273803319-24561-1-git-send-email-marc@cpdesign.com.au>
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
Subject: Re: V3 patches for imx35pdk boot
To: Marc Reilly <marc@cpdesign.com.au>
Cc: barebox@lists.infradead.org

Hi Marc,

On Fri, May 14, 2010 at 12:15:14PM +1000, Marc Reilly wrote:
> Hi,
> 
> Third time's a charm, hopefully. I fixed up all the whitespace issues
> in 3stack.c and signed off all the patches.

There are still some trailing whitespaces left. I killed them while
committing.

> 
> The morale of the story is get it right first go :) (I'm not too sure
> how to combine patch 1 and 2, and being such a git newb my tree is
> already starting to look like a pair of octopi mating, so I'm just
> going to leave as is.)

Have a look at git rebase -i, it's really nice ;)

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
