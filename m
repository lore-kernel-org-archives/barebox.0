Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp3-g21.free.fr ([2a01:e0c:1:1599::12])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SIot4-0000Dp-NT
 for barebox@lists.infradead.org; Fri, 13 Apr 2012 22:22:39 +0000
Received: from eb-e6520 (unknown [82.233.81.124])
 by smtp3-g21.free.fr (Postfix) with ESMTP id A30E2A6152
 for <barebox@lists.infradead.org>; Sat, 14 Apr 2012 00:22:32 +0200 (CEST)
Date: Sat, 14 Apr 2012 00:22:31 +0200
From: Eric =?ISO-8859-1?B?QuluYXJk?= <eric@eukrea.com>
Message-ID: <20120414002231.4702ac96@eb-e6520>
In-Reply-To: <20120413221710.GB26836@pengutronix.de>
References: <20120413221710.GB26836@pengutronix.de>
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
Subject: Re: IMX_IIM on which SoCs?
To: barebox@lists.infradead.org

Hi Wolfram,

Le Sat, 14 Apr 2012 00:17:10 +0200,
Wolfram Sang <w.sang@pengutronix.de> a =E9crit :

> =

> I just stumbled over commit 97c37f4014b0e3bacf31fe5b6ba890cc7f465838 which
> changes this:
> =

> -       depends on ARCH_IMX25 || ARCH_IMX35
> +       depends on !ARCH_IMX21 && !ARCH_IMX21
> =

> The double !ARCH_IMX21 looks fishy. Can't tell if the second IMX21 should
> have been something else.
> =

excepting i.MX2&, the other IMX supported by barebox have IIM so the
second !ARCH_IMX21 can be removed here

Eric

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
