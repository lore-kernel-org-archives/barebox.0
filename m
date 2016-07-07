Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bL6Do-0003I0-DZ
 for barebox@lists.infradead.org; Thu, 07 Jul 2016 10:07:53 +0000
Date: Thu, 7 Jul 2016 12:07:30 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160707100730.GL20657@pengutronix.de>
References: <20160706140245.GA21034@gmail.com>
 <20160707065545.GX20657@pengutronix.de>
 <20160707093738.GA24951@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20160707093738.GA24951@gmail.com>
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
Subject: Re: Bug?
To: Wjatscheslaw Stoljarski <wjatscheslaw.stoljarski@kiwigrid.com>
Cc: Barebox List <barebox@lists.infradead.org>

On Thu, Jul 07, 2016 at 11:37:38AM +0200, Wjatscheslaw Stoljarski wrote:
> Hi Sascha,
> 
> I can reproduce this on barebox 2016.06.0 for example with:
> cp /env/data/ansi-colors /env/data/
> But "memcpy -s /env/data/ansi-colors -d /env/data/ansi-colors 0 0" works without problem.
> 
> I try this with next barebox version (2016.07.0). Maybe it's already fixed.

Nope, it isn't.

So the problem comes when you copy a file over itself. This indeed
crashes here aswell. This points to a bug in the ramfs implementation
which should be fixed. Also there's another bug in 'cp': copy_file
should recognize when source and destination are the same file and
report an error in this case.

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
