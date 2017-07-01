Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dRQHo-0007Dy-P7
 for barebox@lists.infradead.org; Sat, 01 Jul 2017 21:50:42 +0000
Date: Sat, 1 Jul 2017 23:50:15 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170701215015.2rlkcde2mdsgr3yl@pengutronix.de>
References: <54f52983-da4d-35a6-e0ed-edfe286f61c5@mev.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <54f52983-da4d-35a6-e0ed-edfe286f61c5@mev.co.uk>
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

Hi Ian,

On Fri, Jun 30, 2017 at 02:28:49PM +0100, Ian Abbott wrote:
> Hi folks,
> 
> I know there were changes to do with links to directories in v2017.07.0, but
> this looks like a bug in readlink with the -f option:
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
> (I expected $libdir to contain "/mnt/root/usr/lib" here, as it did in
> barebox v2017.06.1.)
> 
> (Let's try it without the -f option....)
> 
> barebox@fred:/ readlink /mnt/root/lib libdir2
> barebox@fred:/ echo $libdir2
> usr/lib
> 
> (That is the same as barebox v2017.06.1.)

I can confirm this. It's the same here. So far I was not able to find a
solution. I think readlink for directories must have been broken before
the directory link support though, since links to directories were not
supported. It may have worked in this simple case, but if multiple
levels of links were involved I don't think it could have been working
before.

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
