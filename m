Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U2Hmu-0002zN-36
 for barebox@lists.infradead.org; Mon, 04 Feb 2013 08:52:28 +0000
Date: Mon, 4 Feb 2013 09:52:26 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130204085226.GH1906@pengutronix.de>
References: <510B99F9.9000801@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <510B99F9.9000801@phytec.de>
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
Subject: Re: make mrproper depends on a .config file?
To: =?iso-8859-15?Q?J=FCrgen?= Kilb <J.Kilb@phytec.de>
Cc: barebox@lists.infradead.org

On Fri, Feb 01, 2013 at 11:33:29AM +0100, J=FCrgen Kilb wrote:
> Hi Sascha,
> why does a "make mrproper" depends on a .config file?
> =

> It looks like commit 789fad984a11f63ad0728cd6eabad97b185dceea is
> responsible...

Seems so, yes. I currently have no idea how to fix this. Reverting this
commit is no solution. I tried to compare it with what the kernel does,
but I have no clue what the problem is.

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
