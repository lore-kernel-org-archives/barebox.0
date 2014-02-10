Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WClxs-0002Rj-Qs
 for barebox@lists.infradead.org; Mon, 10 Feb 2014 08:11:41 +0000
Date: Mon, 10 Feb 2014 09:11:18 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140210081118.GE17250@pengutronix.de>
References: <1391640009-3399-7-git-send-email-sebastian.hesselbarth@gmail.com>
 <1391794973-32469-1-git-send-email-sebastian.hesselbarth@gmail.com>
 <1391794973-32469-2-git-send-email-sebastian.hesselbarth@gmail.com>
 <52F51BA4.1050105@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <52F51BA4.1050105@gmail.com>
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
Subject: Re: [PATCH v2 6/7] ARM: dove: sync with DT files from Linux
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org, Michael Grzeschik <mgr@pengutronix.de>

On Fri, Feb 07, 2014 at 06:45:08PM +0100, Sebastian Hesselbarth wrote:
> On 02/07/2014 06:42 PM, Sebastian Hesselbarth wrote:
> >This re-syncs Marvell Dove and Solidrun CuBox DT files with current
> >files from Linux v3.14. Since barebox specific properties are now
> >kept separated, we don't need to tweak them anymore.
> >
> >Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
> >---
> >Changelog:
> >v1->v2:
> >- split-off Linux DT
> 
> Sascha,
> 
> This is of course patch 7 of now 7 patches..
> 
> I can prepare a signed tag you can pull from if you struggle to
> sort it out.

I applied the patches, it was ok to sort it out.

Thanks
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
