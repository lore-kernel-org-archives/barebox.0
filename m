Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 10.mo1.mail-out.ovh.net ([178.32.96.102]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TaMmi-0003Z4-B1
 for barebox@lists.infradead.org; Mon, 19 Nov 2012 08:32:53 +0000
Received: from mail405.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id 49905FF9FAA
 for <barebox@lists.infradead.org>; Mon, 19 Nov 2012 09:44:04 +0100 (CET)
Date: Mon, 19 Nov 2012 09:32:47 +0100
From: Eric =?ISO-8859-1?B?QuluYXJk?= <eric@eukrea.com>
Message-ID: <20121119093247.6ae12da4@eb-e6520>
In-Reply-To: <20121119081815.GA8572@greatfirst.com>
References: <20121119081815.GA8572@greatfirst.com>
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
Subject: Re: howto cp to flash
To: barebox@lists.infradead.org

Hi,

Le Mon, 19 Nov 2012 16:18:16 +0800,
zzs <zzs213@126.com> a =E9crit :

> After download zbarebox.bin to /, I wrote it to flash
> =

>    tftp barebox.bin
>    memcpy -b -s./zbarebox.bin -d/dev/nor0.root 0 0
> =

this should work :
tftp barebox.bin
unprotect /dev/nor0.root
erase /dev/nor0.root
cp barebox.bin /dev/nor0.root

or with less operations :
unprotect /dev/nor0.root
erase /dev/nor0.root
tftp barebox.bin /dev/nor0.root

Eric

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
