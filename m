Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-qt1-x82f.google.com ([2607:f8b0:4864:20::82f])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNGza-000407-C3
 for barebox@lists.infradead.org; Wed, 23 Oct 2019 13:48:03 +0000
Received: by mail-qt1-x82f.google.com with SMTP id d17so17739186qto.3
 for <barebox@lists.infradead.org>; Wed, 23 Oct 2019 06:48:01 -0700 (PDT)
MIME-Version: 1.0
References: <CAEp+FuA76KBuHaZHbDAGrpxtmsw6YSjWp+mVTfJQn98+RuUhxA@mail.gmail.com>
 <20191023133357.wlqjrz4wr4uvmn73@pengutronix.de>
In-Reply-To: <20191023133357.wlqjrz4wr4uvmn73@pengutronix.de>
From: Mihaita Ivascu <mihaita_ivascu@trimble.com>
Date: Wed, 23 Oct 2019 15:47:49 +0200
Message-ID: <CAEp+FuA2erbWOkD3892UbWUjvk3w6s3X4r9LUgzFx_PS+oYG-g@mail.gmail.com>
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
Subject: Re: flash barebox to NAND
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Oct 23, 2019 at 3:33 PM Sascha Hauer <s.hauer@pengutronix.de> wrote:
>
> On Wed, Oct 23, 2019 at 11:39:00AM +0200, Mihaita Ivascu wrote:
> > Hello all,
> >
> >   I would like to know what possibilities do I have to flash a barebox
> > image to mtd partition from Linux?
> >  Using ubifs commands does not work. the barebox will not boot so
> > probably additional info needs to be written except the barebox image
> > itself.
>
> On i.MX a bootloader image can't be written to Nand directly. In barebox
> you can update barebox with the barebox_update command which has support
> for the special image format requirements of the i.MX6. I currently
> don't know any userspace code that can do this, apart from mfgtools or
> other tools from the NXP universe that I have never used. Somebody told
> me he wanted to port the i.MX6 barebox update code to userspace, but
> unfortunately I can't remember who it was and I can't find any pointers
> to it.
>
> Regards,
>   Sascha
>

   Thanks for your detailed answer.
   so there is no way to update a barebox on NAND from Linux except
from the barebox itself(using barebox_update command) ?
   Yes I am trying with mfgtools but no success. NXP does not support
barebox just u-boot and I was not successful on adding mfgtools/UTP
support in barebox.
   And using the u-boot konbs-ng command for flashing bootloader to
NAND is faulty and the reason is documented in the NXP community.
  Surely somebody from barebox community must have had the need before
to update the barebox otherway than using barebox_update from the
barebox itself.

Thanks,
      Mihaita

> --
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
