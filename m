Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WhIrG-00005Z-CH
 for barebox@lists.infradead.org; Mon, 05 May 2014 13:23:04 +0000
Date: Mon, 5 May 2014 15:22:40 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140505132240.GX5858@pengutronix.de>
References: <20140505145512.133932fc3ee2247b660638c2@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20140505145512.133932fc3ee2247b660638c2@gmail.com>
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
Subject: Re: TODO: Rewrite network stack.
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Mon, May 05, 2014 at 02:55:12PM +0400, Antony Pavlov wrote:
> Hi!
> =

> I have inspected TODO file from barebox repo. Here is a quote:
> =

>   [ ] Rewrite network stack. The one-loop-for-all-protocols stack is just=
 too
>       ugly and big and uses thousands of global variables. Identify common
>       functions and make a loop per network protocol
> =

> There is no much tiny TCP/IP stack candidates for porting to barebox.
> The most notable is lwIP (http://savannah.nongnu.org/projects/lwip/).
> =

> See "project that use lwIP" list here: http://lwip.wikia.com/wiki/Project=
s_that_use_lwIP
> =

> lwip code is BSD-licensed. Is it possible to use lwip code in barebox?
> =

> --=A0
> Best regards,
> =A0 Antony Pavlov
> =

> P.S. Anyway TODO file from barebox repo is outdated (last change Jul 22 2=
010).

Indeed. Maybe we should add the following item to it.

Sascha

diff --git a/TODO b/TODO
index 6350799..59fdade 100644
--- a/TODO
+++ b/TODO
@@ -76,6 +76,7 @@ TODO
     devices should be represented as a hierarchical tree in /dev
 [ ] Work out, how to mount driver on PCI devices. The mechanism should be
     transparent to the driver code.
+[ ] remove this file. It doesn't contain much useful information.
 =

 DONE
 ----

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
