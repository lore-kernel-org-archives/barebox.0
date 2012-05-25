Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp2-g21.free.fr ([2a01:e0c:1:1599::11])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SXs7l-0002Ko-SL
 for barebox@lists.infradead.org; Fri, 25 May 2012 10:52:03 +0000
Date: Fri, 25 May 2012 12:51:54 +0200
From: Eric =?ISO-8859-1?B?QuluYXJk?= <eric@eukrea.com>
Message-ID: <20120525125154.1c039173@eb-e6520>
In-Reply-To: <CAHvDM_cjKPKt205M3W+Cn8ns0+_GeYbj7xrtX6D+iiu9cJVt4g@mail.gmail.com>
References: <CAHvDM_cjKPKt205M3W+Cn8ns0+_GeYbj7xrtX6D+iiu9cJVt4g@mail.gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: Check if valid kernel and/or FS
To: Benoit RAT <benoit@sevensols.com>
Cc: barebox@lists.infradead.org

Hi Benoit,

Le Fri, 25 May 2012 12:08:09 +0200,
Benoit RAT <benoit@sevensols.com> a =E9crit :

> I was wondering if there was a good way to check if I have a correct kern=
el
> and/or filesystem in my partition before loading them.
> If it is not the case then I will check out for valid images in tftpboot =
or
> prompt the barebox shell.
> =

first try the boot command, if the kernel is not correct (ie : bad
checksum), the boot command returns and you can then launch a tftpboot
or give a prompt.

Check for example :
http://git.pengutronix.de/?p=3Dbarebox.git;a=3Dblob;f=3Darch/arm/boards/at9=
1sam9m10g45ek/env/bin/menu_boot;h=3Dd0b1396de984e3b00902cfb32598dcf123afc6b=
f;hb=3Drefs/heads/next

> And another question is how can i know that I am using the barebox
> environment from nand flash instead of the one from a scripts?
> =

what do you mean here ?

Eric

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
