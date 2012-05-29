Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SZHtU-0008AQ-Ij
 for barebox@lists.infradead.org; Tue, 29 May 2012 08:35:10 +0000
Date: Tue, 29 May 2012 10:35:06 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120529083506.GZ30400@pengutronix.de>
References: <1338127033-10348-1-git-send-email-plagnioj@jcrosoft.com>
 <1338127033-10348-2-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1338127033-10348-2-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 2/2] menu: add support for disable entry
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Sun, May 27, 2012 at 03:57:13PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  .../arm/boards/at91sam9m10g45ek/env/bin/boot_board |    2 +
>  commands/menu.c                                    |   15 +++++-
>  common/menu.c                                      |   44 +++++++++++++------
>  include/menu.h                                     |    1 +
>  4 files changed, 45 insertions(+), 17 deletions(-)
> 
> @@ -450,6 +458,7 @@ static const __maybe_unused char cmd_menu_help[] =
>  "Add an entry\n"
>  "  (-R for do no exit the menu after executing the command)\n"
>  "  (-b for box style 1 for selected)\n"
> +"  (-D for disabel style command is not needed)\n"

s/disabel/disable/

Better talk about comment lines instead? If I understand this patch
correctly that's what it does.

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
