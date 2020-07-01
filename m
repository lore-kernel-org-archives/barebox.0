Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jqVBs-0004ac-Am
 for barebox@lists.infradead.org; Wed, 01 Jul 2020 05:21:49 +0000
Date: Wed, 1 Jul 2020 07:21:46 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200701052146.GF15485@pengutronix.de>
References: <20200630003838.7745-1-dgienda125@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200630003838.7745-1-dgienda125@gmail.com>
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
Subject: Re: [PATCH v2 0/8] Module and ARM Module updates and fixes
To: David Dgien <dgienda125@gmail.com>
Cc: barebox@lists.infradead.org

On Mon, Jun 29, 2020 at 08:38:30PM -0400, David Dgien wrote:
> This series fixes various bugs and bit-rot issues with the module
> loading code. It also ports a couple of modules features from the Linux
> kernel: arch specific section fixups, and module PLTs for ARM modules,
> to contain veneers for 'bl' instructions.
> 
> Changes since v1:
>   - Added #ifndef MODULE guards to init.h, and removed #undefine
>     directives from module.h
>   - Created a weak function for module_frob_arch_sections default
>     implementation
> 
> David Dgien (8):
>   Makefile: Initialize and export KBUILD variables
>   module: Add init macros to module.h
>   module: Fix adding module to list after layout
>   module: Fix module command registration
>   module: Implement HAVE_MOD_ARCH_SPECIFIC
>   arm: makefile: Fix compiler flag variable
>   arm: elf: Add THM relocation types
>   arm: module: Allow modules outside of bl range

Applied, thanks

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
