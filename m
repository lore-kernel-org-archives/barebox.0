Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1O5E4t-0001KW-0D
	for barebox@lists.infradead.org; Fri, 23 Apr 2010 08:17:36 +0000
Date: Fri, 23 Apr 2010 10:17:32 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20100423081732.GA17463@pengutronix.de>
References: <1271665698-23163-1-git-send-email-w.sang@pengutronix.de>
	<1271665698-23163-2-git-send-email-w.sang@pengutronix.de>
	<20100422111001.GH7882@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20100422111001.GH7882@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 1/7] give nice output when generating barebox.bin and
	barebox.S
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hey Sascha,

On Thu, Apr 22, 2010 at 01:10:01PM +0200, Sascha Hauer wrote:
> On Mon, Apr 19, 2010 at 10:28:12AM +0200, Wolfram Sang wrote:
> > From: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> > =

> > As a side effect don't build barebox.S when barebox.bin is updated.  I
> > didn't manage to keep the old behaviour and I consider it cleaner this
> > way.
> =

> I don't understand this completely. We only need barebox.S updated when
> barebox is updated, not when barebox.bin is updated. Is this what you
> mean?
The status quo in your master branch is that barebox.S is
created/updated in the barebox.bin target.  After my patch it's a
seperate target depending on barebox.

Does this help?

Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
