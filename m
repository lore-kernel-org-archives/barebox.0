Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp2-g21.free.fr ([2a01:e0c:1:1599::11])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SFjW5-00070M-JA
 for barebox@lists.infradead.org; Thu, 05 Apr 2012 10:02:10 +0000
Received: from eb-e6520 (unknown [82.240.38.71])
 by smtp2-g21.free.fr (Postfix) with ESMTP id 2561B4B0194
 for <barebox@lists.infradead.org>; Thu,  5 Apr 2012 12:02:03 +0200 (CEST)
Date: Thu, 5 Apr 2012 12:02:02 +0200
From: Eric =?ISO-8859-1?B?QuluYXJk?= <eric@eukrea.com>
Message-ID: <20120405120202.6be2b812@eb-e6520>
In-Reply-To: <1333618896-7863-1-git-send-email-eric@eukrea.com>
References: <1333618896-7863-1-git-send-email-eric@eukrea.com>
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
Subject: Re: [PATCH] imx27-regs: fix .h usage in assembly file
To: barebox@lists.infradead.org

Le Thu,  5 Apr 2012 11:41:36 +0200,
Eric B=E9nard <eric@eukrea.com> a =E9crit :

> 7ab0a0a i.MX27: Added helper for setup chipselect control register
> added an helper which triggers the following error :
> arch/arm/mach-imx/include/mach/imx27-regs.h:243: Error: bad instruction `=
static inline void imx27_setup_weimcs(size_t cs,unsigned upper,unsigned low=
er,unsigned addional)'
> =

> This patch fix this problem.
> =

and should also fix :
mx27ads_defconfig
neso_defconfig
pca100_defconfig

Eric

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
