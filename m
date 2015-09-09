Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x22e.google.com ([2a00:1450:4010:c04::22e])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZZhJh-0008WQ-Et
 for barebox@lists.infradead.org; Wed, 09 Sep 2015 15:29:46 +0000
Received: by lbpo4 with SMTP id o4so7866973lbp.2
 for <barebox@lists.infradead.org>; Wed, 09 Sep 2015 08:29:22 -0700 (PDT)
Date: Wed, 9 Sep 2015 18:37:42 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20150909183742.10e5bdef1c534240caee6128@gmail.com>
In-Reply-To: <20150909064435.GE18700@pengutronix.de>
References: <1441705005-29340-1-git-send-email-antonynpavlov@gmail.com>
 <20150909064435.GE18700@pengutronix.de>
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
Subject: Re: [PATCH] endian: sync {big,little}_endian.h with linux-4.2
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, 9 Sep 2015 08:44:35 +0200
Sascha Hauer <s.hauer@pengutronix.de> wrote:

> Hi Antony,
> =

> On Tue, Sep 08, 2015 at 12:36:45PM +0300, Antony Pavlov wrote:
> > Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> > ---
> > =

> > This patch makes ehci-hcd.c happy on big-endian MIPS
> > by importing __constant_cpu_to_le16()
> > from linux.git/include/uapi/linux/byteorder/big_endian.h
> > =

> >  include/linux/byteorder/big_endian.h    | 118 +++++++++++++++++++++---=
--------
> >  include/linux/byteorder/little_endian.h | 118 +++++++++++++++++++++---=
--------
> >  2 files changed, 156 insertions(+), 80 deletions(-)
> =

> Applying: endian: sync {big,little}_endian.h with linux-4.2
> error: patch failed: include/linux/byteorder/little_endian.h:9
> error: include/linux/byteorder/little_endian.h: patch does not apply
> =

> include/linux/byteorder/little_endian.h hasn't been changed since 2011.
> Do you have other patches in your tree?

I have no other patches. Here is my 'git log -2' output:

commit 85e356fdff6e02dc7535b0dfcbe4bbf51604407e
Author: Antony Pavlov <antonynpavlov@gmail.com>
Date:   Wed Dec 3 23:44:54 2014 +0300

    endian: sync {big,little}_endian.h with linux-4.2

    Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>

commit 4d3a2a9b61388af4b27434c57ae3b6ca265830c5
Merge: 9dd0e52 790584b
Author: Sascha Hauer <s.hauer@pengutronix.de>
Date:   Mon Sep 7 07:20:31 2015 +0200

    Merge branch 'for-next/usb' into next

I have just pushed my endian-related branch to github:
  https://github.com/frantony/barebox/tree/20150908.endian


> Sascha
> =

> -- =

> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


-- =

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
