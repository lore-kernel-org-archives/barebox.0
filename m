Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TBLNp-0002Ei-9k
 for barebox@lists.infradead.org; Tue, 11 Sep 2012 07:59:46 +0000
Date: Tue, 11 Sep 2012 09:59:42 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120911075942.GL18243@pengutronix.de>
References: <1347269467-20854-1-git-send-email-w.sang@pengutronix.de>
 <20120910093948.GZ28643@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120910093948.GZ28643@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] arm: mxs: add proper resource length
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org, Wolfram Sang <w.sang@pengutronix.de>

On Mon, Sep 10, 2012 at 11:39:48AM +0200, Uwe Kleine-K=F6nig wrote:
> On Mon, Sep 10, 2012 at 11:31:07AM +0200, Wolfram Sang wrote:
> > For some reason, the mxs-boards missed some length paramters when adding
> > devices. This made reading from ocotp crash in the current version.
> > Provide missing lenghts, use a consistent format and fix the length for
> s/lenghts/length/

He meant the plural of 'length'

Fixed 'paramters' instead ;)

Applied, thanks

Sascha

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
