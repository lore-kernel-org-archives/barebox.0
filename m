Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6Uw1-0005X4-Ta
 for barebox@lists.infradead.org; Tue, 25 Feb 2020 07:47:19 +0000
Date: Tue, 25 Feb 2020 08:47:15 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200225074715.GF3335@pengutronix.de>
References: <20200217143817.31360-1-yegorslists@googlemail.com>
 <20200219075241.i6lcrc5q4myhdbxz@pengutronix.de>
 <de1b6c7a-10ba-a206-4c10-263aef0d29ed@pengutronix.de>
 <CAGm1_ktrXnZLtrZN7RKZMuywD_+GsLxBvX+GOmr+nPKV2_qZ_Q@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAGm1_ktrXnZLtrZN7RKZMuywD_+GsLxBvX+GOmr+nPKV2_qZ_Q@mail.gmail.com>
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
Subject: Re: [PATCH] arm: baltos: use compressed DTB images
To: Yegor Yefremov <yegorslists@googlemail.com>
Cc: barebox <barebox@lists.infradead.org>, Ahmad Fatoum <a.fatoum@pengutronix.de>

On Mon, Feb 24, 2020 at 11:35:50AM +0100, Yegor Yefremov wrote:
> On Wed, Feb 19, 2020 at 4:34 PM Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:
> >
> > Hello Sascha,
> >
> > > You have to select ARM_USE_COMPRESSED_DTB from the boards Kconfig entry
> > > to make sure the uncompressing functions are available.
> >
> > ARM_USE_COMPRESSED_DTB is enabled transitively because ARCH_AM33XX
> > selects it.
> 
> So, no changes required then?

No. Applied, thanks

Sascha


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
