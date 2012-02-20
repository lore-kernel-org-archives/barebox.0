Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RzXnH-0006v2-4d
 for barebox@lists.infradead.org; Mon, 20 Feb 2012 18:17:04 +0000
Date: Mon, 20 Feb 2012 19:16:39 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120220181639.GX3852@pengutronix.de>
References: <1329674288-25583-1-git-send-email-s.hauer@pengutronix.de>
 <1329674288-25583-2-git-send-email-s.hauer@pengutronix.de>
 <20120220045437.GC27599@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120220045437.GC27599@game.jcrosoft.org>
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
Subject: Re: [PATCH 1/5] Add suport for tftp as a filesystem
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Mon, Feb 20, 2012 at 05:54:37AM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 18:58 Sun 19 Feb     , Sascha Hauer wrote:
> > This adds tftp filesystem support. It currently duplicates
> > significant amounts of the tftp (command) support. This is ok
> > since we can eventually drop the original tftp command later.
> > 
> > tftp is not really suitable to be handled as a filesystem. It lacks
> > support for stat, reading directories and other things. Handling
> > it as a filesystem has one big advantage though: tftp is no special
> > case for boot scripts and/or commands anymore which makes them simpler.
> > 
> > This implementation has some improvements to the original tftp command.
> > It supports blocksize negotiation which speeds up transfers if the tftp
> > server supports it. Also we can determine the filesize to transfer if
> > the remote end supports it.
> > 
> look good do you have seach patch for nfs?

No, everyone is invited to implement it ;)

NFS is a bit more complicated than tftp though. The implementation we
have lacks readdir support, so we have to figure out how to do this
first.

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
