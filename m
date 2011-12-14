Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp3-g21.free.fr ([2a01:e0c:1:1599::12])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RauDh-0006ig-7K
 for barebox@lists.infradead.org; Wed, 14 Dec 2011 19:10:26 +0000
Received: from [192.168.2.10] (unknown [82.233.81.124])
 by smtp3-g21.free.fr (Postfix) with ESMTP id 5A7D8A673E
 for <barebox@lists.infradead.org>; Wed, 14 Dec 2011 20:10:18 +0100 (CET)
Message-ID: <4EE8F498.1080108@eukrea.com>
Date: Wed, 14 Dec 2011 20:10:16 +0100
From: =?ISO-8859-1?Q?Eric_B=E9nard?= <eric@eukrea.com>
MIME-Version: 1.0
References: <1323884841-21920-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1323884841-21920-1-git-send-email-plagnioj@jcrosoft.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"; Format="flowed"
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v2] defaultenv: use a compressed version when embedded
 in barebox
To: barebox@lists.infradead.org

Hi,

Le 14/12/2011 18:47, Jean-Christophe PLAGNIOL-VILLARD a =E9crit :
> with using gzip and the default env we can save 5.2KiB (5,352 bytes)
>
> tested on sam9g20ek
> before
> -rwxr-xr-x  1 root root 265748 Dec 14 00:42 barebox.bin
> after
> -rwxr-xr-x  1 root root 260396 Dec 14 00:42 barebox.bin
>
what is the consequence on the boottime ?

Eric

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
