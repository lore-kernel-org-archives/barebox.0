Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ip2.televic.com ([81.82.194.222])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VF0Vf-0000Nl-Hg
 for barebox@lists.infradead.org; Thu, 29 Aug 2013 11:35:32 +0000
From: Vanhauwaert Wouter <W.Vanhauwaert@TELEVIC.com>
Date: Thu, 29 Aug 2013 13:35:06 +0200
Message-ID: <E78BBE677EB9144B8F0A0A29674CD5338ED41DC9E8@SRV-VS06.TELEVIC.COM>
References: <E78BBE677EB9144B8F0A0A29674CD5338ED41DC8EF@SRV-VS06.TELEVIC.COM>
 <3015446.hmMKF5IOD4@yiqingliang-pc>
In-Reply-To: <3015446.hmMKF5IOD4@yiqingliang-pc>
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
To: Yi Qingliang <niqingliang2003@gmail.com>, "barebox@lists.infradead.org" <barebox@lists.infradead.org>

> -----Original Message-----
> From: Yi Qingliang [mailto:niqingliang2003@gmail.com]
> Sent: donderdag 29 augustus 2013 12:44
> To: barebox@lists.infradead.org
> Cc: Vanhauwaert Wouter
> Subject: Re: bareboxenv on userspace - wrong crc on env
> 
> On Thursday, August 29, 2013 11:24:41 AM Vanhauwaert Wouter wrote:
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
> maybe the ecc mode for nand flash is different in barebox and in kernel, you
> should check the config for barebox and kernel.
> 

It's SPI NOR flash...


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
