Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OyRs7-0003hq-3T
	for barebox@lists.infradead.org; Wed, 22 Sep 2010 16:08:40 +0000
Date: Wed, 22 Sep 2010 18:08:34 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20100922160834.GG23406@pengutronix.de>
References: <1285151785-507-1-git-send-email-plagnioj@jcrosoft.com>
	<20100922123613.GD23406@pengutronix.de>
	<87d3s5by0y.fsf@macbook.be.48ers.dk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87d3s5by0y.fsf@macbook.be.48ers.dk>
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
Subject: Re: [PATCH] commands/crc32: add compare 2 files crc
To: Peter Korsgaard <jacmet@sunsite.dk>
Cc: barebox@lists.infradead.org

On Wed, Sep 22, 2010 at 05:25:49PM +0200, Peter Korsgaard wrote:
> >>>>> "Sascha" == Sascha Hauer <s.hauer@pengutronix.de> writes:
> 
>  Sascha> On Wed, Sep 22, 2010 at 12:36:25PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
>  >> add -F options to compare to file crc
>  >> 
>  >> it's usefull to compare what you flash in a partition
> 
>  Sascha> Why don't you use memcmp?
> 
>  Sascha> memcmp -s uImage -d /dev/nand0.kernel.bb 0 0
> 
> It's sometimes interesting to be able to compare a checksum with a file
> on the host (E.G. output of cksum/md5sum/sha1sum/..)

crc32 can output the crc checksum of a file using the -f option. What
Jean-Christophe added is an option to calculate the checksum of two
files (one given with -f and the other with -F). I just fail to see why
this must be done in a single step instead of using a crc32 followed by
a memcmp.

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
