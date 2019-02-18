Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gveE1-0005OW-E8
 for barebox@lists.infradead.org; Mon, 18 Feb 2019 08:24:31 +0000
Date: Mon, 18 Feb 2019 09:24:25 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190218082425.vaok5r4k3ob2vbdj@pengutronix.de>
References: <20190212064022.26154-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190212064022.26154-1-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH 0/8] NVME support
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Mon, Feb 11, 2019 at 10:40:14PM -0800, Andrey Smirnov wrote:
> Everyone:
> 
> This series contains all of the changes I made in order to add support
> for NVME storage in Barebox. Majority of the code was adapted directly
> from Linux kernel and I tried to keep it as close to the original as
> possible. Only a very basic featureset was implemented:
> 
>     - For obvious reason all of the request both to admin and I/O
>       queue are fully blocking/syncronous, so none of the I/O
>       operations are done in parallel
> 
>     - PRP list only DMA (no SGL lists support)
> 
>     - No support for shared namespaces
> 
>     - No support for transports other than PCIe. All of the pluming to
>       add support for it should be there, however.
> 
>     - Host memory buffer support is not implemented
> 
> Feedback is welcome!

Looks good, so applied, thanks

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
