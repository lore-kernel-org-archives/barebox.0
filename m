Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wg0-x231.google.com ([2a00:1450:400c:c00::231])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XD6aq-00008x-Rj
 for barebox@lists.infradead.org; Fri, 01 Aug 2014 06:45:33 +0000
Received: by mail-wg0-f49.google.com with SMTP id k14so3814146wgh.8
 for <barebox@lists.infradead.org>; Thu, 31 Jul 2014 23:45:09 -0700 (PDT)
Date: Fri, 1 Aug 2014 08:45:04 +0200
From: Alexander Aring <alex.aring@gmail.com>
Message-ID: <20140801064502.GA27679@omega>
References: <1406873830-17123-1-git-send-email-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1406873830-17123-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: Re: [PATCH] commands: saveenv: Fix comment about directories in help
 text
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Sascha,

On Fri, Aug 01, 2014 at 08:17:10AM +0200, Sascha Hauer wrote:
> envfs indeed handles directories, at least since 2007:
> 
> | commit 913691eccd13c1509470eb8b059aa0beecc6d8d8
> | Author: Sascha Hauer <s.hauer@pengutronix.de>
> | Date:   Tue Sep 25 12:58:52 2007 +0200
> |
> |     add directory handling for environment
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  commands/saveenv.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/commands/saveenv.c b/commands/saveenv.c
> index 31d6951..9da733e 100644
> --- a/commands/saveenv.c
> +++ b/commands/saveenv.c
> @@ -60,8 +60,7 @@ BAREBOX_CMD_HELP_TEXT("Save the files in DIRECTORY to the persistent storage dev
>  BAREBOX_CMD_HELP_TEXT("")
>  BAREBOX_CMD_HELP_TEXT("ENVFS is usually a block in flash but can be any other file. If")
>  BAREBOX_CMD_HELP_TEXT("omitted, DIRECTORY defaults to /env and ENVFS defaults to")
> -BAREBOX_CMD_HELP_TEXT("/dev/env0. Note that envfs can only handle files, directories are being")
> -BAREBOX_CMD_HELP_TEXT("skipped silently.")
> +BAREBOX_CMD_HELP_TEXT("/dev/env0.")

but envfs can't handle directories which are empty while saving? :-)
Maybe we should add this as note or support empty directories.

- Alex

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
