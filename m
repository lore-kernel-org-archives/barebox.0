Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1adBz8-0002QI-AN
 for barebox@lists.infradead.org; Tue, 08 Mar 2016 07:23:15 +0000
Date: Tue, 8 Mar 2016 08:22:46 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160308072246.GA30994@pengutronix.de>
References: <56DDAE3A.3030808@ge.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <56DDAE3A.3030808@ge.com>
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
Subject: Re: arm: Question on linker script and start/end variables
To: Renaud Barbier <renaud.barbier@ge.com>
Cc: barebox@lists.infradead.org

On Mon, Mar 07, 2016 at 04:37:14PM +0000, Renaud Barbier wrote:
> I have a ARM-based board for which we have a running barebox.
> 
> In the low level code, when running from flash, I would like to get the
> start and end address of a section. For instance, &__barebox_cmd_start
> and &__barebox_cmd_end.
> 
> For both I am getting 0 unless I am running from memory.
> 
> Even assigning these addresses to variables always returns 0.
> 
> This is not an issue on PPC platforms.
> 
> All my tests and research to get the correct address on ARM has led to
> no positive results.
> 
> Has anybody an explanation why these addresses cannot be obtained on ARM
> platforms?

It doesn't work for two reasons. First of all the program is not running
at the address it is linked at. barebox on ARM is linked as position
independent executable (-pie) to address 0x0. Usually when called from the
SoC ROM the binary will run at another address though. This means that
pointers to global variables that are stored in the binary will point to
0x0 + offset in the binary. To use the variables we have to add the
offset between 0x0 and the address we are really running to the pointer.
The second reason comes with linker generated variables like
__bss_start. These are set to 0x0 in the binary. They need to be fixed
up during runtime using the dynsym table, see relocate_to_current_adr().
I don't know a way to access these in C. In barebox we have the ld_var
macro which uses assembly to access the linker generated variables. Note
that you can't access arbitrary variables, to access __barebox_cmd_start
you have to add the variable to arch/arm/lib/runtime-offset.S.

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
