Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-qy0-f177.google.com ([209.85.216.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RXel8-0005ra-Js
 for barebox@lists.infradead.org; Mon, 05 Dec 2011 20:03:31 +0000
Received: by qcsf1 with SMTP id f1so1548237qcs.36
 for <barebox@lists.infradead.org>; Mon, 05 Dec 2011 12:03:29 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <87r50ilxed.fsf@free.fr>
References: <87r50ilxed.fsf@free.fr>
Date: Mon, 5 Dec 2011 21:03:27 +0100
Message-ID: <CAJfOKBzSOKmZEvmWsWxQ1+yJFxaB-rzCgR2mxTpTUCoA_9W1Mg@mail.gmail.com>
From: Franck JULLIEN <franck.jullien@gmail.com>
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
Subject: Re: FAT filesystem write and long names stability
To: Robert Jarzmik <robert.jarzmik@free.fr>
Cc: barebox@lists.infradead.org

Hi Robert,

2011/12/5 Robert Jarzmik <robert.jarzmik@free.fr>:
>
> Does anyone have a feedback about the FAT filesystem support in barebox ?
>
> From my first tests, I think that :
> =A0- long filenames is a bit buggy (when activated, I have a exception in=
 a ls
> =A0command)
> =A0- write doesn't seem to work : on a mounted SD card, I make a "mkdir t=
oto",
> =A0then dismount and remount =3D> the directory is gone.
>
> Is anyone else doing tests in this area ?
>
> Cheers.
>
> --
> Robert
>
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

Do you have this patch applied to your working branch ? :

fs/fat: Initialize local variable finfo

fat_stat in fs/fat.c declares finfo but doesn't initialize it.
When get_fileinfo is called, fno->lfname and fno->lfsize are
tested but haven't been zeroed...This can lead to a wrong
behavior.

When I worked on MMC SPI, I had problems with long file names. This
uninitialized
varible was the root cause...

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
