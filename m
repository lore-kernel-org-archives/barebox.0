Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pz0-f49.google.com ([209.85.210.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SV4sR-0001mA-1e
 for barebox@lists.infradead.org; Thu, 17 May 2012 17:52:39 +0000
Received: by dadm1 with SMTP id m1so3104348dad.36
 for <barebox@lists.infradead.org>; Thu, 17 May 2012 10:52:36 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CAA4bVAF6=LXsv7Q97Mi6uSx_0oY+h=pyTOrRip=+dyAykGWKpw@mail.gmail.com>
References: <CAA4bVAF6=LXsv7Q97Mi6uSx_0oY+h=pyTOrRip=+dyAykGWKpw@mail.gmail.com>
Date: Thu, 17 May 2012 21:52:36 +0400
Message-ID: <CAA4bVAE=UFvDOv0MS97wZjqBLJKxjxRvt3n+7eQME1gfk++RbA@mail.gmail.com>
From: Antony Pavlov <antonynpavlov@gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: build timestamps don't work
To: barebox <barebox@lists.infradead.org>

ping

On 16 May 2012 08:27, Antony Pavlov <antonynpavlov@gmail.com> wrote:
> Hi!
>
> =A0I have found that on my Debian testing build system generation of
> timestamps don't work correctly.
>
> $ cd barebox.git
> $ git checkout next
> $ make mrproper
> $ make qemu-malta_defconfig
> $ make
> $ cat .version
> 0
> $ edit ...
> $ edit ...
> $ edit ...
> $ make
> $ cat .version
> 0
> $ echo 4 > .version
> $ make
> $ edit ...
> $ edit ...
> $ edit ...
> $ make
> $ cat .version
> 4
>
> --
> Best regards,
> =A0 Antony Pavlov



-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
