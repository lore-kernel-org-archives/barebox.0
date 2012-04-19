Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SKl1c-0002vt-FH
 for barebox@lists.infradead.org; Thu, 19 Apr 2012 06:39:34 +0000
Date: Thu, 19 Apr 2012 08:39:14 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120419063914.GG3852@pengutronix.de>
References: <20120419053846.GA20601@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120419053846.GA20601@game.jcrosoft.org>
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
Subject: Re: [PATCH 00/11 v2] improve complete support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Thu, Apr 19, 2012 at 07:38:46AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> Hi,
> 
> 	the following patch serie improve the complete support
> 	by adding a complete framework to aalow commands complete support
> 
> 	the add also car complete support for eval and setting and executable
> 	file support
> 
> 	this also include an update of the stringlist API to support asprintf
> 	API
> 
> The following changes since commit a7ddbc40865a8ffe716aca686763780febad575c:
> 
>   Merge branch 'binfmt' of git://git.jcrosoft.org/barebox into next (2012-04-18 20:42:17 +0200)
> 
> are available in the git repository at:
> 
> 
>   git://git.jcrosoft.org/barebox.git complete
> 
> for you to fetch changes up to fcbc878be12d1c8d2bf839255b1bb7bd465adb96:
> 
>   complete: add executable file support (2012-04-19 13:49:42 +0800)

Looks interesting, I just gave it a try. I didn't have a close look at
it yet. The variable completion feels strange. Pressing a<tab><tab>
expands to

barebox@Phytec phyCORE-i.MX27:/ a
addpart                   autoboot_timeout=
a=                        armlinux_architecture=

I really don't expect this and it seems quite non standard. Not sure if
I like it.

Another thing is, does it make sense to add a CONFIG_AUTO_COMPLETE_ADVANCED
for the more obscure completions?

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
