Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp3-g21.free.fr ([2a01:e0c:1:1599::12])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RaDEG-0006e6-Rz
 for barebox@lists.infradead.org; Mon, 12 Dec 2011 21:16:11 +0000
Received: from [192.168.2.10] (unknown [82.233.81.124])
 by smtp3-g21.free.fr (Postfix) with ESMTP id 34467A64EA
 for <barebox@lists.infradead.org>; Mon, 12 Dec 2011 22:16:01 +0100 (CET)
Message-ID: <4EE66F10.7090409@eukrea.com>
Date: Mon, 12 Dec 2011 22:16:00 +0100
From: =?ISO-8859-1?Q?Eric_B=E9nard?= <eric@eukrea.com>
MIME-Version: 1.0
References: <4EE62D17.1090709@eukrea.com>
In-Reply-To: <4EE62D17.1090709@eukrea.com>
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
Subject: Re: magicvar breaks tftp (or ramfs)
To: barebox@lists.infradead.org

Hi,

Le 12/12/2011 17:34, Eric B=E9nard a =E9crit :
> while upgrading to lastet head, I started to get "unable to handle paging
> request" when transfering file using tftp (either to nand or to ram).
>
> On master it always fail. On 2011.12 : it works (both configured with make
> eukrea_cpuimx35_defconfig and tested on an i.MX35 board)
>
 > .../...
 >
> Any idea what could be wrong here ?
>
OK I fail to reproduce the problem on an i.MX51 and on an i.MX25 so the =

problem is not in barebox generic code.

Eric

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
