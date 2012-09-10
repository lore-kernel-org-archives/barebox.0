Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 17.mo3.mail-out.ovh.net ([87.98.178.58]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TAymJ-0006U1-Ih
 for barebox@lists.infradead.org; Mon, 10 Sep 2012 07:51:32 +0000
Received: from mail171.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 19585FF8F35
 for <barebox@lists.infradead.org>; Mon, 10 Sep 2012 09:59:17 +0200 (CEST)
Date: Mon, 10 Sep 2012 09:51:19 +0200
From: Eric =?ISO-8859-1?B?QuluYXJk?= <eric@eukrea.com>
Message-ID: <20120910095119.6dd961fc@eb-e6520>
In-Reply-To: <20120910074336.GR24458@pengutronix.de>
References: <1346960309-3999-1-git-send-email-eric@eukrea.com>
 <20120910074336.GR24458@pengutronix.de>
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
Subject: Re: [PATCH 1/3] fec: restart autoneg at open instead of init
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Sascha,

Le Mon, 10 Sep 2012 09:43:36 +0200,
Sascha Hauer <s.hauer@pengutronix.de> a =E9crit :
> Regarding the phy issue I have the following plan:
> =

> - for -next I think Jean-Christophes phylib will be ready to merge.
>   Hopefully it will for for you then again. I think this patch is
>   not necessary anymore then.
> - for -master I intend to take the "miidev: fix 1G wrong detection"
>   patch which should solve your problem for the next release.
> =

OK, I'll give a try to -next when I find some time.

Eric

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
