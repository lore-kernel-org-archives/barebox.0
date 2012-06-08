Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Sd16J-0001Qr-7N
 for barebox@lists.infradead.org; Fri, 08 Jun 2012 15:27:47 +0000
Date: Fri, 8 Jun 2012 17:27:45 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120608152745.GZ30400@pengutronix.de>
References: <003601cd4580$b388cd70$1a9a6850$@fqingenieria.es>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <003601cd4580$b388cd70$1a9a6850$@fqingenieria.es>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: make fails with barebox
To: FQ | Joan Carles Abelaira <joancarles@fqingenieria.es>
Cc: barebox@lists.infradead.org

Hi,

On Fri, Jun 08, 2012 at 04:12:12PM +0200, FQ | Joan Carles Abelaira wrote:
> Hello,
> 
> I was working with previous release of barebox, and now I happily got the 2012.06 release.
> I managed to add my board to the menuconfig, apparently ok, then after a 'make' I get this complain:
> 
> arch/arm/cpu/built-in.o: In function `reset':
> /home/develop/SID1/dev/dev_sources/barebox-2012.06.0/arch/arm/include/asm/system.h:70: undefined reference to `board_init_lowlevel'
> 
> Any clues about what's missing to not to suffer all weekend because of this?

Appearantly you do not have a board_init_lowlevel function. This is ok,
but then you have to disable CONFIG_MACH_DO_LOWLEVEL_INIT

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
