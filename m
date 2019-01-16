Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gjfki-00089y-Ul
 for barebox@lists.infradead.org; Wed, 16 Jan 2019 07:36:46 +0000
Date: Wed, 16 Jan 2019 08:36:43 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190116073643.ml7kuq6w6f6grmcx@pengutronix.de>
References: <20190114061709.13948-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190114061709.13948-1-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH v3 00/16] PCI improvements
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Sun, Jan 13, 2019 at 10:16:53PM -0800, Andrey Smirnov wrote:
> Everyone:
> 
> This series is a number of various small improvementes (or at least
> they seemed so to me) as well as a couple of small fixes for 64-bit
> builds. With exception of "PCI: Switch to using %pa to print memory
> addresses" and "Convert ->res_start() to return resource_size_t" none
> of the patches are fixing problems so all of them are optional and can
> be dropped from the series.
> 
> Hopefully all of the patches are self-explanatory.
> 
> Feedback is welcome!

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
