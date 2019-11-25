Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZ9vC-00028n-PU
 for barebox@lists.infradead.org; Mon, 25 Nov 2019 08:40:40 +0000
Date: Mon, 25 Nov 2019 09:40:36 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20191125084036.p7akxlzumpieod7u@pengutronix.de>
References: <1574411664-11733-1-git-send-email-duhuanpeng@loongson.cn>
 <a3ba081f-5789-1f6c-cdba-e09a13561d7d@rempel-privat.de>
 <20191122094639.GA13533@brew>
 <ac7ed1a9-4632-644b-da7a-d642ca3ecc68@rempel-privat.de>
 <20191122115700.GA15570@brew>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191122115700.GA15570@brew>
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
Subject: Re: [PATCH] MIPS: Makefile: minor codingstyle fix
To: Du Huanpeng <u74147@gmail.com>
Cc: barebox@lists.infradead.org, Oleksij Rempel <linux@rempel-privat.de>

On Fri, Nov 22, 2019 at 07:57:03PM +0800, Du Huanpeng wrote:
> Hi.
> 
> > Actually all of this lines haw incorrect coding style. It should be 80
> > char width style.
> I see this, but it is more practical here. the editor will automatic warp lines.
> 
> I can write a better description and send a v2 patch.

Please do so. Please don't take 80 chars as a hard limit. While I think
the lines we are talking about here are a bit long, forcing it to 80
chars doesn't really improve readability.

i.e the following looks good, eventhough it's longer than 80 chars:

cflags-$(CONFIG_CPU_LOONGSON1) += \
	$(call cc-option,-march=mips32r2,-mips32r2 -U_MIPS_ISA -D_MIPS_ISA=_MIPS_ISA_MIPS32) \
	-Wa,-mips32r2 -Wa,--trap

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
