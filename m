Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1erfFU-0005VN-Ah
 for barebox@lists.infradead.org; Fri, 02 Mar 2018 07:37:02 +0000
Date: Fri, 2 Mar 2018 08:36:45 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180302073645.az7o7zxeysrafxtw@pengutronix.de>
References: <001601d3b17a$a176cbc0$e4646340$@qq.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <001601d3b17a$a176cbc0$e4646340$@qq.com>
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
Subject: Re: freescale-mx28-evk run from ram
To: duhuanpeng <548708880@qq.com>
Cc: barebox@lists.infradead.org

Hi Du Huanpeng,

On Fri, Mar 02, 2018 at 12:30:37AM +0800, duhuanpeng wrote:
> Dear all,
> 
> Happy Yuanxiao(Lantern) Festival!

Thanks, same to you. Just googled some pictures for the lantern
Festival, it must look amazing to stand under that many lanterns ;)

> In System.map
> 00000000 T __image_start
> 00000000 T start
> 00000000 T _stext
> 00000000 T _text
> 00000004 T __bare_init_start
> 00000004 T get_runtime_offset
> 00000014 t linkadr
> 00000018 T __ld_var_base
> 00000018 T __ld_var__text
> 00000020 t ___text
> 00000024 T __ld_var___rel_dyn_start
> 0000002c t ____rel_dyn_start
> 00000030 T __ld_var___rel_dyn_end
> 00000038 t ____rel_dyn_end
> 0000003c T __ld_var___dynsym_start
> 00000044 t ____dynsym_start
> 00000048 T __ld_var___dynsym_end
> 00000050 t ____dynsym_end
> 00000054 T __ld_var___bss_start
> 0000005c t ____bss_start
> 00000060 T __ld_var___bss_stop
> 00000068 t ____bss_stop
> 
> So, I load barebox.bin to address 0x00000000:

I assume you use freescale-mx28-evk_defconfig, right?
Which image do you start? It seems you are trying to start barebox.bin.
It should be images/barebox-freescale-mx28evk-2nd.img instead.

The image should be linked to 0x0, that is right. The code is position
independent though and the full barebox relocates itself to the end of
the available SDRAM automatically. TEXT_BASE is not relevant here.

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
