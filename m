Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp3-g21.free.fr ([212.27.42.3])
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1RIQQB-0005cu-9Z
	for barebox@lists.infradead.org; Mon, 24 Oct 2011 19:42:56 +0000
Received: from [192.168.2.8] (unknown [82.233.81.124])
	by smtp3-g21.free.fr (Postfix) with ESMTP id E9A16A62F7
	for <barebox@lists.infradead.org>;
	Mon, 24 Oct 2011 21:42:44 +0200 (CEST)
Message-ID: <4EA5BFB3.6030801@eukrea.com>
Date: Mon, 24 Oct 2011 21:42:43 +0200
From: =?ISO-8859-15?Q?Eric_B=E9nard?= <eric@eukrea.com>
MIME-Version: 1.0
References: <1319289593-15251-1-git-send-email-fvanderwerf@gmail.com>
	<20111022202035.GK23421@pengutronix.de>
	<CAJeSw6Be=2jNOw1SSz1xB-7bXL9RyrUuLz+yWcZvxfNap6RkwQ@mail.gmail.com>
	<CAA4bVAGRrH4bwozuWfV9Ck4c=vPfRE4oOPLzWFU2u8--8avkLw@mail.gmail.com>
	<20111024170753.GN23421@pengutronix.de>
	<CAJeSw6CfdF5UuN0fk=trKi-bJD009yDcasjkp_f2twR9giRaCw@mail.gmail.com>
	<4EA5B65D.4020405@eukrea.com>
	<20111024193042.GO23421@pengutronix.de>
In-Reply-To: <20111024193042.GO23421@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-15"; Format="flowed"
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] usb: fix unaligned access
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Le 24/10/2011 21:30, Sascha Hauer a =E9crit :
> On Mon, Oct 24, 2011 at 09:02:53PM +0200, Eric B=E9nard wrote:
>> Hi,
>>
>> Le 24/10/2011 20:37, Fabian van der Werf a =E9crit :
>>>
>>> Okay, I think it may be a compiler problem. The latest code sourcery
>>> compiler builds a barebox that breaks on usb. 2009q1-203 builds fine,
>>> however.
>>>
>>> In the usb code the compiler should be able to figure out that the
>>> access is unaligned from the packed structure. So I guess it should
>>> split up the access in multiple loads/stores. I will look into the
>>> binaries to confirm this. The latest compiler may be broken or maybe
>>> the default behaviour has changed because armv7 actually supports
>>> unaligned access.
>>>
>> can't this be the same problem described here with gcc 4.6 :
>> https://bugs.launchpad.net/ubuntu/+source/linux/+bug/791552
>>
>> solved by this patch :
>> https://launchpadlibrarian.net/73908303/0001-USB-ehci-remove-structure-p=
acking-from-ehci_def.patch
>>
>> with the following explanation :
>> The kernel source marks ehci_regs as packed. gcc 4.6 treats all
>> accesses to packed structures as unaligned and ends up reading the
>> status register multiple times.
>
> If Fabians compiler would treat every access to packed structure members
> as unaligned everything would be fine. The problem seems to be that it
> doesn't treat it as unaligned. Let's wait for Fabians binary analysis.
>
maybe the complete explanation will explain better the problem as barebox =

seems to have the same readl as linux :
http://gcc.gnu.org/ml/gcc/2011-02/msg00035.html

Eric

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
