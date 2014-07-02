Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X2E3k-0000Xy-RI
 for barebox@lists.infradead.org; Wed, 02 Jul 2014 06:30:26 +0000
Date: Wed, 2 Jul 2014 08:30:00 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140702063000.GB14257@pengutronix.de>
References: <1502046103.916753.1404130899228.open-xchange@oxbsltgw09.schlund.de>
 <20140701065409.GO14257@pengutronix.de>
 <alpine.DEB.2.10.1407011407550.7233@9VTHT2J-D520>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.10.1407011407550.7233@9VTHT2J-D520>
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
Subject: Re: [PATCH] boot: show all boot sources
To: Rolf Evers-Fischer <embedded24@evers-fischer.de>
Cc: barebox@lists.infradead.org

On Tue, Jul 01, 2014 at 02:10:07PM +0200, Rolf Evers-Fischer wrote:
> 
> 
> On Tue, 1 Jul 2014, Sascha Hauer wrote:
> 
> >What exactly fixes this? Looking at the code we have:
> >
> >	if (optind < argc) {
> >		num_sources = argc - optind;
> >		sources = xmemdup(&argv[optind], sizeof(char *) *num_sources);
> >	} else {
> >		...
> >	}
> >
> >Which should do what you want.
> 
> Unfortunately it doesn't do what I want. If I invoke "boot -l" on the bb
> shell, I get optind=argc=2. Therefore barebox executes the "else" clause,
> which lists only the default bootsource.

Right, but what else should the command list if you do not give
additional arguments?

I mean the intention is that

boot -l <source1> <source2>

lists all sources specified, whereas

boot -l

lists everything from $global.boot.default

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
