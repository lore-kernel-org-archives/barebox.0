Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp3-g21.free.fr ([212.27.42.3])
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1RIPnk-0005Id-S0
	for barebox@lists.infradead.org; Mon, 24 Oct 2011 19:03:13 +0000
Received: from [192.168.2.8] (unknown [82.233.81.124])
	by smtp3-g21.free.fr (Postfix) with ESMTP id 427B2A6324
	for <barebox@lists.infradead.org>;
	Mon, 24 Oct 2011 21:02:59 +0200 (CEST)
Message-ID: <4EA5B65D.4020405@eukrea.com>
Date: Mon, 24 Oct 2011 21:02:53 +0200
From: =?ISO-8859-1?Q?Eric_B=E9nard?= <eric@eukrea.com>
MIME-Version: 1.0
References: <1319289593-15251-1-git-send-email-fvanderwerf@gmail.com>
	<20111022202035.GK23421@pengutronix.de>
	<CAJeSw6Be=2jNOw1SSz1xB-7bXL9RyrUuLz+yWcZvxfNap6RkwQ@mail.gmail.com>
	<CAA4bVAGRrH4bwozuWfV9Ck4c=vPfRE4oOPLzWFU2u8--8avkLw@mail.gmail.com>
	<20111024170753.GN23421@pengutronix.de>
	<CAJeSw6CfdF5UuN0fk=trKi-bJD009yDcasjkp_f2twR9giRaCw@mail.gmail.com>
In-Reply-To: <CAJeSw6CfdF5UuN0fk=trKi-bJD009yDcasjkp_f2twR9giRaCw@mail.gmail.com>
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
Subject: Re: [PATCH] usb: fix unaligned access
To: barebox@lists.infradead.org

Hi,

Le 24/10/2011 20:37, Fabian van der Werf a =E9crit :
>
> Okay, I think it may be a compiler problem. The latest code sourcery
> compiler builds a barebox that breaks on usb. 2009q1-203 builds fine,
> however.
>
> In the usb code the compiler should be able to figure out that the
> access is unaligned from the packed structure. So I guess it should
> split up the access in multiple loads/stores. I will look into the
> binaries to confirm this. The latest compiler may be broken or maybe
> the default behaviour has changed because armv7 actually supports
> unaligned access.
>
can't this be the same problem described here with gcc 4.6 :
https://bugs.launchpad.net/ubuntu/+source/linux/+bug/791552

solved by this patch :
https://launchpadlibrarian.net/73908303/0001-USB-ehci-remove-structure-pack=
ing-from-ehci_def.patch

with the following explanation :
The kernel source marks ehci_regs as packed. gcc 4.6 treats all accesses to =

packed structures as unaligned and ends up reading the status register =

multiple times.

Eric

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
