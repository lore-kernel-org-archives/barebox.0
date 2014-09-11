Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XRykK-0007Ma-62
 for barebox@lists.infradead.org; Thu, 11 Sep 2014 07:24:48 +0000
Date: Thu, 11 Sep 2014 09:24:25 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140911072425.GI4992@pengutronix.de>
References: <1410360368-18808-1-git-send-email-t.gamez@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1410360368-18808-1-git-send-email-t.gamez@phytec.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] defaultenv: Reorder overlay append order
To: Teresa =?iso-8859-15?Q?G=E1mez?= <t.gamez@phytec.de>
Cc: barebox@lists.infradead.org

Hi Teresa,

On Wed, Sep 10, 2014 at 04:46:08PM +0200, Teresa G=E1mez wrote:
> The defaultenv_add_base() functions adds the enviroment coming from
> CONFIG_DEFAULT_ENVIRONMENT_PATH. But this is not only for
> traditional enviroments, but also for external enviroments in e.g. build
> systems. The external enviroment should override the enviroment set
> in the board file and not the other way around. Made sure that
> external enviroment is always added last.
> =

> Signed-off-by: Teresa G=E1mez <t.gamez@phytec.de>

So what happens is:

At some point board code calls defaultenv_append() which calls
defaultenv_add_base() which in turn registers all default env snippets
including the one from CONFIG_DEFAULT_ENVIRONMENT_PATH. After this
defaultenv_append adds the snippet passed to it.
Instead you want CONFIG_DEFAULT_ENVIRONMENT_PATH to be the last instance
and register it right before using the default environment in
defaultenv_load().

I had some trouble understanding what was wrong and how you solved
it, the above is mainly for me. I hope I find it the next time I stumble
upon this ;)
Something tells me this is not the last time I think about this piece
of code.

Ok, applied.

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
