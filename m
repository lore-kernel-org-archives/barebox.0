Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp2-g21.free.fr ([2a01:e0c:1:1599::11])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SDE4O-00057Q-9a
 for barebox@lists.infradead.org; Thu, 29 Mar 2012 12:03:13 +0000
Received: from eb-e6520 (unknown [82.240.38.71])
 by smtp2-g21.free.fr (Postfix) with ESMTP id 9FAC74B00C1
 for <barebox@lists.infradead.org>; Thu, 29 Mar 2012 14:03:04 +0200 (CEST)
Date: Thu, 29 Mar 2012 14:03:03 +0200
From: Eric =?ISO-8859-1?B?QuluYXJk?= <eric@eukrea.com>
Message-ID: <20120329140303.71c94361@eb-e6520>
In-Reply-To: <OF440839EF.2383F590-ONC12579D0.00410F43-C12579D0.004184D1@o0802.rafi.inhouse>
References: <OF440839EF.2383F590-ONC12579D0.00410F43-C12579D0.004184D1@o0802.rafi.inhouse>
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
Subject: Re: Create NAND Partition through barebox
To: barebox@lists.infradead.org

Hi,

Le Thu, 29 Mar 2012 13:55:43 +0200,
christian.buettner@rafi.de a =E9crit :
> i need to create a NAND Partition through the barebox prompt to be able t=
o =

> flash a kernel image on it.
> =

>.../...
> =

> I tried using
> $ nand -a /dev/nand0.*
> =

> Nothing happens..
> What is wrong?
> =

do you have the partition definition in your /env/config file ?

Eric

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
