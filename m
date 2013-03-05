Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UCx6S-0001ji-Ks
 for barebox@lists.infradead.org; Tue, 05 Mar 2013 19:00:45 +0000
Date: Tue, 5 Mar 2013 20:00:41 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130305190041.GB1906@pengutronix.de>
References: <1362498748.832582078@f53.mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1362498748.832582078@f53.mail.ru>
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
Subject: Re: debug in PBL
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Tue, Mar 05, 2013 at 07:52:28PM +0400, Alexander Shiyan wrote:
> Hello All.
> 
> I tried to compile latest bb.
> pcm038 + pbl + debug level 7
> 
> Compilation failed with following error:
>   LD      arch/arm/pbl/zbarebox
> arch/arm/mach-imx/built-in-pbl.o: In function `imx_nand_load_image':
> /home/git/bb-mar05/arch/arm/mach-imx/external-nand-boot.c:232: undefined reference to `printf'
> 
> How we should handle debug messages in PBL in this case?

Until recently the debug macro was defined empty, now it expands to
printf and only compiled away when the debug level is lower. It seems
we have to either drop the debug() calls in the pbl or add an empty
printf implementation.

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
