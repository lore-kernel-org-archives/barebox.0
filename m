Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YIjEv-0001Uo-4k
 for barebox@lists.infradead.org; Tue, 03 Feb 2015 19:34:25 +0000
Date: Tue, 3 Feb 2015 20:33:59 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150203193359.GO12209@pengutronix.de>
References: <CA+nEJin3xNxtwkhEzPgcfNvP2wiuGxqhdB8cLn71LWC1Y5k-FQ@mail.gmail.com>
 <20150203085931.GI12209@pengutronix.de>
 <54D09205.4070704@atmel.com>
 <CA+nEJi=x0PH1Hk0LpB+ELmi8bbjyz3s_KAGeYh-aPpi62Rm9VA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CA+nEJi=x0PH1Hk0LpB+ELmi8bbjyz3s_KAGeYh-aPpi62Rm9VA@mail.gmail.com>
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
Subject: Re: Passing kernel arguments - SAMA5D4EK
To: Doug Brainard <dbrainard@brainardinsight.com>
Cc: barebox@lists.infradead.org

On Tue, Feb 03, 2015 at 10:21:45AM -0700, Doug Brainard wrote:
> > Couldn't you add "ubi.mtd=8 ubi.mtd=9" and rootfs_mtdblock_nand=10
> > instead?
> 
> I had thought that barebox had a need to know where the rootfs was
> located, which is why I hadn't tried that.  Turns out that it worked
> perfectly for the ubi.mtd settings.  Thank you!  Any idea how
> "noinitrd" is getting added to the bootargs?  I need to replace that
> with a "rw".

It comes from /env/bin/boot. You can checkout the sourcecode and grep
for it since we do not have any search function in barebox.

> 
> > Note that we started with trying to build a generic default environment
> > which at some point grew into a monster. We now have the 2nd version of
> > the generic default environment which is much better. Unfortunately
> > usage of this new default environment is board specific and your board
> > isn't converted yet. If you are interested I can show you the steps to
> > convert it.
> 
> I would be interested in helping with this conversion.

Thanks. I'll prepare a mail tomorrow.

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
