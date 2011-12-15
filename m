Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mo5.mail-out.ovh.net ([178.32.228.5])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RbBnu-0005Gf-41
 for barebox@lists.infradead.org; Thu, 15 Dec 2011 13:56:59 +0000
Received: from mail434.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id ABA5CFF936A
 for <barebox@lists.infradead.org>; Thu, 15 Dec 2011 14:57:21 +0100 (CET)
Date: Thu, 15 Dec 2011 14:52:29 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20111215135229.GG9234@game.jcrosoft.org>
References: <1323884841-21920-1-git-send-email-plagnioj@jcrosoft.com>
 <4EE8F498.1080108@eukrea.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4EE8F498.1080108@eukrea.com>
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
Subject: Re: [PATCH v2] defaultenv: use a compressed version when embedded
 in barebox
To: Eric =?iso-8859-1?Q?B=E9nard?= <eric@eukrea.com>
Cc: barebox@lists.infradead.org

On 20:10 Wed 14 Dec     , Eric B=E9nard wrote:
> Hi,
> =

> Le 14/12/2011 18:47, Jean-Christophe PLAGNIOL-VILLARD a =E9crit :
> >with using gzip and the default env we can save 5.2KiB (5,352 bytes)
> >
> >tested on sam9g20ek
> >before
> >-rwxr-xr-x  1 root root 265748 Dec 14 00:42 barebox.bin
> >after
> >-rwxr-xr-x  1 root root 260396 Dec 14 00:42 barebox.bin
> >
> what is the consequence on the boottime ?
no difference nearly I've seen the same boot time

I've seen over 10 boots sometime 100ms differences (3 times)

but it manual check and my chrono can not be more preceise than 100ms

I've no scope to be more precise

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
