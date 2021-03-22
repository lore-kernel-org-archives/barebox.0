Delivery-date: Mon, 22 Mar 2021 06:51:27 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lODTL-00033U-OM
	for lore@lore.pengutronix.de; Mon, 22 Mar 2021 06:51:27 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lODTK-0008Us-Dx
	for lore@pengutronix.de; Mon, 22 Mar 2021 06:51:27 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=yhtfa8jQnLqUXb7UW5XddAO3S5K/MTHX7IKScK3oFbM=; b=ppSUlx6O+wOD9luTz9ccfQvd2
	qH4qMDfAN/hnnmk6oVbzA3YPAhakUwgW1ZVG76ERPFzhu7TlnMJwd3oVuCQ7iLXy1dC6r7g0bcveb
	X7H6Z8GnzTlkCg5Ai+hOvlmBjKCBRBpR/BmHo8HeKGhsFAgFnKOnvhj4O9kqh+APVNfcW1ZYl2k7T
	pImDY8ZtPIpv4mmUu9Fn6siwhQxTdQK/qa+6odalPmYcmp5yjsQ1gHID58mbOe/xOQ0KObdcNnEXI
	SZz8vh2fziupbVQbcwX52lIrEH7HHgs487nIOUc7FB9BHSutKXiUDj5knskdwFNfSmuSuqBXNye9q
	6yz4fe5BA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lODS7-00Awko-MR; Mon, 22 Mar 2021 05:50:11 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lODS0-00AwkS-Gy
 for barebox@lists.infradead.org; Mon, 22 Mar 2021 05:50:07 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lODRz-0008EX-2r; Mon, 22 Mar 2021 06:50:03 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lODRy-0007QF-Kv; Mon, 22 Mar 2021 06:50:02 +0100
Date: Mon, 22 Mar 2021 06:50:02 +0100
To: Denis Osterland-Heim <denis.osterland@diehl.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
Message-ID: <20210322055002.GM23724@pengutronix.de>
References: <20210311170249.22520-1-denis.osterland@diehl.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210311170249.22520-1-denis.osterland@diehl.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 06:33:40 up 32 days,  8:57, 50 users,  load average: 0.01, 0.07, 0.08
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210322_055005_657030_426EEDDD 
X-CRM114-Status: GOOD (  32.94  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] scripts: imx: add support for additional hab Blocks
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Denis,

On Thu, Mar 11, 2021 at 05:07:20PM +0000, Denis Osterland-Heim wrote:
> From: Denis Osterland-Heim <Denis.Osterland@diehl.com>
> 
> This allows to specifiy additional singed blocks
> in the format `offset+size@address` within the imximg.
> 
> It is needed by the uuu tool, which loads the image different to
> the imx-usb-loader. It loads the DCD always to 0x910000 in the OCRAM.
> So this area have to be signed as well.
> 
> In my case this needs `hab_blocks 0x42c+0x1f0@0x910000`.
> 
> It supports to remove quotes to support Kconfig variable here.
> 
> Signed-off-by: Denis Osterland-Heim <Denis.Osterland@diehl.com>
> ---
>  scripts/imx/imx.c | 62 +++++++++++++++++++++++++++++++++++++++++++++--
>  1 file changed, 60 insertions(+), 2 deletions(-)
> 
> diff --git a/scripts/imx/imx.c b/scripts/imx/imx.c
> index 6b8dabd04..d37e200ca 100644
> --- a/scripts/imx/imx.c
> +++ b/scripts/imx/imx.c
> @@ -328,6 +328,7 @@ static int do_hab_blocks(struct config_data *data, int argc, char *argv[])
>  {
>  char *str;
>  int ret;
> +int i;
>  uint32_t signed_size = data->load_size;
>  uint32_t offset = data->image_ivt_offset;
> 
> @@ -352,7 +353,7 @@ static int do_hab_blocks(struct config_data *data, int argc, char *argv[])
>  }
> 
>  if (signed_size > 0) {
> -ret = asprintf(&str, "Blocks = 0x%08x 0x%08x 0x%08x \"%s\"\n",
> +ret = asprintf(&str, "Blocks = 0x%08x 0x%08x 0x%08x \"%s\"",
>  data->image_load_addr + data->image_ivt_offset, offset,
>  signed_size - data->image_ivt_offset, data->outfile);
>  } else {
> @@ -365,10 +366,67 @@ static int do_hab_blocks(struct config_data *data, int argc, char *argv[])
>  return -ENOMEM;
> 
>  ret = hab_add_str(data, str);
> +free(str);
>  if (ret)
>  return ret;
> 
> -return 0;
> +for (i = 1; i < argc; i++)
> +{

Ciding style: The open brace should be on previous line.

> +uint32_t addr;
> +uint32_t off;
> +uint32_t size;
> +char *b;
> +char *e;
> +
> +b = argv[i];
> +if (b[0] == '"') // remove qoutes
> +{
> +b++;
> +for (e = b; *e; e++)
> +/* find end of string */;
> +e--;
> +if (*e == '"')
> +*e = '\0';

To make this less efficient but better readable, how about:

e = b + strlen(b) - 1?

Note this fails when 'b' is an empty string, but your version fails
there as well. It needs an additional check.

> +else
> +fprintf(stderr, "warning: no '\"' at the end of '%s' [b=%p'%s', e=%p'%s']\n", argv[i], b, b, e, e);
> +}
> +if (!*b)
> +continue; // skip if empty
> +
> +e = strchr(b, '+');
> +if (!e)
> +{
> +fprintf(stderr, "failed to find '+' in '%s'\n", b);
> +fprintf(stderr, "format off+size@addr expected, but given: %s\n", argv[i]);
> +return -EINVAL;
> +}
> +*e = '\0';
> +off = strtoul(b, NULL, 0);

No need to set the place where the '+' is to zero. You can do it like
this:

	char *plus;

	off = strtoul(b, &plus, 0);

	if (*plus != '+')
		/* complain */


> +
> +b = e + 1;
> +e = strchr(b, '@');
> +if (!e)
> +{
> +fprintf(stderr, "failed to find '@' in '%s'\n", b);
> +fprintf(stderr, "format off+size@addr expected, but given: %s", argv[i]);
> +return -EINVAL;
> +}
> +*e = '\0';
> +size = strtoul(b, NULL, 0);

Same here.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

