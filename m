Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x22a.google.com ([2a00:1450:4010:c03::22a])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZIUxr-0000Gz-8D
 for barebox@lists.infradead.org; Fri, 24 Jul 2015 04:52:08 +0000
Received: by lagw2 with SMTP id w2so7155041lag.3
 for <barebox@lists.infradead.org>; Thu, 23 Jul 2015 21:51:45 -0700 (PDT)
Date: Fri, 24 Jul 2015 07:58:56 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20150724075856.2b8a3e2c845ccbf32032cdb6@gmail.com>
In-Reply-To: <20150720104524.GC18700@pengutronix.de>
References: <1437336443-8076-1-git-send-email-antonynpavlov@gmail.com>
 <20150720071013.GX18700@pengutronix.de>
 <20150720130649.24ddbd5dd3f7e3cd7de9b3a0@gmail.com>
 <20150720104524.GC18700@pengutronix.de>
Mime-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [RFC v2 00/16] barebox picotcp integration (2015.07.19)
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, 20 Jul 2015 12:45:24 +0200
Sascha Hauer <s.hauer@pengutronix.de> wrote:

> On Mon, Jul 20, 2015 at 01:06:49PM +0300, Antony Pavlov wrote:
> > On Mon, 20 Jul 2015 09:10:13 +0200
> > Sascha Hauer <s.hauer@pengutronix.de> wrote:
> > =

> > > Hi Antony,
> > > =

> > > On Sun, Jul 19, 2015 at 11:07:07PM +0300, Antony Pavlov wrote:
> > > > I have just published latest picotcp-enabled barebox.
> > > > Please see my 20150719.picotcp branch in my github barebox repo
> > > > (https://github.com/frantony/barebox/tree/20150719.picotcp).
> > > > =

> > > > This version is based on the latest barebox-next and picotcp v1.5.0
> > > > (there is also picotcp v1.5.1, but is has no interested
> > > > for barebox changes since v1.5.0).
> > > > =

> > > > =

> > > > Changes since 2015.07.15 (see http://lists.infradead.org/pipermail/=
barebox/2015-June/024174.html):
> > > > =

> > > >     * net: UDP API changed to satisfy the picotcp integration needs;
> > > >     * nfs, tftp and dns subsystems have no picotcp-related stuff an=
ymore.
> > > >     * netconsole works on top of picotcp with no additional changes.
> > > > =

> > > > =

> > > > Here are some notes:
> > > > =

> > > >   1. just now tftp/nfs file transfer on top of picotcp is slower th=
an
> > > >      the same transfer on top of legacy network stack;
> > > > =

> > > >   2. there is no $<current network interface> anymore,
> > > >      so dhcp, tftp and ifup commands don't work on top of picotcp.
> > > >      The ifconfig command is used for network interfaces setup.
> > > > =

> > > >      N.B. There is an old patch for dhcp support on top of picotcp
> > > >         https://github.com/frantony/barebox/commit/94021b6d7bb933cd=
50b7ea9e2c55725b5c404205
> > > > =

> > > >   3. The picoping command is used insted of traditional ping comman=
d.
> > > =

> > > First of all I applied patches 1-4 to next.
> > =

> > Sascha!
> > =

> > Please comment patches 5-7!
> > =

> > Probably these patches will be changed in the next picotcp integration =
patchseries version,
> > but your comment on them could be very beneficial.
> =

> From looking at them they are ok. I haven't found the place where you
> allocate packets now, but please make sure they are aligned for dma
> accesses, i.e. use net_alloc_packet(). Otherwise this happens:
> =

> eth0: Transmit data not aligned: c0416acc!
> =


Could you try this patch, please?

--- a/net/picotcp/include/arch/pico_barebox.h
+++ b/net/picotcp/include/arch/pico_barebox.h
@@ -45,7 +45,16 @@ static inline void pico_free(void *x)
 }
 #else
 =

-#define pico_zalloc(x) calloc(x, 1)
+#include <xfuncs.h>
+
+static inline void *xzmemalign(size_t alignment, size_t bytes)
+{
+	void *ptr =3D xmemalign(alignment, bytes);
+	memset(ptr, 0, bytes);
+	return ptr;
+}
+
+#define pico_zalloc(x) xzmemalign(32, x)
 #define pico_free(x) free(x)
 #endif
 =

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
