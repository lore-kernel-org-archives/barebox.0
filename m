Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XCkre-0007Vf-69
 for barebox@lists.infradead.org; Thu, 31 Jul 2014 07:33:27 +0000
From: Juergen Borleis <jbe@pengutronix.de>
Date: Thu, 31 Jul 2014 09:33:02 +0200
References: <1406715606-6821-1-git-send-email-jbe@pengutronix.de>
 <20140731071425.GQ6146@pengutronix.de>
In-Reply-To: <20140731071425.GQ6146@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201407310933.02138.jbe@pengutronix.de>
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
Subject: Re: envfs: provide an intentional way to ignore an existing external
 environment
To: barebox@lists.infradead.org
Cc: Uwe =?iso-8859-1?q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>

Hi Uwe,

On Thursday 31 July 2014 09:14:25 Uwe Kleine-K=F6nig wrote:
> [...]
> Compared with storing the default environment in the external store the
> only difference is that you don't need to modify it if you change the
> internal one, right?

This would also be an advantage of this new feature.

> I wonder what the targeted use case is.

To use an external stored environment *only* for development purposes or te=
sts =

and to keep the possibility to do so.
The production system should always use a well defined built-in default =

environment (but without an error message due to an empty storage which alw=
ays =

looks more like "it works by accident").

> A rescue barebox to repair a borken bootloader and/or environment?

No. If the environment is broken (but valid from the checksum point of view=
) =

this new feature wouldn't help.

Repairing a broken environment/barebox is a different issue.

Regards,
Juergen

-- =

Pengutronix e.K. =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0| Juergen Borleis =A0 =A0 =A0 =A0 =A0 =A0 |
Industrial Linux Solutions               =A0 =A0 =A0| http://www.pengutroni=
x.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
