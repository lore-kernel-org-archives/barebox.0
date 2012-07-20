Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Ss8lQ-0000BO-JO
 for barebox@lists.infradead.org; Fri, 20 Jul 2012 08:40:46 +0000
Date: Fri, 20 Jul 2012 10:40:37 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120720084037.GR30009@pengutronix.de>
References: <1342728533-3750-1-git-send-email-jbe@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1342728533-3750-1-git-send-email-jbe@pengutronix.de>
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
Subject: Re: [PATCH] ARM: add the vendor 'FriendlyARM' to its board's
 directory names
To: Juergen Beisert <jbe@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, Jul 19, 2012 at 10:08:52PM +0200, Juergen Beisert wrote:
> Since a look into "arch/arm/boards/" offers various boards starting with the
> vendor's name in their directory name (like 'eukrea' and 'freescale').
> This patch does the same with the currently existing FriendlyARM boards
> Mini2440 and Tiny210.
> 
> Note: I hope I have used the '-M' parameter in a correct manner ;)

Yes, you did ;)

There is another problem though: Please do not send pull requests based
on next. next is not stable and gets remerged from the topic branches.
In this case the tiny210 is sitting in next, so you can send a rename
patch for this board. I'll squash it into the original patch adding this
board. The rename for the mini2440 should be a separate patch based on
master.

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
