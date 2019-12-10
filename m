Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieh9y-0000a0-D5
 for barebox@lists.infradead.org; Tue, 10 Dec 2019 15:10:48 +0000
Date: Tue, 10 Dec 2019 16:10:42 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20191210151042.pkmavrxwlry3525t@pengutronix.de>
References: <CAFfN3gV-kAhDE6=EBJetWT0+T8hgq5tUXAn0qzwK2Q7c8-wsUQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAFfN3gV-kAhDE6=EBJetWT0+T8hgq5tUXAn0qzwK2Q7c8-wsUQ@mail.gmail.com>
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
Subject: Re: [BUG] imx6qdl: degraded eMMC write performance
To: Hubert Feurstein <h.feurstein@gmail.com>
Cc: barebox@lists.infradead.org

Hi Hubert,

On Tue, Dec 10, 2019 at 03:44:52PM +0100, Hubert Feurstein wrote:
> Hi,
> 
> I've updated barebox for our custom platform from v2015.06.0 to
> v2019.12.0. With the new version I have noticed a much worse write
> performance onto the onboard eMMC.
> 
> With v2015.06.0 the indicated progress of the copy command is very
> smooth. Calling "cp -v /dev/zero /dev/mmc3.root" takes about 80
> seconds for 256MB. But with v2019.12.0 the progress is very bumpy and
> the copy takes about 280 seconds.
> 
> I've tracked this down to this commit which destroys the performance:
> "block: Adjust cache sizes" (b6fef20c1215c6ef0004f6af4a9c4b77af51dc43)

Well the commit message says it:

| commit b6fef20c1215c6ef0004f6af4a9c4b77af51dc43
| Author: Sascha Hauer <s.hauer@pengutronix.de>
| Date:   Thu Mar 29 13:49:45 2018 +0200
| 
|     block: Adjust cache sizes
|     
|     Use four times more cache entries and divide the memory for each entry
|     by four. This lowers the linear read throughput somewhat but increases
|     the access speed for filesystems.

The barebox block layer is quite simple. It always handles data in chunks of
a hardcoded size. For a high throughput these should be large as this increases
the buffer size we can write in the MMC controller in one go. Increasing the
size is bad for filesystems though, as for each small block a fs wants
to read at minimum a whole chunk must be read, or for write,
read-modified-written.

I remember I once tried to make the caching more intelligent. It seems I didn't
even get far enough to store a branch in my working copy :(

I just saw that in block_op_write() we must first read any partially
written chunk, then modify it and write it back. Only full chunks can be
written without reading them first. This means we should gain
performance when we enter block_op_write() with only full chunks. We
could adjust RW_BUF_SIZE (used by copy_file as buffer size) to a full
chunk size (16KiB). Does this give you back some lost performance?

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
