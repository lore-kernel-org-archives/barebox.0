Delivery-date: Fri, 25 Jun 2021 10:15:43 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lwh03-0008Us-Hg
	for lore@lore.pengutronix.de; Fri, 25 Jun 2021 10:15:43 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lwh02-0002Un-3y
	for lore@pengutronix.de; Fri, 25 Jun 2021 10:15:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=V3Piabn/vOcNmYgQ5pPZSoDF/yexRxtiG3iHOJ4jFVw=; b=f6EA+DPP+JxqU0PbAxIKbCgZSz
	WsLDQwmCzTYa04oISER1FsIBmm1ea5ZA/caCe3pxW6xDESalc6ivc2Hn+d+zjq09soZ1I2x2RfR0Z
	INpaATNWCnhHJARElDj5LturVI/grWyxe3gqxgcvWDpyBEkKLEqLSoRq0VG8WCrbDryoF5ZsirWg6
	NoXc3qM0djELEL5BTXH3Yto6I9Pf+4hETh3+QSq+if8Tld7dy1G38jg8RCRd8IR8s9AlTqpxNk6vj
	9OdSKBC5Jq7DYhKG8RXD5NZxdL3JfeJXjk1ujvJNpImJjyBSSs7glJR+jrqstcXiUd8VhnJC8rVu9
	o715wJ3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lwgye-000FKx-6b; Fri, 25 Jun 2021 08:14:16 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lwgbW-0008OM-Ko
 for barebox@lists.infradead.org; Fri, 25 Jun 2021 07:50:27 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lwgbV-0006UB-2B; Fri, 25 Jun 2021 09:50:21 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lwgbU-00034Q-Or; Fri, 25 Jun 2021 09:50:20 +0200
Date: Fri, 25 Jun 2021 09:50:20 +0200
To: Yunus Bas <y.bas@phytec.de>
Cc: barebox@lists.infradead.org
Message-ID: <20210625075020.GE9782@pengutronix.de>
References: <20210624152810.3385526-1-y.bas@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210624152810.3385526-1-y.bas@phytec.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:44:05 up 127 days, 11:07, 118 users,  load average: 0.16, 0.29,
 0.25
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210625_005022_744120_1F75CCEC 
X-CRM114-Status: GOOD (  23.21  )
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
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] commands: of_property: Extend command usage on external
 dtb
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi,

On Thu, Jun 24, 2021 at 05:28:10PM +0200, Yunus Bas wrote:
> @@ -314,6 +320,9 @@ static int do_of_property(int argc, char *argv[])
>  		case 'f':
>  			fixup = 1;
>  			break;
> +		case 'e':
> +			dtbfile = optarg;
> +			break;
>  		default:
>  			return COMMAND_ERROR_USAGE;
>  		}
> @@ -327,8 +336,22 @@ static int do_of_property(int argc, char *argv[])
>  
>  	debug("path: %s propname: %s\n", path, propname);
>  
> +	if ( !(set || delete))
> +		return COMMAND_ERROR_USAGE;
> +
> +	if (dtbfile) {
> +		fdt = read_file(dtbfile, &size);
> +		if (!fdt) {
> +			printf("unable to read %s: %s\n", dtbfile, strerror(errno));

We have %m now as a shortcut for "%s", strerror(errno) and you could be
the first user ;)

> +	if (root && !fixup) {
> +		fdt = of_get_fixed_tree(root);
> +
> +		ret = write_file(dtbfile, fdt, fdt32_to_cpu(fdt->totalsize));
> +
> +		free(fdt);
>  	}

Are you sure you want to save the fixed tree? I would rather expect that
the saved tree has only the desired property changed.

>  
> -	return COMMAND_ERROR_USAGE;
> +out:
> +
> +	if (root)
> +		of_delete_node(root);
> +
> +	return ret;
>  }
>  
>  BAREBOX_CMD_HELP_START(of_property)
> @@ -373,6 +412,7 @@ BAREBOX_CMD_HELP_TEXT("Options:")
>  BAREBOX_CMD_HELP_OPT ("-s",  "set property to value")
>  BAREBOX_CMD_HELP_OPT ("-d",  "delete property")
>  BAREBOX_CMD_HELP_OPT ("-f",  "set/delete as a fixup (defer the action until booting)")
> +BAREBOX_CMD_HELP_OPT ("-e dtb",  "set/delete/fixup from external dtb")
>  BAREBOX_CMD_HELP_TEXT("")
>  BAREBOX_CMD_HELP_TEXT("Valid formats for values:")
>  BAREBOX_CMD_HELP_TEXT("<0x00112233 4 05> - an array of cells. cells not beginning with a digit are")
> @@ -384,8 +424,8 @@ BAREBOX_CMD_HELP_END
>  BAREBOX_CMD_START(of_property)
>  	.cmd		= do_of_property,
>  	BAREBOX_CMD_DESC("handle device tree properties")
> -	BAREBOX_CMD_OPTS("[-sd] [-f] NODE [PROPERTY] [VALUES]")
> +	BAREBOX_CMD_OPTS("[-sd] [-e] [-f] NODE [PROPERTY] [VALUES]")
>  	BAREBOX_CMD_GROUP(CMD_GRP_MISC)
> -	BAREBOX_CMD_COMPLETE(devicetree_complete)
> +	BAREBOX_CMD_COMPLETE(devicetree_file_complete)
>  	BAREBOX_CMD_HELP(cmd_of_property_help)
>  BAREBOX_CMD_END
> -- 
> 2.30.0
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

