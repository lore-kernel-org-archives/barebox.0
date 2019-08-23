Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i149g-0006ZU-Ff
 for barebox@lists.infradead.org; Fri, 23 Aug 2019 07:38:43 +0000
Date: Fri, 23 Aug 2019 09:38:39 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190823073839.y2ghi7ptfg63lzev@pengutronix.de>
References: <20190822065102.22024-1-ahmad@a3f.at>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190822065102.22024-1-ahmad@a3f.at>
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
Subject: Re: [PATCH RFC 0/3] fs: tftp: don't use cached dentries
To: Ahmad Fatoum <ahmad@a3f.at>
Cc: barebox@lists.infradead.org

On Thu, Aug 22, 2019 at 08:50:59AM +0200, Ahmad Fatoum wrote:
> I often mistype the name of files I place into the TFTP server's root
> directory. When barebox does a TFTP lookup for the correct file name and
> doesn't find it, it refuses to look it up again. I'd argue the better
> user experience for TFTP in particular would be to not use the dcache
> altogether. Not sure if other networked file systems should follow suit,
> as staleness means faster acceses, but lets do this for TFTP now.
> 
> The file is still placed and invalidated from the cache though, but
> compared to the network access before, it's negligible overhead.
> 
> Ahmad Fatoum (3):
>   fs: tftp: remove duplicate header
>   fs: provide no_revalidate_d_ops for network file systems
>   fs: tftp: don't maintain tftp dentries in dcache

Applied, thanks. I stumbled upon this behaviour myself aswell.

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
