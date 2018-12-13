Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gXL8U-0004KP-4t
 for barebox@lists.infradead.org; Thu, 13 Dec 2018 07:10:19 +0000
Date: Thu, 13 Dec 2018 08:10:05 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20181213071005.bln7sq72hwjjoacq@pengutronix.de>
References: <20181127091935.2992-1-o.rempel@pengutronix.de>
 <20181127091935.2992-9-o.rempel@pengutronix.de>
 <20181205115031.d90c15ad4703eba8f8be818d@gmail.com>
 <a749dfd0-031f-ba2d-f30a-b94769f04dbe@gmx.net>
 <20181211143130.573eb44a07866eb62f56e7ed@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20181211143130.573eb44a07866eb62f56e7ed@gmail.com>
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
Subject: Re: [PATCH v3 08/10] MIPS: port all mach* to multiimage
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: Oleksij Rempel <fishor@gmx.net>, Oleksij Rempel <o.rempel@pengutronix.de>, barebox@lists.infradead.org

On Tue, Dec 11, 2018 at 02:31:30PM +0300, Antony Pavlov wrote:
> On Fri, 7 Dec 2018 08:09:50 +0100
> Oleksij Rempel <fishor@gmx.net> wrote:
> 
> > Hi Anthony,
> > 
> > i would be happy if you can say:
> > - this set is no go, because...
> > or:
> > - right now, I can't test it and if it caused some regression they will
> > be fixed in separate patches...
> > 
> 
> Hi Oleksij!
> 
> Sorry for delay.
> 
> I have tested mltiimage barebox on top on next branch,
> the latest next branch  commit  is a141773b21bdc3e57486594b687cd307637bd
> Merge: 787c9fb55f 34d598023e
> Author: Sascha Hauer <s.hauer@pengutronix.de>
> Date:   Fri Nov 30 22:23:12 2018 +0100
> 
>     Merge branch 'for-next/ubimkvol_add_volume_id_parameter' into next
> 
> barebox succesfully works on DPTechnics module and on Black Swift board.
> 
> @Sascha!
> Please merge Oleksij's mips multiimage branch.

Ok, thanks for testing. I just applied it.

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
