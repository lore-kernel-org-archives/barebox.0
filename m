Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 7.mo173.mail-out.ovh.net ([46.105.44.159])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dQzrZ-0005uF-1H
 for barebox@lists.infradead.org; Fri, 30 Jun 2017 17:37:51 +0000
Received: from player778.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo173.mail-out.ovh.net (Postfix) with ESMTP id 0D9CC5EF83
 for <barebox@lists.infradead.org>; Fri, 30 Jun 2017 19:37:23 +0200 (CEST)
Mime-Version: 1.0 (Mac OS X Mail 10.3 \(3273\))
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
In-Reply-To: <54f52983-da4d-35a6-e0ed-edfe286f61c5@mev.co.uk>
Date: Sat, 1 Jul 2017 01:37:17 +0800
Message-Id: <B5A80E7D-BD0B-4E5F-A4DC-16CB9769FB3F@jcrosoft.com>
References: <54f52983-da4d-35a6-e0ed-edfe286f61c5@mev.co.uk>
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
Subject: Re: [BUG v2017.07.0] readlink -f command broken?
To: Ian Abbott <abbotti@mev.co.uk>
Cc: Barebox List <barebox@lists.infradead.org>

HI,

	I wrote the symlink support in barebox

	But I Worte a partial support only end path file not dirs

	As this is a boot loader not an OS

Best Regards,
J.
> On 30 Jun 2017, at 9:28 PM, Ian Abbott <abbotti@mev.co.uk> wrote:
> 
> Hi folks,
> 
> I know there were changes to do with links to directories in v2017.07.0, but this looks like a bug in readlink with the -f option:
> 
> barebox@fred:/ ls -l /mnt/root
> lrwxrwxrwx              7 bin -> usr/bin
> drwxr-xr-x            304 boot
> drwxr-xr-x            160 dev
> drwxr-xr-x           1920 etc
> drwxrwsr-x            160 home
> lrwxrwxrwx              7 lib -> usr/lib
> drwxr-xr-x            160 mnt
> dr-xr-xr-x            160 proc
> drwx------            160 root
> drwxr-xr-x            160 run
> lrwxrwxrwx              8 sbin -> usr/sbin
> drwxr-xr-x            224 srv
> drwxr-xr-x            160 sys
> drwxrwxrwt            160 tmp
> drwxr-xr-x            480 usr
> drwxr-xr-x            544 var
> barebox@fred:/ readlink -f /mnt/root/lib libdir
> barebox@fred:/ echo $libdir
> /usr
> 
> (I expected $libdir to contain "/mnt/root/usr/lib" here, as it did in barebox v2017.06.1.)
> 
> (Let's try it without the -f option....)
> 
> barebox@fred:/ readlink /mnt/root/lib libdir2
> barebox@fred:/ echo $libdir2
> usr/lib
> 
> (That is the same as barebox v2017.06.1.)
> 
> -- 
> -=( Ian Abbott @ MEV Ltd.    E-mail: <abbotti@mev.co.uk> )=-
> -=(                          Web: http://www.mev.co.uk/  )=-
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
