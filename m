Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp3-g21.free.fr ([2a01:e0c:1:1599::12])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SEKT6-0005EA-8r
 for barebox@lists.infradead.org; Sun, 01 Apr 2012 13:05:17 +0000
Date: Sun, 1 Apr 2012 15:05:07 +0200
From: Eric =?ISO-8859-1?B?QuluYXJk?= <eric@eukrea.com>
Message-ID: <20120401150507.465b4a6d@eb-e6520>
In-Reply-To: <20120401125209.GE22835@sapphire.tkos.co.il>
References: <CAD9ZU8AJc+LxYRa_HFQ_pxt+G3ijZmyKcQ0MqDKvVHH5FrJ1Qw@mail.gmail.com>
 <20120401104934.GD22835@sapphire.tkos.co.il>
 <20120401144518.73c1cf53@eb-e6520>
 <20120401125209.GE22835@sapphire.tkos.co.il>
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
Subject: Re: nand_imx 4k support ?
To: Baruch Siach <baruch@tkos.co.il>
Cc: barebox@lists.infradead.org

Le Sun, 1 Apr 2012 15:52:09 +0300,
Baruch Siach <baruch@tkos.co.il> a =E9crit :
> Does the Linux kernel detect your flash correctly?
> =

I'm not at this stage for the moment as I'm using a SDcard rootfs to
validate the hardware for the moment, but I'm sure the actual problem
(in my case at least) in barebox is a detection problem as I get the
right values from the flash but these value are ONFI and thus are not
right with he actual flash detection code which leads to a wrong
configuration of the NFC. Once I hardcode the NFC settings I manage to
read/write in the 4k NAND Flash from barebox (environment & kernel
are in the flash for the moment).

Eric

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
