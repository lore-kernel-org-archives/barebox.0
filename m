Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SKOxG-0000H9-Jo
 for barebox@lists.infradead.org; Wed, 18 Apr 2012 07:05:35 +0000
Date: Wed, 18 Apr 2012 09:05:17 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120418070517.GK3852@pengutronix.de>
References: <20120418004139.4bdc7da1@eb-e6520>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120418004139.4bdc7da1@eb-e6520>
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
Subject: Re: 800x480 Display broken on i.MX25 with MMU
To: Eric =?iso-8859-15?Q?B=E9nard?= <eric@eukrea.com>
Cc: barebox@lists.infradead.org

On Wed, Apr 18, 2012 at 12:41:39AM +0200, Eric B=E9nard wrote:
> Hi,
> =

> on an i.MX25, it seems that 3100ea14668853aeedae85ec83e3536b59ba7728
> broke framebuffer usage with a 800x480 display when MMU is enabled :
> about 1/4 of the display (at the bottom) is garbage.
> =

> v2011.08.0 : it works fine
> =

> v2011.09.0 : it fails
> =

> disabling MMU makes it work again in v2011.09.0
> =

> then in v2011.09.0 it works with MMU enabled after reverting the
> following commits :
> 43ebdba64a6e1c12fe58aa57e905cfdcef922126
> 56c379160b9f0b52efcaaefce9adb6121d5865d7
> a6c333c7f2dbe49189dd5343da3c921659e88cbf
> 3100ea14668853aeedae85ec83e3536b59ba7728
> =

> So it seems something was broken during MMU rework and I don't yet know
> what : Sascha do you have an idea ?

What is the address of your framebuffer memory? The LCDC has a nasty
limitation, the DMA controller can only access 4MB, the other address
lines are fix. This means that you can't cross a 4MB boundary with the
framebuffer. Currently this case is not caught anywhere.

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
