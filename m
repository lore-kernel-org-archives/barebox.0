Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jR8RP-00008i-1j
 for barebox@lists.infradead.org; Wed, 22 Apr 2020 06:01:01 +0000
Date: Wed, 22 Apr 2020 08:00:57 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200422060057.GI1694@pengutronix.de>
References: <20200415183946.274194-1-masahiroy@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200415183946.274194-1-masahiroy@kernel.org>
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
Subject: Re: [PATCH 1/2] kbuild: support ccflags-y, asflags-y, and cppflags-y
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: barebox@lists.infradead.org

On Thu, Apr 16, 2020 at 03:39:45AM +0900, Masahiro Yamada wrote:
> Some Makefiles use ccflags-y, but it is not actually supported.
> Support ccflags-y, asflags-y, and cppflags-y now.
> 
> Remove the workaround in drivers/pci/Makefile.
> 
> I did not add ldflags-y for now because arch/mips/Makefile is using
> it for a different meaning.

This looks a bit inconsistent. Should we rename ldflags-y in
arch/mips/Makefile to lflags-y or mips-ldflags-y and apply this patch
with ldflags-y?

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
