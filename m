Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fnetu-000145-IT
 for barebox@lists.infradead.org; Thu, 09 Aug 2018 06:58:28 +0000
Date: Thu, 9 Aug 2018 08:58:12 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180809065812.lunfhbb64ui27lcb@pengutronix.de>
References: <20180808162250.avlghvty7eh4ndhi@localhost.localdomain>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180808162250.avlghvty7eh4ndhi@localhost.localdomain>
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
Subject: Re: scripts/dtc/fdtget: No such file or directory
To: Peter Mamonov <pmamonov@gmail.com>
Cc: barebox@lists.infradead.org, pvizeli@syshack.ch

Hi Peter,

On Wed, Aug 08, 2018 at 07:22:51PM +0300, Peter Mamonov wrote:
> Hi, 
> 
> After "8a8982541 scripts/dtc: Update to upstream version 1.4.6" 
> scripts/dtc/Makefile lacks rule for scripts/dtc/fdtget, which causes 
> scripts/gen-dtb-s to complain:
> 
> 	$ make
> 	...
> 	scripts/gen-dtb-s: line 24: scripts/dtc/fdtget: No such file or directory
> 	scripts/gen-dtb-s: line 27: scripts/dtc/fdtget: No such file or directory
> 	scripts/gen-dtb-s: line 34: scripts/dtc/fdtget: No such file or directory
> 	scripts/gen-dtb-s: line 37: scripts/dtc/fdtget: No such file or directory
> 	scripts/gen-dtb-s: line 24: scripts/dtc/fdtget: No such file or directory
> 	scripts/gen-dtb-s: line 27: scripts/dtc/fdtget: No such file or directory
> 	scripts/gen-dtb-s: line 34: scripts/dtc/fdtget: No such file or directory
> 	scripts/gen-dtb-s: line 37: scripts/dtc/fdtget: No such file or directory
> 
> Yet a build finishes ok.

In 8a8982541 building of fdget is dropped. I didn't notice because I
have fdtget still in my build dir from previous builds. I just sent a
patch for this, you're on Cc:.

The build was still successful because only the output of fdtget was
used in a pipe. Apparently the error handling leaves room for
improvements.

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
