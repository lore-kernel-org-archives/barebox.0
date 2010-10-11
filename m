Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1P5Lp4-0007s6-BM
	for barebox@lists.infradead.org; Mon, 11 Oct 2010 17:06:03 +0000
Date: Mon, 11 Oct 2010 19:05:59 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20101011170559.GC28242@pengutronix.de>
References: <1286808746-19456-1-git-send-email-jbe@pengutronix.de>
	<1286808746-19456-5-git-send-email-jbe@pengutronix.de>
	<20101011152058.GC7412@game.jcrosoft.org>
	<201010111742.02731.jbe@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <201010111742.02731.jbe@pengutronix.de>
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
Subject: Re: [PATCH 4/4] Adapt the defconfig for a full blown ChumbyOne support
To: Juergen Beisert <jbe@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Oct 11, 2010 at 05:42:01PM +0200, Juergen Beisert wrote:
> Jean-Christophe PLAGNIOL-VILLARD wrote:
> > On 16:52 Mon 11 Oct     , Juergen Beisert wrote:
> > > Make the ChumbyOne use of the MCI framework.
> > >
> > > Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
> > > ---
> > >  arch/arm/configs/chumbyone_defconfig |  224
> > > +++++++++++++++++++++++++++++++++-
> >
> > please use savedefconfig
> 
> Sorry, didn't notice the difference yet. I will resend this patch.

I already put the patches into next and changed the defconfigs to
savedefconfig format on the way.

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
