Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gYmTF-0006iq-A0
 for barebox@lists.infradead.org; Mon, 17 Dec 2018 06:33:43 +0000
Date: Mon, 17 Dec 2018 07:33:26 +0100
From: Robert Schwebel <r.schwebel@pengutronix.de>
Message-ID: <20181217063326.d2vdxquub5opyc47@pengutronix.de>
References: <20181215100235.22494-1-linux@rempel-privat.de>
 <20181215100235.22494-2-linux@rempel-privat.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20181215100235.22494-2-linux@rempel-privat.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v1 2/3] MIPS: convert files with not precise GNU version
 to SPDX
To: Oleksij Rempel <linux@rempel-privat.de>
Cc: barebox@lists.infradead.org

On Sat, Dec 15, 2018 at 11:02:34AM +0100, Oleksij Rempel wrote:
> According to COPYING file in the root directory, this files should be
> marked as GPL-1.0-or-later:
> ....
>   9. The Free Software Foundation may publish revised and/or new versions
> of the General Public License from time to time.  Such new versions will
> be similar in spirit to the present version, but may differ in detail to
> address new problems or concerns.

The toplevel COPYING file is a GPLv2, without "or later".

rsc
-- 
Pengutronix e.K.                           | Dipl.-Ing. Robert Schwebel  |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
