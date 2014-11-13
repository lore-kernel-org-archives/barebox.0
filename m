Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XoqtQ-0000NN-6u
 for barebox@lists.infradead.org; Thu, 13 Nov 2014 09:40:45 +0000
Date: Thu, 13 Nov 2014 10:40:21 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20141113094021.GQ30369@pengutronix.de>
References: <20141113085159.GA8321@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20141113085159.GA8321@gmail.com>
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
Subject: Re: Barebox with DT and kernel without DT support
To: Wjatscheslaw Stoljarski <wjatscheslaw.stoljarski@kiwigrid.com>
Cc: barebox@lists.infradead.org

On Thu, Nov 13, 2014 at 09:52:03AM +0100, Wjatscheslaw Stoljarski wrote:
> Hi,
> 
> how to provide commandline to kernel without DT support from barebox with DT?

Call oftree -f before calling the kernel. This will free the internal
devicetree and barebox will pass the ATAGS instead.

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
