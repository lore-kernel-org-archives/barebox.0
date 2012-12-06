Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 7.mo4.mail-out.ovh.net ([178.33.253.54]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TgZcM-0002m7-I5
 for barebox@lists.infradead.org; Thu, 06 Dec 2012 11:27:51 +0000
Received: from mail97.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 00AD010508EB
 for <barebox@lists.infradead.org>; Thu,  6 Dec 2012 12:36:02 +0100 (CET)
Date: Thu, 6 Dec 2012 12:27:45 +0100
From: Eric =?ISO-8859-1?B?QuluYXJk?= <eric@eukrea.com>
Message-ID: <20121206122745.6175c7e6@eb-e6520>
In-Reply-To: <10036346.7roAWQEoPH@yiqingliang-pc>
References: <10036346.7roAWQEoPH@yiqingliang-pc>
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
Subject: Re: about the dm9000 in mini2440
To: Yi Qingliang <niqingliang2003@gmail.com>
Cc: barebox@lists.infradead.org

Hi,

Le Thu, 06 Dec 2012 15:55:23 +0000,
Yi Qingliang <niqingliang2003@gmail.com> a =E9crit :

> the address of dm9000 is 0x28000000, it should be cs5, but in function =

> "mini2440_devices_init", it set the cs4 instead, why??
> =

The mini2440 supported in Barebox is this one and maybe not the one
your are using ;-)
http://www.friendlyarm.net/products/mini2440

Eric

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
