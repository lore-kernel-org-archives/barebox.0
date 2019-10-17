Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL1Y7-0005QG-U3
 for barebox@lists.infradead.org; Thu, 17 Oct 2019 08:54:26 +0000
Date: Thu, 17 Oct 2019 10:54:21 +0200
From: Roland Hieber <rhi@pengutronix.de>
Message-ID: <20191017085421.6oobfdtkzog4b4mc@pengutronix.de>
References: <20191015205744.GA30054@router.tkernel.org>
 <20191016085747.dhb6z3s2ckw5tpnq@pengutronix.de>
 <20191016134705.GA19851@router.tkernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191016134705.GA19851@router.tkernel.org>
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
Subject: Re: readling, ctrl-u is not working like linux console
To: barebox@lists.infradead.org, r.karszniewicz@phytec.de

On Wed, Oct 16, 2019 at 09:47:05PM +0800, duhuanpeng wrote:
> > 
> > FWIW, in bash on both my tty2 and urxvt, Ctrl-U clears the whole line.
> 
> did you try to move your cursor in the middle of a line.

Ah, I misread your first mail. Yes, my bash only discards characters
before the cursor until the start of the line.

 - Roland

> 
> I guess my bash use this keybinds:
> 
> [1] https://www.gnu.org/software/bash/manual/bash.html#Bindable-Readline-Commands
> 
>   8.4.4 Killing And Yanking
>     kill-line (C-k)
>     Kill the text from point to the end of the line.
> 
>     backward-kill-line (C-x Rubout)
>     Kill backward from the cursor to the beginning of the current line.
> 
>     unix-line-discard (C-u)
>     Kill backward from the cursor to the beginning of the current line.
> 
>     kill-whole-line ()
>     Kill all characters on the current line, no matter where point is. By default, this is unbound.
> 
> 
> Regards,
> duhuanpeng
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Roland Hieber                     | r.hieber@pengutronix.de     |
Pengutronix e.K.                  | https://www.pengutronix.de/ |
Peiner Str. 6-8, 31137 Hildesheim | Phone: +49-5121-206917-5086 |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
