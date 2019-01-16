Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gjfi5-0006RW-R9
 for barebox@lists.infradead.org; Wed, 16 Jan 2019 07:34:03 +0000
Date: Wed, 16 Jan 2019 08:34:00 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190116073400.lo2ljnezfxri6jki@pengutronix.de>
References: <20190112082456.7441-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190112082456.7441-1-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH 0/6] Support for digesting large files (> 4 GiB)
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Sat, Jan 12, 2019 at 12:24:50AM -0800, Andrey Smirnov wrote:
> Everyone:
> 
> This is the series of patches I made while to fix incorrect behaviour
> while trying to md5sum a 128 GiB file. Most of the patches should be
> pretty straightforward. If "crypto: digest: Split memory vs. file code
> into separate functions" is too controversial it can be dropped.
> 
> Feedback is welcome!
> 
> Thanks,
> Andrey Smirnov
> 
> Andrey Smirnov (6):
>   treewide: Introduce MAP_FAILED and replace ad-hoc constants with it
>   crypto: digest: Remove unused variable
>   crypto: digest: Replace 4096 with PAGE_SIZE
>   crypto: digest: Split memory vs. file code into separate functions
>   commands: digest: Use MAX_LFS_FILESIZE instead of ~0
>   crypto: digest: Change the signature of digest_file_window()

Applied, thanks

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
