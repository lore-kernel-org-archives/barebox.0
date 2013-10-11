Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ip2.televic.com ([81.82.194.222])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VUdOU-0001cd-I4
 for barebox@lists.infradead.org; Fri, 11 Oct 2013 14:08:43 +0000
From: Vanhauwaert Wouter <W.Vanhauwaert@TELEVIC.com>
Date: Fri, 11 Oct 2013 16:08:15 +0200
Message-ID: <E78BBE677EB9144B8F0A0A29674CD5338F2D4436DC@SRV-VS06.TELEVIC.COM>
References: <E78BBE677EB9144B8F0A0A29674CD5338ED41DC8EF@SRV-VS06.TELEVIC.COM>
 <20130829184422.GB30088@pengutronix.de>
In-Reply-To: <20130829184422.GB30088@pengutronix.de>
Content-Language: en-US
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: RE: bareboxenv on userspace - wrong crc on env
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

> -----Original Message-----
> From: Sascha Hauer [mailto:s.hauer@pengutronix.de]
> Sent: donderdag 29 augustus 2013 20:44
> To: Vanhauwaert Wouter
> Cc: barebox@lists.infradead.org
> Subject: Re: bareboxenv on userspace - wrong crc on env
> 
> On Thu, Aug 29, 2013 at 11:24:41AM +0200, Vanhauwaert Wouter wrote:
> > Hello all,
> >
> > I'm having issues accessing my barebox environment from within linux....
> >
> > My barebox and environment are located on a SPI NOR flash.
> > This boots ok, and barebox is able to save its environment to it.
> >
> > When I want to load it in userspace through:
> >
> > $ bareboxenv -l /mnt /dev/mtd1
> > Or
> > $ dd if=/dev/mtd1 /tmp/barebox
> > Or
> > $ dd if=/dev/mdtblock1 /tmp/barebox
> >
> > Result is:
> > Wrong crc on env
> >
> > However it's working fine in barebox itself
> >
> > What can be wron?
> 
> The only idea I have is that /dev/mtd1 might not be the place where barebox
> stores it's environment, maybe because of different probe order in the kernel or
> different partition layout. Could you send a hexdump of the first 256 bytes or so
> of /dev/mtd1?
> 
> Sascha

I had general issues reading and writing spi nor flash in userspace (without being aware of it). Now it works, I can read / write from nor flash from within linux.
I can copy the barebox bootloader and uImage to it through dd and this works fine. I can also load my barebox environment, change things and write it back and read it back out.
However, when I restart my board afterwards, I get an invalid crc on superblock.

(Sorry, some kind of double post with my new topic today)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
