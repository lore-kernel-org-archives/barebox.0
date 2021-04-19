Delivery-date: Mon, 19 Apr 2021 09:15:45 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lYO8H-00069o-Db
	for lore@lore.pengutronix.de; Mon, 19 Apr 2021 09:15:45 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lYO8G-0006xl-IH
	for lore@pengutronix.de; Mon, 19 Apr 2021 09:15:45 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Ai7dVTj04b0B2zQDEeVGQjgM0WqGa9aAVO/kuYSRiqs=; b=RDwFwb7GU1Heo+tZ8ddPLfzMr
	4mYCo1T3oo7mrXJowGHdbsOrWXy/W8UTrBD6s5UkJAf3X4WBPwfYi13z2Tqj2zlBTMsYS4jSZNGW5
	TmzTGZFgaVNWRJ+oLew0uMyZUqvDVmRtdN2hy2wjqFWqSYhWvXibonqXsx4eBdSa+9/G40ReI+g4I
	rl3zXI/3qW3OmRDyP3rzRuaMFqBC6VGtFwHX/tsm+TCjpcRJJf8rvD5JZ45Kpb/2ZyZjwruvb1ukf
	BprGSXNDWNF2y9YtR7m2lNcGVmKwWbQKW+opn0FvJs3/BGtEbKi24Un0nE+BkTjg3pi6KXUiobuyj
	TVRIb41pA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lYO5T-009Ic7-Je; Mon, 19 Apr 2021 07:12:51 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lYO5O-009Ibl-0b
 for barebox@desiato.infradead.org; Mon, 19 Apr 2021 07:12:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:
 Subject:Sender:Reply-To:Cc:Content-ID:Content-Description;
 bh=+5kS5NJXKSgEUnQkASU2TEg7zChxNDM7c41BOKDjzio=; b=QRPjcXfqBMpbXM+QCwEQb+q2b/
 XgtafJu3X5pRxf9AquXt+17yCxfiaxZnxdoVSYzr//G/xD2XczXQPMnY2e607TiLWhm+ec8ngTDdf
 G2X/6NSsUI1uKHD+LiZ4incSbvrdG74Qhe4ZmigT6kvyxaWkOZQMeprjR6b5tZBHB3Ny7uqttqqzC
 I39/wa4O0Przd6l79OwCoWZ63fmhLDw9v1VhkuBRCEUpnFk5It7Byf/vnNdxE3tgUqeiVCZqbkMJh
 tVnU7+Hpu/U33Mv7yvPYL2uatGKmCIcPD0EZTFkAVr8wYR2lEIZMy16xbg47hjwJVwwXjKQz3ett/
 JQn9yI+Q==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lYO5I-00B6yF-TB
 for barebox@lists.infradead.org; Mon, 19 Apr 2021 07:12:44 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1lYO5F-0006dK-I6; Mon, 19 Apr 2021 09:12:37 +0200
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <20210416094943.3648-1-s.hauer@pengutronix.de>
 <20210416094943.3648-18-s.hauer@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <62d9fd38-fa11-446d-1aee-2165a55f0fd5@pengutronix.de>
Date: Mon, 19 Apr 2021 09:12:37 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <20210416094943.3648-18-s.hauer@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210419_001240_964052_26203B94 
X-CRM114-Status: GOOD (  14.12  )
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
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 17/17] ARM: i.MX Phytec physom: Add deep-probe support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi,

On 16.04.21 11:49, Sascha Hauer wrote:
> +BAREBOX_DEEP_PROBE_ENABLE("phytec,imx6q-pfla02");
> +BAREBOX_DEEP_PROBE_ENABLE("phytec,imx6dl-pfla02");
> +BAREBOX_DEEP_PROBE_ENABLE("phytec,imx6s-pfla02");
> +BAREBOX_DEEP_PROBE_ENABLE("phytec,imx6q-pcaaxl3");
> +BAREBOX_DEEP_PROBE_ENABLE("phytec,imx6q-pcm058-nand");
> +BAREBOX_DEEP_PROBE_ENABLE("phytec,imx6q-pcm058-emmc");
> +BAREBOX_DEEP_PROBE_ENABLE("phytec,imx6dl-pcm058-nand");
> +BAREBOX_DEEP_PROBE_ENABLE("phytec,imx6qp-pcm058-nand");
> +BAREBOX_DEEP_PROBE_ENABLE("phytec,imx6dl-pcm058-emmc");
> +BAREBOX_DEEP_PROBE_ENABLE("phytec,imx6ul-pcl063-nand");
> +BAREBOX_DEEP_PROBE_ENABLE("phytec,imx6ul-pcl063-emmc");

How about changing BAREBOX_DEEP_PROBE_ENABLE so BAREBOX_DEEP_PROBE_ENABLE(physom_imx6_match);
works? Updated boards should be using board drivers anyway, so make it easier for them to
enable deep probe.

I'd go even further and require board drivers by having it take a driver_d * as argument
and introduce deep_probe_board_driver() that expands to postcore_platform_driver and
BAREBOX_DEEP_PROBE_ENABLE.

This would prevent having a board driver that's deep probe incompatible in the
first place, because it will likely not find the resources it requires that early
if it doesn't deep probe.

Cheers,
Ahmad

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

