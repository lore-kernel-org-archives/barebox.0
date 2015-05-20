Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Yux9Z-0000cr-7t
 for barebox@lists.infradead.org; Wed, 20 May 2015 06:06:54 +0000
Date: Wed, 20 May 2015 08:06:29 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150520060629.GG6325@pengutronix.de>
References: <1431999086-19465-1-git-send-email-yamada.masahiro@socionext.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1431999086-19465-1-git-send-email-yamada.masahiro@socionext.com>
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
Subject: Re: [PATCH] Abolish cpu_read* and cpu_write* accessors
To: Masahiro Yamada <yamada.masahiro@socionext.com>
Cc: barebox@lists.infradead.org

On Tue, May 19, 2015 at 10:31:26AM +0900, Masahiro Yamada wrote:
> Commit 2e6a88f2101d (add cpu native ordered io accessors) introduced
> these macros and then commit be57f20cdd7d (Fix big endian MMIO
> primitives) figured out they are equivalent to __raw_{read,write}*.
> 
> They turned out unnecessary after all.  Anyway, most source files
> use __raw_read* and __raw_write*.
> 
> Let's replace a few remaining references and abolish them.
> 
> Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
> ---

Applied, thanks

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
