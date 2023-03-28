Delivery-date: Tue, 28 Mar 2023 10:23:27 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ph4c2-00HPND-RR
	for lore@lore.pengutronix.de; Tue, 28 Mar 2023 10:23:27 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ph4c2-0007Ss-KK
	for lore@pengutronix.de; Tue, 28 Mar 2023 10:23:27 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=k7nMxbU3//MoMnt2ziPTUGlsWOGSqiDWfQqMRDDrlMI=; b=N/OnLBWfsk2GIFg4CwAUB77xtj
	UZwC4TqZrtUz7KuUfDFNWrePxWVqAdjmAuH9gzdRA2+tDjtP9s0FRJLKqR4FvLkYjzIl/quM0CEGH
	JkQaFJKGkE2nuxyb2FxfljrhPpcJZ5gdP16nBmaZuhlRNud1lfPyGM7RpB0wbGxO454NqSapW9ktc
	GCo4hC/CnfP3YjSHUHwe2aOQxJjnPf8nVXg9V4LdsYL/xdOfXEHJ1p9HABtD517Lyw+Cp9yrAxyux
	638ogpO4IG+PIK60GrqqAk9xUOrc3L4GX37CNhdhJkT0DWBTcb5oAQmZVhjtOzQvjmTtA9t2DgDZ+
	3O85rixQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ph4b0-00DZjs-0T;
	Tue, 28 Mar 2023 08:22:22 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ph4aw-00DZiV-26
	for barebox@lists.infradead.org;
	Tue, 28 Mar 2023 08:22:20 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1ph4av-0007Gq-Cj; Tue, 28 Mar 2023 10:22:17 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1ph4av-0002gD-0J; Tue, 28 Mar 2023 10:22:17 +0200
Date: Tue, 28 Mar 2023 10:22:16 +0200
To: Albert Schwarzkopf <a.schwarzkopf@phytec.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230328082216.GJ19113@pengutronix.de>
References: <20230327084827.1854478-1-a.schwarzkopf@phytec.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230327084827.1854478-1-a.schwarzkopf@phytec.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230328_012218_685762_FC18354D 
X-CRM114-Status: GOOD (  22.89  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] scripts: imx: Ignore ';' and '\n' in quotes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Mar 27, 2023 at 10:48:27AM +0200, Albert Schwarzkopf wrote:
> The current behaviour treats semicolons the same as end of line.
> This breaks when they are found inside quoted strings, as is the
> case for PKCS#11 URIs for example.
> 
> Ignore newlines and semicolons in quotes when parsing commands.
> 
> Signed-off-by: Albert Schwarzkopf <a.schwarzkopf@phytec.de>
> ---
>  scripts/imx/imx.c | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/scripts/imx/imx.c b/scripts/imx/imx.c
> index 87560ad27d..fac0556308 100644
> --- a/scripts/imx/imx.c
> +++ b/scripts/imx/imx.c
> @@ -675,6 +675,7 @@ static char *readcmd(struct config_data *data, FILE *f)
>  	static char *buf;
>  	char *str;
>  	ssize_t ret;
> +	int inquotes = 0;
>  
>  	if (!buf) {
>  		buf = malloc(4096);
> @@ -689,8 +690,9 @@ static char *readcmd(struct config_data *data, FILE *f)
>  		ret = fread(str, 1, 1, f);
>  		if (!ret)
>  			return strlen(buf) ? buf : NULL;
> -
> -		if (*str == '\n' || *str == ';') {
> +		if (*str == '"') {
> +			inquotes = !inquotes;
> +		} else if ((*str == '\n' || *str == ';') && !inquotes) {
>  			*str = 0;
>  			return buf;
>  		}
> -- 
> 2.40.0
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


