Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VEDFV-000259-Jm
 for barebox@lists.infradead.org; Tue, 27 Aug 2013 06:59:34 +0000
From: =?iso-8859-1?q?J=FCrgen_Beisert?= <jbe@pengutronix.de>
Date: Tue, 27 Aug 2013 09:00:20 +0200
References: <1377493037-2229-1-git-send-email-antonynpavlov@gmail.com>
 <20130826194758.GC24470@titan.lakedaemon.net> <521BE5A1.5080109@gmail.com>
In-Reply-To: <521BE5A1.5080109@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201308270900.20950.jbe@pengutronix.de>
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
Subject: Re: [RFC 1/8] ARM: add very initial support for Canon DIGIC chips
To: barebox@lists.infradead.org
Cc: Jason Cooper <jason@lakedaemon.net>

On Tuesday 27 August 2013 01:32:49 Sebastian Hesselbarth wrote:
> [...]
> you should have used
>
> git grep -c '^#[ \t]define'
>
> It is in fact quite common to distinguish address offset macros
> and bit macros by adding a space, but between '#' and 'define'.

From the GCC webpage:
"Preprocessing directives are recognized in traditional C only when their =

leading # appears in the first column. There can be no whitespace between t=
he =

beginning of the line and the #."

jbe

-- =

Pengutronix e.K. =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0| Juergen Beisert =A0 =A0 =A0 =A0 =A0 =A0 |
Linux Solutions for Science and Industry =A0 =A0 =A0| http://www.pengutroni=
x.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
