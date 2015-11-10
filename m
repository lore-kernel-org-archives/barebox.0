Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zw3kC-0007nB-34
 for barebox@lists.infradead.org; Tue, 10 Nov 2015 07:53:32 +0000
Date: Tue, 10 Nov 2015 08:53:08 +0100
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20151110075308.GI4931@pengutronix.de>
References: <CAKu_b=K0JvT5g-Zzvs1nRBHjBK2ssWou3ZNhMuviZOZ4dt2W=w@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKu_b=K0JvT5g-Zzvs1nRBHjBK2ssWou3ZNhMuviZOZ4dt2W=w@mail.gmail.com>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] ARM: i.mx53: Add support for Digi ConnectCore ccwmx53 SOM
To: Jason Cobham <cobham.jason@gmail.com>
Cc: barebox@lists.infradead.org

Hello Jason,

there are several problems with this patch:

 - No Signed-off-by line
 - A i.MX machine should really use dt
 - The patch is line-wrapped which makes impossible to apply without
   handwork (unless git has improved accordingly since I looked at such
   a patch last time)
 - Use tabs for indention
 - There is no need for a ccwmx53.h if there is only a single #includer
 - I don't know how you created the patch, but it wasn't git
   format-patch which I'd recommend here

Best regards
Uwe


-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
