Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 17.mo1.mail-out.ovh.net ([87.98.179.142]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RXwgn-0007xf-VD
 for barebox@lists.infradead.org; Tue, 06 Dec 2011 15:12:18 +0000
Received: from mail99.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id C82DA1000184
 for <barebox@lists.infradead.org>; Tue,  6 Dec 2011 16:12:18 +0100 (CET)
Date: Tue, 6 Dec 2011 16:08:20 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20111206150820.GD32515@game.jcrosoft.org>
References: <1322467340-10596-1-git-send-email-s.hauer@pengutronix.de>
 <1322467340-10596-8-git-send-email-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="Qxx1br4bt0+wmkIi"
Content-Disposition: inline
In-Reply-To: <1322467340-10596-8-git-send-email-s.hauer@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 07/14] bootm: handle initrds inline
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org


--Qxx1br4bt0+wmkIi
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On 09:02 Mon 28 Nov     , Sascha Hauer wrote:
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  commands/bootm.c |   78 +++++++++++++++++++----------------------------------
>  1 files changed, 28 insertions(+), 50 deletions(-)
> 
> diff --git a/commands/bootm.c b/commands/bootm.c
> index 823d387..17139f7 100644
> --- a/commands/bootm.c
> +++ b/commands/bootm.c
> @@ -141,55 +141,6 @@ static struct image_handle *get_fake_image_handle(struct image_data *data, int n
>  	return handle;
>  }
>  
> -static int initrd_handler_parse_options(struct image_data *data, int opt,
> -		char *optarg)
> -{
> -	uint32_t initrd_start;
> -
> -	switch(opt) {
> -	case 'L':
> -		if (!data->initrd) {
> -			eprintf("Warning -L ingnored. Specify the initrd first\n");
> -			break;
> -		}
> -		initrd_start = simple_strtoul(optarg, NULL, 0);
> -		printf("initrd_start=0x%x\n", initrd_start);
> -		data->initrd->header.ih_load = cpu_to_uimage(initrd_start);
> -		break;
> -	case 'r':
> -		printf("use initrd %s\n", optarg);
> -		/* check for multi image @<num> */
> -		if (optarg[0] == '@') {
> -			int num = simple_strtol(optarg + 1, NULL, 0);
> -
> -			data->initrd = get_fake_image_handle(data, num);
> -		} else {
> -			data->initrd = map_image(optarg, data->verify);
> -		}
> -		if (!data->initrd)
> -			return -1;
> -		break;
> -	default:
> -		return 1;
> -	}
> -
> -	return 0;
> -}
> -
> -static struct image_handler initrd_handler = {
> -	.cmdline_options = "r:L:",
> -	.cmdline_parse = initrd_handler_parse_options,
> -	.help_string = " -r <initrd>    specify an initrd image\n"
> -		       " -L <load addr> specify initrd load address",
> -};
> -
> -static int initrd_register_image_handler(void)
> -{
> -	return register_image_handler(&initrd_handler);
> -}
> -
> -late_initcall(initrd_register_image_handler);
> -
>  static int handler_parse_options(struct image_data *data, int opt, char *optarg)
>  {
>  	struct image_handler *handler;
> @@ -216,13 +167,14 @@ static int do_bootm(struct command *cmdtp, int argc, char *argv[])
>  	struct image_handle *os_handle, *initrd_handle = NULL;
>  	struct image_handler *handler;
>  	struct image_data data;
> +	u32 initrd_start;
>  	char options[53]; /* worst case: whole alphabet with colons */
>  
>  	memset(&data, 0, sizeof(struct image_data));
>  	data.verify = 1;
>  
>  	/* Collect options from registered handlers */
> -	strcpy(options, "nh");
> +	strcpy(options, "nhr:L:");
>  	list_for_each_entry(handler, &handler_list, list) {
>  		if (handler->cmdline_options)
>  			strcat(options, handler->cmdline_options);
> @@ -242,6 +194,28 @@ static int do_bootm(struct command *cmdtp, int argc, char *argv[])
>  			}
>  
>  			return 0;
> +		case 'L':
> +			if (!data.initrd) {
> +				eprintf("Warning -L ingnored. Specify the initrd first\n");
> +				break;
> +			}
> +			initrd_start = simple_strtoul(optarg, NULL, 0);
> +			printf("initrd_start=0x%x\n", initrd_start);
> +			data.initrd->header.ih_load = cpu_to_uimage(initrd_start);
> +			break;
> +		case 'r':
> +			printf("use initrd %s\n", optarg);
> +			/* check for multi image @<num> */
> +			if (optarg[0] == '@') {
> +				int num = simple_strtol(optarg + 1, NULL, 0);
> +
> +				data.initrd = get_fake_image_handle(&data, num);
this can not work

get_fake_image_handle expect the uImage is mapped

attached patch fix it

Best Regards,
J.

--Qxx1br4bt0+wmkIi
Content-Type: text/x-diff; charset=us-ascii
Content-Disposition: attachment; filename="0001-bootm-fix-initrd-multi-image-support.patch"

From b7b35f53686f5ee0e35caf195adc97b88d393c71 Mon Sep 17 00:00:00 2001
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Tue, 6 Dec 2011 23:09:37 +0800
Subject: [PATCH 1/1] bootm: fix initrd multi-image support

the -L option use get_fake_image_handle expect the uImage is mapped

so move is after the uImage is mapped

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 commands/bootm.c |   15 ++++++++++-----
 1 files changed, 10 insertions(+), 5 deletions(-)

diff --git a/commands/bootm.c b/commands/bootm.c
index d796914..c7ce42e 100644
--- a/commands/bootm.c
+++ b/commands/bootm.c
@@ -141,6 +141,7 @@ static int do_bootm(struct command *cmdtp, int argc, char *argv[])
 	struct image_handler *handler;
 	struct image_data data;
 	int ret = 1;
+	int initrd_num = 0;
 	char options[53]; /* worst case: whole alphabet with colons */
 
 	memset(&data, 0, sizeof(struct image_data));
@@ -175,14 +176,12 @@ static int do_bootm(struct command *cmdtp, int argc, char *argv[])
 			printf("use initrd %s\n", optarg);
 			/* check for multi image @<num> */
 			if (optarg[0] == '@') {
-				int num = simple_strtol(optarg + 1, NULL, 0);
-
-				data.initrd = get_fake_image_handle(&data, num);
+				initrd_num = simple_strtol(optarg + 1, NULL, 0);
 			} else {
 				data.initrd = map_image(optarg, data.verify);
+				if (!data.initrd)
+					goto err_out;
 			}
-			if (!data.initrd)
-				goto err_out;
 			break;
 		default:
 			break;
@@ -201,6 +200,12 @@ static int do_bootm(struct command *cmdtp, int argc, char *argv[])
 
 	os_header = &os_handle->header;
 
+	if (initrd_num) {
+		data.initrd = get_fake_image_handle(&data, initrd_num);
+		if (!data.initrd)
+			goto err_out;
+	}
+
 	if (image_get_arch(os_header) != IH_ARCH) {
 		printf("Unsupported Architecture 0x%x\n",
 		       image_get_arch(os_header));
-- 
1.7.7


--Qxx1br4bt0+wmkIi
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--Qxx1br4bt0+wmkIi--
