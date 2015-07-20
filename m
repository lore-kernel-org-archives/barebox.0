Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZH3bk-0004Ie-45
 for barebox@lists.infradead.org; Mon, 20 Jul 2015 05:27:20 +0000
Date: Mon, 20 Jul 2015 07:26:57 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150720052657.GR18700@pengutronix.de>
References: <1437160969-31517-1-git-send-email-m.olbrich@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1437160969-31517-1-git-send-email-m.olbrich@pengutronix.de>
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
Subject: Re: [PATCHv2 00/16] EFI updates
To: Michael Olbrich <m.olbrich@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, Jul 17, 2015 at 09:22:33PM +0200, Michael Olbrich wrote:
> Hi,
> 
> I've added a patch for xasprintf() and one to add xfuncs for the relevant
> wchar functions. I've replaced all occurrences in the EFI code but I'm not
> confident enough to do this elsewhere without being able to test it.
> 
> And I've added some patches to save the environment in an EFI variable.
> 
> Michael Olbrich (16):
>   xfuncs: add xasprintf() and xvasprintf()
>   xfuncs: add wrapper for wchar strdup functions
>   efi: improve malloc pool allocation
>   efi: refactor & improve application loading code
>   efi: add support for initrd loading
>   efi: add helper to get the GPT partition UUID for a device
>   efi: export device_path_from_handle()
>   efi: add helper functions to write EFI variables
>   efi: write volatile EFI variables used by systemd
>   efi: use xasprintf() when appropriate
>   efi: use xstrdup_* when appropriate
>   fs: efi: use xstrdup_* when appropriate
>   fs: efivars: use xstrdup_* when appropriate
>   fs: efivars: add more error checking
>   fs: efivars: read the attributes on the second get_variable()
>   efi: use an EFI variable to save the environment

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
