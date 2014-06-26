Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X05gV-0008C3-Vd
 for barebox@lists.infradead.org; Thu, 26 Jun 2014 09:09:37 +0000
Date: Thu, 26 Jun 2014 11:09:13 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140626090913.GA14257@pengutronix.de>
References: <1403772698-10330-1-git-send-email-s.hauer@pengutronix.de>
 <CAOpc7mFi+TRbnTgtoAdnHgGpQ5=aPUusADk1PfhH9p5qAyaCRQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAOpc7mFi+TRbnTgtoAdnHgGpQ5=aPUusADk1PfhH9p5qAyaCRQ@mail.gmail.com>
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
Subject: Re: New Documentation for barebox
To: Holger Schurig <holgerschurig@gmail.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Thu, Jun 26, 2014 at 11:02:56AM +0200, Holger Schurig wrote:
> Hi,
> 
> nice !
> 
> 
> I merged remotes/origin/doc into my local checkout of
> remotes/origin/next and did "make docs". I got one warning:
> 
> schurig@laptop:~/d/mkarm/barebox$ make docs
> Making output directory...
> Running Sphinx v1.1.2
> loading pickled environment... not yet created
> building [html]: targets for 204 source files that are out of date
> updating environment: 204 added, 0 changed, 0 removed
> reading sources... [100%] user/variables
> /home/schurig/d/mkarm/barebox/Documentation/devicetree/index.rst:6:
> WARNING: toctree glob pattern u'bindings/barebox/*' didn't match any

Oops, it was ignored because it matches a pattern in .gitignore. Try
again, I just fixed it.

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
