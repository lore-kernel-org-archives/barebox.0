Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp2-g21.free.fr ([2a01:e0c:1:1599::11])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RvTeA-0005SO-Gn
 for barebox@lists.infradead.org; Thu, 09 Feb 2012 13:02:47 +0000
Received: from eb-e6520 (unknown [82.240.38.71])
 by smtp2-g21.free.fr (Postfix) with ESMTP id 81BF44B00EA
 for <barebox@lists.infradead.org>; Thu,  9 Feb 2012 14:02:39 +0100 (CET)
Date: Thu, 9 Feb 2012 14:02:38 +0100
From: Eric =?ISO-8859-1?B?QuluYXJk?= <eric@eukrea.com>
Message-ID: <20120209140238.49a3863b@eb-e6520>
In-Reply-To: <alpine.DEB.2.02.1202090652380.19369@oneiric>
References: <alpine.DEB.2.02.1202090652380.19369@oneiric>
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
Subject: Re: what config setting causes barebox to automount the boot
 partition?
To: barebox@lists.infradead.org

Le Thu, 9 Feb 2012 06:54:40 -0500 (EST),
"Robert P. J. Day" <rpjday@crashcourse.ca> a =E9crit :

> =

>   i just noticed with my panda build that the boot partition of the SD
> card is automatically mounted under "boot".  i don't remember that
> happening with my beagle, and i'm not sure if i messed with the config
> settings before building for the panda.
> =

>   what is it that generates that mount?  thanks.
> =

panda/board.c
	mkdir ("/boot", 0666);
	ret =3D mount(diskdev, "fat", "/boot");
	if (ret) {
		printf("failed to mount %s\n", diskdev);
		return 0;
	}

Eric
-- =

http://eukrea.com/en/news/104-2012

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
