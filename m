Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VnPZW-0007CC-4S
 for barebox@lists.infradead.org; Mon, 02 Dec 2013 09:13:42 +0000
Date: Mon, 2 Dec 2013 10:13:20 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20131202091320.GF24559@pengutronix.de>
References: <CANvTkNaK9f0dviyowuSspx2yuKQem3tvwMo_2ig0rZ6s0Oq0Lw@mail.gmail.com>
 <CANvTkNaxQS489FzWdyozrKnXHeACd5PnCB05GVgMqm82-jBGPg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CANvTkNaxQS489FzWdyozrKnXHeACd5PnCB05GVgMqm82-jBGPg@mail.gmail.com>
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
Subject: Re: [Makefile bug] make barebox.s : dead loop
To: Kevin Du Huanpeng <u74147@gmail.com>
Cc: barebox@lists.infradead.org

On Mon, Dec 02, 2013 at 04:36:50PM +0800, Kevin Du Huanpeng wrote:
> I add barebox.s after the target barebox.S,
> It works.
> maybe should add the same thing with
> 
> ----------
> ifdef CONFIG_X86
> barebox.S: barebox
> ifdef CONFIG_X86_HDBOOT
> ------------
> 
> 
> @@ -723,7 +724,7 @@ endif
>         @echo " * Init Calls content" >> barebox.S
>         $(Q)$(OBJDUMP) -j .barebox_initcalls -d barebox >> barebox.S
>  else
> -barebox.S: barebox FORCE
> +barebox.S barebox.s: barebox FORCE
>         $(call if_changed,disasm)

Normally you are supposed to call 'make barebox.S' (with uppercase 'S'),
but I think it's fine to just add the same target with a lowercase 's'
like you did to make both work. Care to send a proper patch with
Signed-off-by?

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
