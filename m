Delivery-date: Tue, 22 Jun 2021 11:10:17 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lvcQD-0000Zg-JP
	for lore@lore.pengutronix.de; Tue, 22 Jun 2021 11:10:17 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lvcQC-000088-Ln
	for lore@pengutronix.de; Tue, 22 Jun 2021 11:10:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=3bPwIfCnDI7QtlCbsktHrmhD1iDeHbxjTMX8sg0lcu4=; b=UGgJbgY0h9vvwr7FRcrP8lmhiv
	fqN4SFbK2lNjrovJ5uKpJczRnyuWRquJLlWsWeRiV9UagC2sjEOmKeQs+GtyRFSmiYpZip9GwyCEm
	7SVyE+pD+A0dtE8FOMsSCP1USb2NDw8gMvPbc7A0lZ1lQG/f45CZj7Ai5FKCgwxe5J4XdMsjNmR9H
	gxDocOh93xU3p6IngBFWKuqHRbdUqfuwCOZAPlcDd4uKaa3ryG4kwijJ9u1sCO6hPCer6uzf5p+Yj
	mQI/E3gNu/RVmUTA78qIC1JtEbQ6R4Y6DMZ0iFjaIcvPFV6b702REEdEBMGLESrDCIGysf4zqGBnX
	cRTF8Tfw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lvcP1-006Mbo-OS; Tue, 22 Jun 2021 09:09:03 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lvcOv-006MaF-Lr
 for barebox@lists.infradead.org; Tue, 22 Jun 2021 09:08:59 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lvcOu-0008G1-Dg; Tue, 22 Jun 2021 11:08:56 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lvcOu-0003xQ-3t; Tue, 22 Jun 2021 11:08:56 +0200
Date: Tue, 22 Jun 2021 11:08:56 +0200
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <20210622090856.GY31738@pengutronix.de>
References: <20210616063246.14900-1-s.trumtrar@pengutronix.de>
 <20210616063246.14900-8-s.trumtrar@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210616063246.14900-8-s.trumtrar@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 11:07:23 up 124 days, 12:31, 123 users,  load average: 0.27, 0.35,
 0.28
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210622_020857_759166_5BEB49DF 
X-CRM114-Status: GOOD (  27.40  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v4 08/10] commands: firmwareload: allow loading firmware
 from dt
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Jun 16, 2021 at 08:32:44AM +0200, Steffen Trumtrar wrote:
> firmwareload can only load a bitstream into an FPGA without any
> knowledge of possible additional needs (e.g. FPGA bridges).
> 
> These are defined in the fpga-region nodes in the devicetree. The
> fpga-region describes the layout of the FPGA and the bridges it needs
> en/disabled.
> 
> Add an option to let firmwareload go via the oftree route and load the
> firmware that way.
> 
> Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> 
> ---
> 
> v2->v3 - remove unused arg 'o'
>        - use xstrdup()
> ---
>  commands/firmwareload.c | 39 +++++++++++++++++++++++++++++++++------
>  1 file changed, 33 insertions(+), 6 deletions(-)
> 
> diff --git a/commands/firmwareload.c b/commands/firmwareload.c
> index b735088f6117..c2a017c45479 100644
> --- a/commands/firmwareload.c
> +++ b/commands/firmwareload.c
> @@ -5,18 +5,35 @@
>  #include <command.h>
>  #include <getopt.h>
>  #include <firmware.h>
> +#include <of.h>
>  
>  static int do_firmwareload(int argc, char *argv[])
>  {
> -	int ret, opt;
> +	int opt;
>  	const char *name = NULL, *firmware;
>  	struct firmware_mgr *mgr;
> +	char *path = NULL;
> +	char *search_path = NULL;
> +	char *compatible = NULL;
> +	int oftree = 0;
>  
> -	while ((opt = getopt(argc, argv, "t:l")) > 0) {
> +	while ((opt = getopt(argc, argv, "t:c:S:D:l")) > 0) {
>  		switch (opt) {
>  		case 't':
>  			name = optarg;
>  			break;
> +		case 'c':
> +			compatible = xstrdup(optarg);
> +			oftree = 1;
> +			break;
> +		case 'S':
> +			search_path = xstrdup(optarg);
> +			oftree = 1;
> +			break;
> +		case 'D':
> +			path = xstrdup(optarg);

As mentioned to v2 these strings are not freed. Anyway, duplicating them
is not necessary, a plain path = optarg is enough. Will fix that up.

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

