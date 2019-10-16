Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtpbg509.qq.com ([203.205.250.90] helo=smtpbg.qq.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKje8-0002YE-C9
 for barebox@lists.infradead.org; Wed, 16 Oct 2019 13:47:27 +0000
Date: Wed, 16 Oct 2019 21:47:05 +0800
From: duhuanpeng <sendpatch@qq.com>
Message-ID: <20191016134705.GA19851@router.tkernel.org>+FA9E48CC342B9806
References: <20191015205744.GA30054@router.tkernel.org>
 <20191016085747.dhb6z3s2ckw5tpnq@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191016085747.dhb6z3s2ckw5tpnq@pengutronix.de>
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
To: Roland Hieber <rhi@pengutronix.de>
Cc: barebox@lists.infradead.org, r.karszniewicz@phytec.de

> 
> FWIW, in bash on both my tty2 and urxvt, Ctrl-U clears the whole line.

did you try to move your cursor in the middle of a line.

I guess my bash use this keybinds:

[1] https://www.gnu.org/software/bash/manual/bash.html#Bindable-Readline-Commands

  8.4.4 Killing And Yanking
    kill-line (C-k)
    Kill the text from point to the end of the line.

    backward-kill-line (C-x Rubout)
    Kill backward from the cursor to the beginning of the current line.

    unix-line-discard (C-u)
    Kill backward from the cursor to the beginning of the current line.

    kill-whole-line ()
    Kill all characters on the current line, no matter where point is. By default, this is unbound.


Regards,
duhuanpeng

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
