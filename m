Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X2DJz-0001JB-RJ
 for barebox@lists.infradead.org; Wed, 02 Jul 2014 05:43:08 +0000
Date: Wed, 2 Jul 2014 07:42:44 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140702054244.GS14257@pengutronix.de>
References: <20140701211447.9e543b8e172d37c32d630091@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20140701211447.9e543b8e172d37c32d630091@gmail.com>
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
Subject: Re: md5sum arguments
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, Jul 01, 2014 at 09:14:47PM +0400, Antony Pavlov wrote:
> Hi All!
> 
> Current 'md5sum' command gets FILE|AREA argument, e.g.
> 
> 
>   barebox:/ help md5sum 
> 
>   md5sum - calculate MD5 checksum
> 
>   Usage: md5sum FILE|AREA...
> 
>   Calculate a MD5 digest over a FILE or a memory area.
> 
> The *nix 'md5sum' gets [FILE]... argument.
> This behavour can be misleading. E.g. today I have tryed this command sequence on
> my qemu-malta machine:
> 
>   barebox:/ memcpy -s /dev/zero -d 1M 0 0 0x100000
>   barebox:/ md5sum 1M
> 
> md5sum just hangs!

This is beacuse size is initialized with ~0 and thus the command will
create a md5sum over the whole memory space.

This works:

md5sum 1M+0x100000

> But this command sequence works fine:
> 
>   barebox:/ memcpy -s /dev/zero -d zeros 0 0 0x100000
>   barebox:/ md5sum zeros                             
>   b6d81b360a5672d80c27430f39153e2c  zeros 0x00000000 ... 0xffffffffffffffff
> 
> 
> Do we really need this?

Personally I don't need this, but since we have this feature and it's
not really expensive, why should we remove it?

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
