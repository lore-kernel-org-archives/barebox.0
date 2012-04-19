Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 7.mo3.mail-out.ovh.net ([46.105.57.200]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SKmUw-0002qu-PZ
 for barebox@lists.infradead.org; Thu, 19 Apr 2012 08:13:54 +0000
Received: from mail622.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 0D090FF89CE
 for <barebox@lists.infradead.org>; Thu, 19 Apr 2012 10:15:12 +0200 (CEST)
Date: Thu, 19 Apr 2012 09:55:00 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120419075500.GB20601@game.jcrosoft.org>
References: <037201cd1df7$94b2b600$be182200$@com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <037201cd1df7$94b2b600$be182200$@com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: New user: need a hand booting the kernel from NAND
To: George Pontis <GPontis@z9.com>
Cc: barebox@lists.infradead.org

On 23:42 Wed 18 Apr     , George Pontis wrote:
>    Machine is a custom at91sam9g45 board with NOR and NAND flash. The
>    bootstrap loader and barebox, and barebox environment are in the NOR
>    flash. All seems to be working well there. The NAND is partitioned into 2
>    chunks: 2560K(kernel),-(root)
> 
>     
> 
>    I used ubimkvol to create a volume on root and the nfs command to put a
>    root filesystem on it. Seems to work fine if I get the kernel via NFS.
> 
>     
> 
>    I have a good working kernel in uImage format, and used "nfs
>     /var/share/uImage  /dev/nand0.kernel.bb" in an attempt to write it to the
>    2560K partition. The nfs copy seemed to work fine. However, it will not
>    accept the image. I get messages about an unknown format, suggesting to
>    try -f. Was it the wrong procedure that I used to copy the uImage ?
> 
>     
> 
>    Thanks for any help or pointers.
I recommand you to use upate command to bo so

update -t kernel -d nand -m nfs -f /var/share/uImage

I recommand you also to drop the uImage support and boot the zImage directly

you will boot more fast

and I also recommand you to boot from nor if you can

so you don't need the bootstrap

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
