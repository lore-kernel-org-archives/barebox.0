Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1goP4d-0004Wz-4O
 for barebox@lists.infradead.org; Tue, 29 Jan 2019 08:48:53 +0000
Date: Tue, 29 Jan 2019 09:48:47 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190129084847.spkfbeksb7xne46g@pengutronix.de>
References: <20190129065549.29161-1-andrew.smirnov@gmail.com>
 <20190129065549.29161-19-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190129065549.29161-19-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH v2 18/19] drivers: mem: Create file to access second half
 of 64-bit memory
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Mon, Jan 28, 2019 at 10:55:48PM -0800, Andrey Smirnov wrote:
> In order to allow access to second half of address space on 64-bit
> machines, add code that creates /dev/highmem dedicated for that.

Very nice series, I applied it right away with the exception of this
patch. I don't like naming it "highmem" because normally this describes
a hardware feature, namely a technique for reaching memory that is
outside the CPUs address space. What we have here is a technique for
reaching memory that is outside the range of a poorly chosen variable
type ;)

That said my alternative suggestions are not very striking and range
from /dev/mem1 to /dev/uppermem or /dev/mem-upper. Any other ideas?

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
