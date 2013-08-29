Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pb0-x22f.google.com ([2607:f8b0:400e:c01::22f])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VEzoF-0007cK-8i
 for barebox@lists.infradead.org; Thu, 29 Aug 2013 10:50:40 +0000
Received: by mail-pb0-f47.google.com with SMTP id rr4so286261pbb.20
 for <barebox@lists.infradead.org>; Thu, 29 Aug 2013 03:50:15 -0700 (PDT)
From: Yi Qingliang <niqingliang2003@gmail.com>
Date: Thu, 29 Aug 2013 18:44:15 +0800
Message-ID: <3015446.hmMKF5IOD4@yiqingliang-pc>
In-Reply-To: <E78BBE677EB9144B8F0A0A29674CD5338ED41DC8EF@SRV-VS06.TELEVIC.COM>
References: <E78BBE677EB9144B8F0A0A29674CD5338ED41DC8EF@SRV-VS06.TELEVIC.COM>
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
Subject: Re: bareboxenv on userspace - wrong crc on env
To: barebox@lists.infradead.org
Cc: Vanhauwaert Wouter <W.Vanhauwaert@televic.com>

On Thursday, August 29, 2013 11:24:41 AM Vanhauwaert Wouter wrote:
> Hello all,
> 
> I'm having issues accessing my barebox environment from within linux....
> 
> My barebox and environment are located on a SPI NOR flash.
> This boots ok, and barebox is able to save its environment to it.
> 
> When I want to load it in userspace through:
> 
> $ bareboxenv -l /mnt /dev/mtd1
> Or
> $ dd if=/dev/mtd1 /tmp/barebox
> Or
> $ dd if=/dev/mdtblock1 /tmp/barebox
> 
> Result is:
> Wrong crc on env
> 
> However it's working fine in barebox itself
> 
> What can be wron?

maybe the ecc mode for nand flash is different in barebox and in kernel, you 
should check the config for barebox and kernel.

> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

-- 
Nanjing Jilong
Yi Qingliang
niqingliang2003@gmail.com

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
