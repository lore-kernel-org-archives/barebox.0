Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fJYHJ-00025y-1q
 for barebox@lists.infradead.org; Fri, 18 May 2018 05:50:10 +0000
Date: Fri, 18 May 2018 07:49:57 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180518054957.4f6areg6gg6c7prv@pengutronix.de>
References: <20180517135858.16202-1-pmamonov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180517135858.16202-1-pmamonov@gmail.com>
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
Subject: Re: [RFC PATCH 00/15] MIPS64 support
To: Peter Mamonov <pmamonov@gmail.com>
Cc: barebox@lists.infradead.org

Hi Peter,

On Thu, May 17, 2018 at 04:58:43PM +0300, Peter Mamonov wrote:
> Hi,
> 
> Recently I've resolved a couple of issues that prevented 64bit Barebox from 
> running on MIPS64 CPUs. By the way, 32bit Barebox runs on MIPS64 without any 
> issues, since MIPS64 supports 32 bit addressing mode. Here is a relevant patch 
> series.  This is mostly for discussion, yet some patches can be applied as is.  
> Please, give your comments.

Please sort the patches that can be applied to the beginning of this
series so that we can get this done early.

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
