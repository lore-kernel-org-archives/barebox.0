Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gmagC-0006LK-VC
 for barebox@lists.infradead.org; Thu, 24 Jan 2019 08:48:10 +0000
Date: Thu, 24 Jan 2019 09:48:06 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190124084806.2c2mymykqmrwg5xs@pengutronix.de>
References: <20190123011338.32517-1-andrew.smirnov@gmail.com>
 <20190123011338.32517-7-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190123011338.32517-7-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH 6/7] fs: Add support for files larger than MAX_LFS_FILESIZE
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, Jan 22, 2019 at 05:13:37PM -0800, Andrey Smirnov wrote:
> On 64-bit platforms /dev/mem exceeds the size supported by loff_t and
> needs special treatment within the rest of FS API. Specifically
> lseek() needs to be modified to make sure it does the right thing.
> 
> Prievious attempt at fixing this issue by using IS_ERR_VALUE()
> 
> e10efc5080 ("fs: fix memory access via /dev/mem for MIPS64")
> 
> doesn't really work 100% on 64-bit platforms, becuase it still leaves
> out a number of perfectly valid offsets (e.g. "md 0xffffffffffffff00"
> doesn't work) . Moreso it breaks lseek() on 32-bit platforms, since
> IS_ERR_VALUE will retrurn true for any offset that is >= (unsigned
> long) -MAX_ERRNO.
> 
> In order to fix this issue on both 32 and 64 bit platforms, introduce
> DEVFS_UNBOUNDED flag that cdevs can use to denote that they span all
> 64-bit address space and effectively have not limits. To propagate
> that info to FS layer, add "unbounded" boolean to FILE. As a last step
> modify lseek() to be aware of that field and do the right checks in
> that case.
> 
> Note, that since loff_t has no problem covering all of address space
> on 32-bit platforms, DEVFS_UNBOUNDED is defined to expand into 0 and
> not be settable there.
> 
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> @@ -422,20 +422,41 @@ loff_t lseek(int fildes, loff_t offset, int whence)

lseek takes a signed loff_t argument. We store the file size in an also
signed variable. An lseek to the end of a file covering the whole 64bit
address space (0xffffffffffffffff) will always return an error as
(loff_t)-1 is both the position and the error code.

I think instead of casting loff_t to an unsigned type whenever we find
it convenient and then still not having enough bits for storing the
filesize of 0x10000000000000000 we should rather face the fact that our
maximum filesize is only half of the 64bit address space.

To put it differently we should think about creating a second /dev/mem
for the upper half of the 64bit address space.

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
