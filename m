Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x22e.google.com ([2a00:1450:4010:c04::22e])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZZhcr-000579-He
 for barebox@lists.infradead.org; Wed, 09 Sep 2015 15:49:34 +0000
Received: by lbpo4 with SMTP id o4so8207514lbp.2
 for <barebox@lists.infradead.org>; Wed, 09 Sep 2015 08:49:12 -0700 (PDT)
Date: Wed, 9 Sep 2015 18:57:34 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20150909185734.bd271f2414a72ec9037fe2eb@gmail.com>
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

Hmm, I see a new endian related patch in pengutronix next branch. Please se=
e below.

> Do you have other patches in your tree?

Do you have this patch in you local tree?

commit d192ebe8bb78296d1d86b35cacb7aa3cd5414d7a
Author: David S. Miller <davem@davemloft.net>
Date:   Tue Sep 1 15:48:08 2015 +0300

    endian: Always evaluate arguments

...

    Signed-off-by: David S. Miller <davem@davemloft.net>
    Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
    Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

 include/linux/byteorder/big_endian.h    | 12 ++++++------
 include/linux/byteorder/little_endian.h | 12 ++++++------


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
