Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fnfy0-0003m5-Ss
 for barebox@lists.infradead.org; Thu, 09 Aug 2018 08:06:46 +0000
Date: Thu, 9 Aug 2018 10:06:33 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180809080633.haq7vabn3xvbo7cb@pengutronix.de>
References: <20180809065420.6475-1-s.hauer@pengutronix.de>
 <201808090914.47846.jbe@pengutronix.de>
 <20180809072024.exh4oxrzyvy7onsw@pengutronix.de>
 <201808091003.06483.jbe@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <201808091003.06483.jbe@pengutronix.de>
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
Subject: Re: [PATCH] scripts/dtc: Reenable fdtget
To: Juergen Borleis <jbe@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, Aug 09, 2018 at 10:03:06AM +0200, Juergen Borleis wrote:
> On Thursday 09 August 2018 09:20:24 Sascha Hauer wrote:
> > [...]
> > >
> > > You should add "fdtget" to the "clean-files" variable as well.
> >
> > Nope, it's not necessary to add that explicitly.
> 
> Hmm, then somewhere else?
> 
> $ make
> [...]
> $ git status
> scripts/dtc/fdtget
> $ make clean

Host tools are cleaned with 'make distclean'

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
