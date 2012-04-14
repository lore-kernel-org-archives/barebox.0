Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp3-g21.free.fr ([2a01:e0c:1:1599::12])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SJ2r7-0004Uw-G3
 for barebox@lists.infradead.org; Sat, 14 Apr 2012 13:17:35 +0000
Received: from eb-e6520 (unknown [82.233.81.124])
 by smtp3-g21.free.fr (Postfix) with ESMTP id 5B53CA6232
 for <barebox@lists.infradead.org>; Sat, 14 Apr 2012 15:17:24 +0200 (CEST)
Date: Sat, 14 Apr 2012 15:17:23 +0200
From: Eric =?ISO-8859-1?B?QuluYXJk?= <eric@eukrea.com>
Message-ID: <20120414151723.649edcd7@eb-e6520>
In-Reply-To: <1334325273-1701-7-git-send-email-s.hauer@pengutronix.de>
References: <1334325273-1701-1-git-send-email-s.hauer@pengutronix.de>
 <1334325273-1701-7-git-send-email-s.hauer@pengutronix.de>
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
Subject: Re: [PATCH 6/7] ARM: initial Freescale i.MX6q Armadillo2 support
To: barebox@lists.infradead.org

Hi Sascha,

Le Fri, 13 Apr 2012 15:54:32 +0200,
Sascha Hauer <s.hauer@pengutronix.de> a =E9crit :
> --- /dev/null
> +++ b/arch/arm/boards/freescale-mx6-arm2/env/config
> +disk_parts=3D"1M(barebox)ro,1M(bareboxenv),4M(kernel),-(root)"
> +
maybe you could increase env's partition size to 3M so that the rootfs
gets aligned on a 4MB allocation unit which seems to give better
performances on modern SDCard :
https://wiki.linaro.org/WorkingGroups/Kernel/Projects/FlashCardSurvey?actio=
n=3Dshow&redirect=3DWorkingGroups%2FKernelConsolidation%2FProjects%2FFlashC=
ardSurvey
http://lwn.net/Articles/428584/

Eric

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
