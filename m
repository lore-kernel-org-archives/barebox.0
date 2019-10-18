Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLPua-0005nA-HX
 for barebox@lists.infradead.org; Fri, 18 Oct 2019 10:55:17 +0000
Date: Fri, 18 Oct 2019 12:55:10 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20191018105509.s6vz7xeix6gjaczw@pengutronix.de>
References: <1571159405-18672-1-git-send-email-iu87m888m@qq.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1571159405-18672-1-git-send-email-iu87m888m@qq.com>
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
Subject: Re: [PATCH] console_simple: fix linking error when ARCH_HAS_CTRLC
 enabled
To: iu87m888m@qq.com
Cc: barebox@lists.infradead.org, DU HUANPENG <u74147@gmail.com>

On Wed, Oct 16, 2019 at 01:10:05AM +0800, iu87m888m@qq.com wrote:
> From: DU HUANPENG <u74147@gmail.com>
> 
> this error happens in sandbox with simple console, sandbox
> has ARCH_HAS_CTRLC enabled by default
> 
> $ make sandbox_defconfig
> $ make menuconfig
> (select CONFIG_SHELL_SIMPLE)
> $ make
> 
> LD      barebox
> common/built-in.o: In function `__pr_memory_display':
> /home/du/source/barebox/common/memory_display.c:117: undefined reference to `ctrlc'
> common/built-in.o: In function `run_init':
> /home/du/source/barebox/common/startup.c:317: undefined reference to `console_ctrlc_allow'
> common/built-in.o: In function `parse_stream_outer':
> /home/du/source/barebox/common/hush.c:1742: undefined reference to `ctrlc'
> common/built-in.o: In function `run_list_real':
> /home/du/source/barebox/common/hush.c:895: undefined reference to `ctrlc'
> common/built-in.o: In function `run_shell':
> /home/du/source/barebox/common/hush.c:1940: undefined reference to `ctrlc_handled'
> 
> Signed-off-by: DU HUANPENG <u74147@gmail.com>
> ---
>  common/console_simple.c | 12 +++++++-----
>  1 file changed, 7 insertions(+), 5 deletions(-)

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
