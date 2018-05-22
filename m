Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fL1XV-0005S1-KO
 for barebox@lists.infradead.org; Tue, 22 May 2018 07:16:59 +0000
Date: Tue, 22 May 2018 09:16:45 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180522071645.znyrhl5pvn4px4rm@pengutronix.de>
References: <20180522031510.25505-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180522031510.25505-1-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH v4 00/29] ARM MMU code improvements and on-demand PTE
 allocation
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Mon, May 21, 2018 at 08:14:41PM -0700, Andrey Smirnov wrote:
> Everyone:
> 
> With exeception of patch 27/28, all patches in this series are just
> small improvements(IMHO) that I made while working with ARM MMU code.
> 
> Patch 27/28, OTOH, brings a bit of a change to how MMU code allocates
> PTEs, postponing that until the users of DMA API actually request
> that.

Applied, thanks. I skipped 29/29 which hasn't been part of the other
series and doesn't seem to be ready yet.

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
