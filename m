Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bHn35-0006mO-Ce
 for barebox@lists.infradead.org; Tue, 28 Jun 2016 07:03:08 +0000
Date: Tue, 28 Jun 2016 09:02:45 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160628070245.GM20657@pengutronix.de>
References: <1466771041-89803-1-git-send-email-poggi.raph@gmail.com>
 <1466771041-89803-7-git-send-email-poggi.raph@gmail.com>
 <20160628065021.GK20657@pengutronix.de>
 <CACqcpZDH01ounyRH4UgJ4-f-BCpZ_YSRSwn2wwnnXHxc29-vsA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACqcpZDH01ounyRH4UgJ4-f-BCpZ_YSRSwn2wwnnXHxc29-vsA@mail.gmail.com>
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
Subject: Re: [PATCH v3 06/14] arm: cpu: start: arm64 does not support
 relocation
To: =?iso-8859-15?Q?Rapha=EBl?= Poggi <poggi.raph@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, Jun 28, 2016 at 09:01:14AM +0200, Rapha=EBl Poggi wrote:
> 2016-06-28 8:50 GMT+02:00 Sascha Hauer <s.hauer@pengutronix.de>:
> > On Fri, Jun 24, 2016 at 02:23:53PM +0200, Raphael Poggi wrote:
> >> For now, the relocation is not supported in arm64, so
> >> enclosed call to "setup_c" with #if directive
> >>
> >> Signed-off-by: Raphael Poggi <poggi.raph@gmail.com>
> >> ---
> >>  arch/arm/cpu/start.c | 2 ++
> >>  1 file changed, 2 insertions(+)
> >>
> >> diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
> >> index e037d91..5051115 100644
> >> --- a/arch/arm/cpu/start.c
> >> +++ b/arch/arm/cpu/start.c
> >> @@ -151,7 +151,9 @@ __noreturn void barebox_non_pbl_start(unsigned lon=
g membase,
> >>               relocate_to_adr(barebox_base);
> >>       }
> >>
> >> +#if __LINUX_ARM_ARCH__ <=3D 7
> >>       setup_c();
> >> +#endif
> >
> > setup_c not only relocates the binary, it also clears the bss segment.
> > Where is this done on arm64?
> =

> It is not done...I forgot about that.
> =

> I will create a setupc_64.S, in the first time, this will only clear
> bss. Later, we could also add relocation support.

Ok, that should do it for now.

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
