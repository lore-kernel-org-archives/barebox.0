Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Z9XCs-00085p-PD
 for barebox@lists.infradead.org; Mon, 29 Jun 2015 11:26:35 +0000
Date: Mon, 29 Jun 2015 13:26:10 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150629112610.GT18611@pengutronix.de>
References: <20150629135501.344827695c942d496959aa1e@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20150629135501.344827695c942d496959aa1e@gmail.com>
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
Subject: Re: Fw: next: sandbox: arch/sandbox/os/common.c:31:18: fatal error:
 init.h: No such file or directory
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

Hi Antony,

On Mon, Jun 29, 2015 at 01:55:01PM +0300, Antony Pavlov wrote:
> Sorry!
> 
>                   ^
> compilation terminated.
> 
> git-bisect reports that
> 
> 0c142e405712586ed8074ce0166c515e158cc986 is the first bad commit
> commit 0c142e405712586ed8074ce0166c515e158cc986
> Author: Juergen Borleis <jbe@pengutronix.de>
> Date:   Thu Jun 25 09:34:34 2015 +0200
> 
>     System restart: add a scope value to the system restart feature

There are several other build failures introduced with this commit. I
already removed it.

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
