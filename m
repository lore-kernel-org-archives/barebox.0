Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WkD2r-00057N-Lp
 for barebox@lists.infradead.org; Tue, 13 May 2014 13:47:02 +0000
Date: Tue, 13 May 2014 15:46:39 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140513134639.GR5858@pengutronix.de>
References: <1399969739-10355-1-git-send-email-holgerschurig@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1399969739-10355-1-git-send-email-holgerschurig@gmail.com>
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
Subject: Re: [PATCH 00/19] commands rework patch series
To: Holger Schurig <holgerschurig@gmail.com>
Cc: barebox@lists.infradead.org

Hi Holger,

On Tue, May 13, 2014 at 10:28:40AM +0200, Holger Schurig wrote:
> Hi,
> 
> this is my current patch series that should improve barebox'
> documentation about it's commands.
> 
> * when I started barebox and typed "help", the list of commands
>   was scrolling up quickly. Almost always did I had to use the
>   mouse and scroll my x-terminal backwards to see what I
>   actually wanted to see. So I reduced the output of the "help"
>   command to just spit out the command names, however grouped
>   by functions. This is now much smaller and fits in one
>   screen. The old list is available with "help -l".
> * Usage (synopsis) documention (e.g. "ls [-lCR]") was only in
>   the CONFIG_LONGHELP, but it's often usable if one forget the
>   exact command option letter. It's now part of the help even
>   without CONFIG_LONGHELP.
> * I reworked the long help texts to make them better understandable
>   (hopefully), and also tried to recuce their size if possible.
> * when I was new to barebox, I was wandering if I need some
>   of the commands in "make xconfig". I didn't have further
>   information, because almost no command had a help text.
>   This has now changed, the help texts in Kconfig are almost the
>   same as the help texts of "help FOOBAR" (with CONFIG_LONGHELP) on.
> * now that "help" has the commands grouped nicely, it was time
>   to group them in "make xconfig", too
> * many Kconfig entries turned on commands, but they were located
>   at various places (a.g. common, net, arch-depended). Moved them
>   all into commands/Kconfig
> * some CONFIG_CMD_foobar things didn't turn on commands. I renamed
>   them (and their occurences in the _defconfig)s.

This series looks really great! I haven't looked at the details, but it
has some very nice aspects, like the command grouping and the same
grouping into Kconfig submenus.

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
