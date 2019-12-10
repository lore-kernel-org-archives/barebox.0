Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieiDH-00037Q-Fp
 for barebox@lists.infradead.org; Tue, 10 Dec 2019 16:18:18 +0000
Date: Tue, 10 Dec 2019 17:18:12 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20191210161812.t7mf72pdm53odmdn@pengutronix.de>
References: <CAFfN3gV-kAhDE6=EBJetWT0+T8hgq5tUXAn0qzwK2Q7c8-wsUQ@mail.gmail.com>
 <20191210151042.pkmavrxwlry3525t@pengutronix.de>
 <CAFfN3gURy6N4F=u-uCUU-sYabvjBUfts2XeKNyJXfBxY1frKYg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAFfN3gURy6N4F=u-uCUU-sYabvjBUfts2XeKNyJXfBxY1frKYg@mail.gmail.com>
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

On Tue, Dec 10, 2019 at 04:43:54PM +0100, Hubert Feurstein wrote:
> Hi Sascha,
> 
> Am Di., 10. Dez. 2019 um 16:10 Uhr schrieb Sascha Hauer
> <s.hauer@pengutronix.de>:
> [...]
> > Well the commit message says it:
> > | commit b6fef20c1215c6ef0004f6af4a9c4b77af51dc43
> > | Author: Sascha Hauer <s.hauer@pengutronix.de>
> > | Date:   Thu Mar 29 13:49:45 2018 +0200
> > |
> > |     block: Adjust cache sizes
> > |
> > |     Use four times more cache entries and divide the memory for each entry
> > |     by four. This lowers the linear read throughput somewhat but increases
> > |     the access speed for filesystems.
> Yes, I know. I've read the commit message. But this patch even costs me ~200ms
> in boottime (loading kernel and dts from ext4 root partition).
> 
> [...]
> > We could adjust RW_BUF_SIZE (used by copy_file as buffer size) to a full
> > chunk size (16KiB). Does this give you back some lost performance?
> No, changing RW_BUF_SIZE did not help.

And I also see why :-/

block_op_write() works around block sizes (512bytes), not around chunk
sizes. This means we always read before we write. This could probably be
optimized somehow, but this would only speed up the write case you
described in your initial mail. It seems what you are more interested in
is the read performance.

We could make the number of chunks and the chunk size configurable
during runtime. This is less than ideal, but at least we could get a
better performance with manageable effort.

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
