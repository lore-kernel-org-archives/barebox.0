Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1e6y31-00016h-3M
 for barebox@lists.infradead.org; Tue, 24 Oct 2017 12:11:09 +0000
Date: Tue, 24 Oct 2017 14:10:37 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20171024121037.47o5xvnwxndmjsva@pengutronix.de>
References: <20171023092103.10023-1-uwe@kleine-koenig.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20171023092103.10023-1-uwe@kleine-koenig.org>
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
Subject: Re: [PATCH v2 0/3] ARM: i.MX: bbu-internal: new handler to make use
 of mmc boot partitions
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <uwe@kleine-koenig.org>
Cc: barebox@lists.infradead.org

On Mon, Oct 23, 2017 at 11:21:00AM +0200, Uwe Kleine-K=F6nig wrote:
> Hello,
> =

> this is v2 of the series. I dropped the error messages as requested by
> Sascha and only use the new function on a single board now as the others
> have the environment in boot1. Also there is a comment now about what
> the new handler does and how it should be used.
> =

> Uwe Kleine-K=F6nig (3):
>   ARM: i.MX: bbu-internal: make filename for device to write to
>     adaptable
>   ARM: i.MX: bbu-internal: new handler to make use of mmc boot
>     partitions
>   ARM: i.MX: bbu-internal: update tqma6x to make use of new bbu handler

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
