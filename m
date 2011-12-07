Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 9.mo4.mail-out.ovh.net ([46.105.40.176]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RYHZr-0006xA-Js
 for barebox@lists.infradead.org; Wed, 07 Dec 2011 13:30:28 +0000
Received: from mail192.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 1789D1050A1C
 for <barebox@lists.infradead.org>; Wed,  7 Dec 2011 14:30:36 +0100 (CET)
Date: Wed, 7 Dec 2011 14:26:37 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20111207132637.GC9044@game.jcrosoft.org>
References: <1322467340-10596-1-git-send-email-s.hauer@pengutronix.de>
 <1322467340-10596-8-git-send-email-s.hauer@pengutronix.de>
 <20111206150820.GD32515@game.jcrosoft.org>
 <20111207091917.GO27267@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20111207091917.GO27267@pengutronix.de>
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
Subject: Re: [PATCH 07/14] bootm: handle initrds inline
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 10:19 Wed 07 Dec     , Sascha Hauer wrote:
> On Tue, Dec 06, 2011 at 04:08:20PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > On 09:02 Mon 28 Nov     , Sascha Hauer wrote:
> > > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > > ---
> > > +
> > > +				data.initrd = get_fake_image_handle(&data, num);
> > this can not work
> > 
> > get_fake_image_handle expect the uImage is mapped
> 
> Yes, you're right.
> 
> > 
> > attached patch fix it
> > 
> 
> How about the following instead? I think it's a bit cleaner to
> completely move the initrd code out of the option parsing.
> 
> Sascha
> 
> >From 5128a2d2badace6102dc5461408ceaa47d0e9cc1 Mon Sep 17 00:00:00 2001
> From: Sascha Hauer <s.hauer@pengutronix.de>
> Date: Tue, 6 Dec 2011 08:44:05 +0100
> Subject: [PATCH] bootm: factor out initrd code from option parser
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  commands/bootm.c |   26 +++++++++++++++-----------
>  1 files changed, 15 insertions(+), 11 deletions(-)
> 
> diff --git a/commands/bootm.c b/commands/bootm.c
> index 859ec28..f97a842 100644
> --- a/commands/bootm.c
> +++ b/commands/bootm.c
> @@ -121,6 +121,7 @@ static int do_bootm(struct command *cmdtp, int argc, char *argv[])
>  	struct image_handle *os_handle = NULL;
>  	struct image_handler *handler;
>  	struct image_data data;
> +	const char *initrdname = NULL;
>  	int ret = 1;
>  
>  	memset(&data, 0, sizeof(struct image_data));
> @@ -136,17 +137,7 @@ static int do_bootm(struct command *cmdtp, int argc, char *argv[])
>  			data.initrd_address = simple_strtoul(optarg, NULL, 0);
>  			break;
>  		case 'r':
> -			printf("use initrd %s\n", optarg);
> -			/* check for multi image @<num> */
> -			if (optarg[0] == '@') {
> -				int num = simple_strtol(optarg + 1, NULL, 0);
> -
> -				data.initrd = get_fake_image_handle(&data, num);
> -			} else {
> -				data.initrd = map_image(optarg, data.verify);
> -			}
> -			if (!data.initrd)
> -				goto err_out;
> +			initrdname = optarg;
>  			break;
>  		default:
>  			break;
> @@ -171,6 +162,19 @@ static int do_bootm(struct command *cmdtp, int argc, char *argv[])
>  		goto err_out;
>  	}
>  
> +	if (initrdname) {
> +		/* check for multi image @<num> */
> +		if (initrdname[0] == '@') {
> +			int num = simple_strtol(optarg + 1, NULL, 0);
> +
> +			data.initrd = get_fake_image_handle(&data, num);
> +		} else {
> +			data.initrd = map_image(optarg, data.verify);
> +		}
> +		if (!data.initrd)
> +			goto err_out;
> +	}
> +
ok

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
