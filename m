Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SWuNr-0001eK-Ok
 for barebox@lists.infradead.org; Tue, 22 May 2012 19:04:40 +0000
Date: Tue, 22 May 2012 21:04:34 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120522190434.GO30400@pengutronix.de>
References: <1337653364-31191-1-git-send-email-alan@signal11.us>
 <1337657537-15367-1-git-send-email-alan@signal11.us>
 <20120522092718.GE28084@game.jcrosoft.org>
 <4FBBAC03.1000006@signal11.us>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4FBBAC03.1000006@signal11.us>
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
Subject: Re: [PATCH v2] common: Make MENU select PROCESS_ESCAPE_SEQUENCE if
 HUSH_SHELL is selected
To: Alan Ott <alan@signal11.us>
Cc: barebox@lists.infradead.org

On Tue, May 22, 2012 at 11:08:51AM -0400, Alan Ott wrote:
> On 05/22/2012 05:27 AM, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > On 23:32 Mon 21 May     , Alan Ott wrote:
> >> print_menu_entry() in common/menu.c calls on process_escape_sequence() when
> >> HUSH_SHELL is selected.
> >>
> >> Signed-off-by: Alan Ott <alan@signal11.us>
> >> ---
> >>  common/Kconfig |    1 +
> >>  1 files changed, 1 insertions(+), 0 deletions(-)
> >>
> >> diff --git a/common/Kconfig b/common/Kconfig
> >> index 73d620a..7cd0666 100644
> >> --- a/common/Kconfig
> >> +++ b/common/Kconfig
> >> @@ -342,6 +342,7 @@ config AUTO_COMPLETE
> >>  config MENU
> >>  	bool
> >>  	prompt "Menu Framework"
> >> +	select PROCESS_ESCAPE_SEQUENCE if SHELL_HUSH
> >>  	help
> >>  	   a menu framework that allow us to create list menu to simplify
> >>  	   barebox and make it more user-frendly
> > you miss the point of the code
> >
> > the PROCESS_ESCAPE_SEQUENCE is optionnal and need to stay optionnal
> > evenif Hush is enable
> 
> It's required if both HUSH_SHELL _and_ MENU are selected. The code in
> common/menu.c looks like this:
> 
>                 if (IS_ENABLED(CONFIG_SHELL_HUSH)) {
>                         process_escape_sequence(m->display,
> m->display_buffer,
>                                                 m->display_buffer_size);
>                         puts(m->display_buffer);
>                 } else {
>                         puts(m->display);
>                 }

From what I see your v2 patch is correct. Another possibility would
maybe be replacing the if above with
IS_ENABLED(CONFIG_PROCESS_ESCAPE_SEQUENCE), but I don't know if that
would produce correct code.

Jean-Christophe?

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
