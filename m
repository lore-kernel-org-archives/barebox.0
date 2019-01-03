Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gez9E-0000op-0U
 for barebox@lists.infradead.org; Thu, 03 Jan 2019 09:18:41 +0000
Date: Thu, 3 Jan 2019 10:18:33 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190103091833.7toenpso5b36wqd2@pengutronix.de>
References: <1546178368-26182-1-git-send-email-yamada.masahiro@socionext.com>
 <20181231061208.GA12963@ravnborg.org>
 <CAK7LNAQ_LbK0-cFy393cdxj2ERpNWHV+9R21hDzdyX8Uf7avGA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAK7LNAQ_LbK0-cFy393cdxj2ERpNWHV+9R21hDzdyX8Uf7avGA@mail.gmail.com>
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
Subject: Re: [PATCH 00/11] Sync Kconfig to Linux 4.20
To: Masahiro Yamada <yamada.masahiro@socionext.com>
Cc: barebox@lists.infradead.org, Sam Ravnborg <sam@ravnborg.org>

Hi Masahiro,

On Tue, Jan 01, 2019 at 06:13:06PM +0900, Masahiro Yamada wrote:
> Hi Sam,
> 
> On Mon, Dec 31, 2018 at 3:12 PM Sam Ravnborg <sam@ravnborg.org> wrote:
> >
> > Hi Masahiro
> >
> > Thanks for taking your time to sync kconfig up with the kernel, very appreciated!
> >
> > I left a few comments to some of the patches, but nothing that require
> > a re-spin.
> 
> 
> Thanks for the review!
> 
> I hope Sascha will fix up flaws in the commit log.

Thanks for working on this. I can only repeat Sam, this is really
appreciated.

I fixed up the commit messaged and applied.

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
