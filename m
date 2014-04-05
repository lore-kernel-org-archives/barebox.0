Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x22c.google.com ([2a00:1450:400c:c05::22c])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WWIkE-0005vG-1o
 for barebox@lists.infradead.org; Sat, 05 Apr 2014 05:02:18 +0000
Received: by mail-wi0-f172.google.com with SMTP id hi2so2340757wib.11
 for <barebox@lists.infradead.org>; Fri, 04 Apr 2014 22:01:51 -0700 (PDT)
Date: Sat, 5 Apr 2014 07:01:46 +0200
From: Alexander Aring <alex.aring@gmail.com>
Message-ID: <20140405050143.GA29442@omega.Speedport_W_921V_1_24_000>
References: <53316480.2030103@reverze.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <53316480.2030103@reverze.net>
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
Subject: Re: [PATCH 2/3] x86: Add support for IDE on the legacy I/O ports
To: Michel Stam <michel@reverze.net>
Cc: barebox@lists.infradead.org

On Tue, Mar 25, 2014 at 12:12:00PM +0100, Michel Stam wrote:
> ---
>  arch/x86/boards/x86_generic/generic_pc.c | 71 ++++++++++++++++++++++++
>  drivers/ata/ide-sff.c                    | 94
> ++++++++++++++++++++++++++------
>  drivers/ata/intf_platform_ide.c          | 14 ++++-
>  include/ata_drive.h                      |  1 +
>  4 files changed, 161 insertions(+), 19 deletions(-)
> 
> diff --git a/arch/x86/boards/x86_generic/generic_pc.c
> b/arch/x86/boards/x86_generic/generic_pc.c
> index 74a7224..6152afc 100644
> --- a/arch/x86/boards/x86_generic/generic_pc.c
> +++ b/arch/x86/boards/x86_generic/generic_pc.c
> @@ -27,6 +27,10 @@
>  #include <ns16550.h>
>  #include <linux/err.h>
>  +#ifdef CONFIG_DISK_INTF_PLATFORM_IDE

Here is also a diff inconsitent... there is a space at beginning of the
line?? Did you use git send-email? Check [0] for a introduction.

- Alex

[0] https://home.regit.org/technical-articles/git-for-the-newbie/

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
