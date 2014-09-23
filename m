Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 2.mo2.mail-out.ovh.net ([188.165.53.149]
 helo=mo2.mail-out.ovh.net)
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XWJOM-0005Pb-EI
 for barebox@lists.infradead.org; Tue, 23 Sep 2014 06:16:03 +0000
Received: from mail637.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 21EBDFFC810
 for <barebox@lists.infradead.org>; Tue, 23 Sep 2014 08:15:37 +0200 (CEST)
Date: Tue, 23 Sep 2014 08:15:32 +0200
From: Eric =?ISO-8859-1?B?QuluYXJk?= <eric@eukrea.com>
Message-ID: <20140923081532.57f3301d@e6520eb>
In-Reply-To: <20140923060445.GR4992@pengutronix.de>
References: <1411424015-16466-1-git-send-email-eric@eukrea.com>
 <20140923060445.GR4992@pengutronix.de>
MIME-Version: 1.0
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
Subject: Re: [PATCH 1/2] serial-imx: fix for non of usage
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Sascha,

Le Tue, 23 Sep 2014 08:04:45 +0200,
Sascha Hauer <s.hauer@pengutronix.de> a =E9crit :
> This is already fixed by:
> =

> commit dc82bce50b6d7050c8a65682f5ea4078b293f171
> Author: Philipp Zabel <p.zabel@pengutronix.de>
> Date:   Fri Aug 15 11:10:03 2014 +0200
> =

>     serial: imx: Fix for non-devicetree boards
>     =

>     Commit 3843bfd0ab77eaf125ca617922927b61fc8ded74
>     "serial: imx: Determine device name from device tree"
>     broke this driver for non-devicetree boards, since
>     of_alias_get may not be called with a NULL pointer
>     as first argument.
>     =

>     Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>
>     Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> =

> It is contained in master and in the stable/v2014.09 branch.
> Unfortunately it's broken in the last release.
> =

ok stupid me I checked out the v2014.09.0 tag but not the v2014.09
branch

Thanks
Eric

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
