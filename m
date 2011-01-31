Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Pjotn-0004sP-Jb
	for barebox@lists.infradead.org; Mon, 31 Jan 2011 08:14:12 +0000
Date: Mon, 31 Jan 2011 09:14:09 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110131081409.GJ9041@pengutronix.de>
References: <AANLkTimL_AGd7_fC0h3Ae5e8YMR8N9v-K3qJujGqz4Fu@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <AANLkTimL_AGd7_fC0h3Ae5e8YMR8N9v-K3qJujGqz4Fu@mail.gmail.com>
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
Subject: Re: master compile error
To: Belisko Marek <marek.belisko@gmail.com>
Cc: barebox@lists.infradead.org

On Mon, Jan 31, 2011 at 03:05:13AM -0500, Belisko Marek wrote:
> Hi,
> 
> trying to compile current barebox
> (a45c3b961c7696e2f203f3fd981db78d92b747e6) from master branch and get
> following error (gcc 4.5.1):
> LD      barebox
> common/built-in.o: In function `image_get_data':
> /home/open-nandra/Downloads/barebox/include/image.h:280: undefined
> reference to `__bswapsi2'
> common/built-in.o: In function `image_multi_getimg':
> /home/open-nandra/Downloads/barebox/common/image.c:213: undefined
> reference to `__bswapsi2'
> common/built-in.o: In function `image_print_contents':
> /home/open-nandra/Downloads/barebox/common/image.c:279: undefined
> reference to `__bswapsi2'
> /home/open-nandra/Downloads/barebox/common/image.c:284: undefined
> reference to `__bswapsi2'
> /home/open-nandra/Downloads/barebox/common/image.c:285: undefined
> reference to `__bswapsi2'
> common/built-in.o:/home/open-nandra/Downloads/barebox/common/image.c:286:
> more undefined references to `__bswapsi2' follow
> make: *** [barebox] Error 1
> 
> I found this patch
> (http://lists.infradead.org/pipermail/barebox/2011-January/002693.html)
> but seems it's missing in master branch.

Does this patch work without

d62f824 arm: libgcc update to linux v2.6.37

?

I hesitated to apply d62f824 to master because it seems quite intrusive.

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
