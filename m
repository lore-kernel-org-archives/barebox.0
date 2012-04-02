Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SEiOL-0001IC-IN
 for barebox@lists.infradead.org; Mon, 02 Apr 2012 14:38:00 +0000
Date: Mon, 2 Apr 2012 16:37:44 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120402143744.GZ3852@pengutronix.de>
References: <63954CAD61AA2440BC0B16A69EAE2BBC630E110778@srv-exc.techimp.com>
 <63954CAD61AA2440BC0B16A69EAE2BBC630E110855@srv-exc.techimp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <63954CAD61AA2440BC0B16A69EAE2BBC630E110855@srv-exc.techimp.com>
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
Subject: Re: R: filling string variables in script
To: Martino Ruppi <mruppi@techimp.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Mon, Apr 02, 2012 at 04:28:22PM +0200, Martino Ruppi wrote:
> I'm sorry, I renovate my previous question.
> Or maybe it wasn't arrived to the list.
> I appreciate if someone could put me on right trace.
> Thanks. Marty
> =

> Da: barebox-bounces@lists.infradead.org [mailto:barebox-bounces@lists.inf=
radead.org] Per conto di Martino Ruppi
> Inviato: gioved=EC 29 marzo 2012 15.36
> A: barebox@lists.infradead.org
> Oggetto: filling string variables in script
> =

> Dear all,
> I would ask a question as barebox user.
> I mind to set a variable as result of memory reading but I understand it =
doesn't implemented redirection.
> I'd like to do something of this:
> =

> myvar=3D""
> memcpy -s  /dev/nor0.switch -d $myvar 0x0 0x0 4
> =

> or
> =

> myvar=3D"$(cat /dev/nor0.switch)"
> =

> I think, I use one of last releases (version command?).
> Thanks to everyone can help me.

If I understand correctly then you want to copy the content of
/dev/nor0.switch to a variable. I'm afraid there currently is no
way to do this in barebox. What information is inside this nor
partition? It seems like you want to implement some kind of redundant
boot and want to decide which rootfs you want to boot. Am I right?

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
