Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbMbA-0000MW-9O
 for barebox@lists.infradead.org; Wed, 20 May 2020 11:09:21 +0000
Date: Wed, 20 May 2020 13:09:18 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200520110918.GA11869@pengutronix.de>
References: <20200518175458.178943-1-masahiroy@kernel.org>
 <CAK7LNAT_L2Wur8iDFpKPD_tCpNPCd4Lk-6epNMJGX2syMurjtw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAK7LNAT_L2Wur8iDFpKPD_tCpNPCd4Lk-6epNMJGX2syMurjtw@mail.gmail.com>
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
Subject: Re: [PATCH 1/2] kconfig: add 'option modules' to allow tristate
 options to become m
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Barebox List <barebox@lists.infradead.org>

On Tue, May 19, 2020 at 03:24:50AM +0900, Masahiro Yamada wrote:
> On Tue, May 19, 2020 at 2:55 AM Masahiro Yamada <masahiroy@kernel.org> wrote:
> >
> > Since commit 18895514dc5e ("kconfig: update to v3.18-rc6"), tristate
> > symbols cannot become 'm'.
> >
> > In old days of Linux, CONFIG_MODULES was the special hard-coded in
> > Kconfig.
> 
> 
> Please reword this paragraph as follows:
> 
> 
> In old days of Linux, CONFIG_MODULES was the special option hard-coded
> in Kconfig.

Reworded and applied, thanks

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
