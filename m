Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp3-g21.free.fr ([2a01:e0c:1:1599::12])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SEK9w-0004he-P4
 for barebox@lists.infradead.org; Sun, 01 Apr 2012 12:45:30 +0000
Date: Sun, 1 Apr 2012 14:45:18 +0200
From: Eric =?ISO-8859-1?B?QuluYXJk?= <eric@eukrea.com>
Message-ID: <20120401144518.73c1cf53@eb-e6520>
In-Reply-To: <20120401104934.GD22835@sapphire.tkos.co.il>
References: <CAD9ZU8AJc+LxYRa_HFQ_pxt+G3ijZmyKcQ0MqDKvVHH5FrJ1Qw@mail.gmail.com>
 <20120401104934.GD22835@sapphire.tkos.co.il>
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

Hi Baruch and Gabriel,

Le Sun, 1 Apr 2012 13:49:35 +0300,
Baruch Siach <baruch@tkos.co.il> a =E9crit :
> On Sun, Apr 01, 2012 at 11:58:53AM +0200, Gabriel Tisan wrote:
> > Has anybody started to implement support for flashes with 4k page size
> > on nand_imx driver ?
> =

> 4k flashes should be supported in nand_imx since version v2011.05. See co=
mmit =

> 4b4958dbb73e6fb553aaf91d539ff3e22bfe9e40 (mtd/nand_imx: add support for p=
age =

> size of 4k). I've tested it on i.MX25.
> =

newer flashs are using ONFI and thus some 4k flashes are not properly
detected actually in barebox which may be the problem that Gabriel
actually have.
http://en.wikipedia.org/wiki/Open_NAND_Flash_Interface_Working_Group
http://onfi.org/specifications/

I have the same requirement on an i.MX53 board (for the moment I
hard coded the right values to bypass the flash detection which
returned wrong results, the 4k falsh being detected as a 2k one) and
plan to work on this during april but hard to say when so that may be
beginiong of may.

Eric

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
