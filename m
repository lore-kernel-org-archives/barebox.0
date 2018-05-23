Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fLOrf-0001nL-IY
 for barebox@lists.infradead.org; Wed, 23 May 2018 08:11:21 +0000
Date: Wed, 23 May 2018 10:11:05 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180523081105.lpgqk4ha72azmrwk@pengutronix.de>
References: <20180522153342.24933-1-pmamonov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180522153342.24933-1-pmamonov@gmail.com>
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
Subject: Re: [PATCH v3 00/12]  various fixes for MIPS64
To: Peter Mamonov <pmamonov@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, May 22, 2018 at 06:33:30PM +0300, Peter Mamonov wrote:
> Hi,
> 
> This is a third revision of of the patchset which fixes various issues with 64 
> bit barebox, primarily MIPS related.
> 
> Differences from v2:
>  - add some comments to commits
>  - move MIPS' IOMEM declarations to arch/mips/include/asm/io.h
>  - skip `[PATCH v2 09/12] mips: fix warnings from CPHYSADDR() macro` for now
>  - Kconfig' options are disabled by default
>  - don't credit Andrey for trivial suggestions :)

Thanks for the commit messages, they really give the warm feeling that
I'm doing the right thing applying these patches ;)

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
