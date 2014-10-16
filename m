Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x236.google.com ([2a00:1450:4010:c04::236])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XemPv-0000g0-6Z
 for barebox@lists.infradead.org; Thu, 16 Oct 2014 14:52:40 +0000
Received: by mail-lb0-f182.google.com with SMTP id z11so2900776lbi.41
 for <barebox@lists.infradead.org>; Thu, 16 Oct 2014 07:52:16 -0700 (PDT)
Date: Thu, 16 Oct 2014 18:52:35 +0400
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20141016185235.a006819140c162c6871d4272@gmail.com>
In-Reply-To: <543FD6BE.2040008@ti.com>
References: <1413437285-9300-1-git-send-email-antonynpavlov@gmail.com>
 <543FD6BE.2040008@ti.com>
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
Subject: Re: [PATCH] fixup! Update .mailmap using scripts/mailmapper
To: nm@ti.com
Cc: barebox@lists.infradead.org

On Thu, 16 Oct 2014 09:31:26 -0500
Nishanth Menon <nm@ti.com> wrote:

> On 10/16/2014 12:28 AM, Antony Pavlov wrote:
> > +Nishanth Menon<x0nishan@ti.com>
> Could you use Nishanth Menon <nm@ti.com> ? that has been my updated mail =

> address for a few years now.

Please see this quote from git-shortlog man page:

     The .mailmap feature is used to coalesce together commits by the same =
person in the
     shortlog, where their name and/or email address was spelled differentl=
y.

     ...

     In the simple form, each line in the file consists of the canonical re=
al name of an
     author, whitespace, and an email address used in the commit (enclosed =
by < and >) to
     map to the name.

Also please see this git-log output:

  $ git log --author=3D"Menon"  | grep ^Author: | uniq
  Author: Nishanth Menon <nm@ti.com>
  Author: Nishanth Menon <menon.nishanth@gmail.com>
  Author: Nishanth Menon <x0nishan@ti.com>
  Author: Menon, Nishanth <x0nishan@ti.com>
  Author: Nishanth Menon <x0nishan@ti.com>

This string in the .mailmap file
> > +Nishanth Menon <x0nishan@ti.com>

is used only for mapping "Menon, Nishanth" -> "Nishanth Menon".

Here is git-shortlog output without this string:

$ git shortlog -n -s --author=3D"Menon" =

    35  Nishanth Menon
     4  Menon, Nishanth

So there is no need to add additional string containing <nm@ti.com> to the =
.mailmap file.

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
