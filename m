Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VOvBk-0004lS-0B
 for barebox@lists.infradead.org; Wed, 25 Sep 2013 19:55:58 +0000
Date: Wed, 25 Sep 2013 21:55:31 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130925195531.GI30088@pengutronix.de>
References: <CAO-21LPRAQ_xwi4Pup4uaPKv-ZSxDxt_7OsCjAmPfkeX6p8+_g@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAO-21LPRAQ_xwi4Pup4uaPKv-ZSxDxt_7OsCjAmPfkeX6p8+_g@mail.gmail.com>
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
Subject: Re: how to copy barebox to flash?
To: "Allen Kennedy Jr." <allen@kennedystuff.com>
Cc: barebox@lists.infradead.org

Hi Allen,

On Wed, Sep 25, 2013 at 11:13:47AM -0500, Allen Kennedy Jr. wrote:
> All,
>   How do I copy barebox to flash?
> I have a flash device setup:
>      `---- imx_nand
>           `---- nand0
>                `---- 0x00000000-0x0fffffff: /dev/nand0
>                `---- 0x00000000-0x0001ffff: /dev/bootstrapper
>                `---- 0x00020000-0x0005ffff: /dev/barebox
>                `---- 0x00060000-0x0009ffff: /dev/env_raw
>                `---- 0x00100000-0x005fffff: /dev/kernel
> 
> I used JTAG to load barebox into memory at 0xa0000000
> 
> I just can't figure out how to copy it to flash... There is no DD command...
> I tried this:
> cp 0xa0000000 /dev/barebox 0x4000
> got :
> cp: target `0x4000' is not a directory

What you're looking for is the memcpy command. It has options to copy
memory to/from files. You need something like:

memcpy -d /dev/barebox 0xa0000000 0 512k

replace 512k with whatever filesize is appropriate.

See 'help memcpy' or http://wiki.barebox.org/doku.php?id=commands:memcpy
for more information.

> 
> Seems barebox changed what 'cp' is from the old u-boot way.
> and the nand command only does bad block handling...
> 
> barebox-update seems to be a candidate, but the docs don't make sense
> on how to use.

Yes, that's the correct command, but it needs board support to be
implemented. With the correct board support the update would go down to:

barebox_update /mnt/tftp/barebox.bin

(It needs a file though, you would have to generate this with memcpy if
you want to use it together with a raw memory image.)

> Also I was thinking something like md > /dev/nand, but the output of
> MD is user readable.

Unfortunately the barebox shell is not capable of doing output redirection.

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
