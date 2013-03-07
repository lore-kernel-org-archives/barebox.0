Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UDVNi-0008Hb-S5
 for barebox@lists.infradead.org; Thu, 07 Mar 2013 07:36:51 +0000
Date: Thu, 7 Mar 2013 08:36:49 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130307073649.GP1906@pengutronix.de>
References: <20130306092643.GF4401@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130306092643.GF4401@game.jcrosoft.org>
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
Subject: Re: [RFC PATCH 00/20] introduce application support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Wed, Mar 06, 2013 at 10:26:43AM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> HI,
> 
> 	this patch serie introduce the application support to barebox
> 
> 	This will allow to run application at run time by calling barebox
> 	syscalls and as this will be a stable ABI the application will able
> 	the run against any barebox that support it
> 
> 	As the application are not linked to barebox the GPLv2 licence does
> 	not apply.
> 
> 	This patch serie provide a small libc (partialy implemented) which is
> 	under GPLv2 + exception
> 
> As a special exception, if other files instantiate templates or use macros
> or inline functions from this file, or you compile this file and link it
> with other works to produce a work based on this file, this file does not
> by itself cause the resulting work to be covered by the GNU General Public
> License. However the source code for this file must still be made available
> in accordance with section (3) of the GNU General Public License.
> 
> This exception does not invalidate any other reasons why a work based on
> this file might be covered by the GNU General Public License.
> 
> 	This also provide the curses support proted against the libary with some examples

I'm fine with the app support in general, but I don't want to become the
maintainer of a proprietary software helper framework. So, if you want
curses and whatever stuff, create a separate repository for it. The
barebox repository ends at the syscall interface and an example
application for showing how to use it.

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
