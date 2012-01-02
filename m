Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 7.mo4.mail-out.ovh.net ([178.33.253.54]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RhkQb-0007po-D3
 for barebox@lists.infradead.org; Mon, 02 Jan 2012 16:08:03 +0000
Received: from mail177.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id A200D10543B5
 for <barebox@lists.infradead.org>; Mon,  2 Jan 2012 17:08:56 +0100 (CET)
Date: Mon, 2 Jan 2012 17:07:52 +0100
From: Eric =?ISO-8859-1?B?QuluYXJk?= <eric@eukrea.com>
Message-ID: <20120102170752.3fcfa949@eb-e6520>
In-Reply-To: <1325336164-25760-1-git-send-email-plagnioj@jcrosoft.com>
References: <1325336164-25760-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH] mtd/core.c: fix MTDPGALG
To: barebox@lists.infradead.org

Le Sat, 31 Dec 2011 13:56:04 +0100,
Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com> a =E9crit :

> introduced in commit f76ad819e4971094
> drivers/mtd: cosmetic changes
> =

> it's supposed to the invert of the writesize - 1
> =

> Cc: Robert Jarzmik <robert.jarzmik@free.fr>
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>

Tested-by: Eric B=E9nard <eric@eukrea.com>

Thanks,
Eric

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
