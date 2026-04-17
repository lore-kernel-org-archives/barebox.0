Delivery-date: Fri, 17 Apr 2026 12:17:49 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wDgGj-00D9ry-14
	for lore@lore.pengutronix.de;
	Fri, 17 Apr 2026 12:17:49 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wDgGi-0000kz-PZ
	for lore@pengutronix.de; Fri, 17 Apr 2026 12:17:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=TJxWRCmk8KslmmOdVlYor87n0Sk/lPuLs521asTVPZk=; b=yR3nDJ5yz3U6UtAO9hhPoPQbYH
	drhQP/JdiuP677SZjpL4xlx1ghX3dSSwFUwoO7NeRv7g4V5XvReN663u8saTh5budhvhmSUOCBFMd
	hceYtllSOIkOzIDVQuuJ8DE2/DZHxWxWvzBECzb+S4Z2BPHTYn6jxm4rcprL37nxd09joDL39l8cv
	ohLuHvhFwjhb+lrFigX/L2RYeqJLg51Ym0A7y0CUVdRwgMWDXGjwtH0kqEoFrkIiMq3lRjBlxRba6
	Qn6B0xqjBL6UehkNLJ3CzglGghZskQ6faZtb2zs/nvnY9DvgEzeb2Mhg8roJl7bUl3PPUIB85TF4v
	fQsrRwBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDgGK-00000003tZK-0siu;
	Fri, 17 Apr 2026 10:17:24 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDgGH-00000003tYn-24Pm
	for barebox@lists.infradead.org;
	Fri, 17 Apr 2026 10:17:22 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wDgGF-0000c1-PJ; Fri, 17 Apr 2026 12:17:19 +0200
Message-ID: <67bec643-f96e-49ea-a4e9-6cb4793d7600@pengutronix.de>
Date: Fri, 17 Apr 2026 12:17:19 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
Cc: "Claude Opus 4.6" <noreply@anthropic.com>
References: <20260402-net-eth-do-udp-v1-0-af5d9fd6beec@pengutronix.de>
 <20260402-net-eth-do-udp-v1-9-af5d9fd6beec@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260402-net-eth-do-udp-v1-9-af5d9fd6beec@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260417_031721_539450_32D0DB97 
X-CRM114-Status: GOOD (  17.20  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 09/10] net: fastboot: stop using net_eth_to_udp_payload()
 for PACKET_SIZE
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)



On 4/2/26 8:36 AM, Sascha Hauer wrote:
> The PACKET_SIZE macro used net_eth_to_udp_payload(0) as a trick to
> compute the combined ethernet + IP + UDP header size at compile time.
> Replace this with an explicit constant, removing the last user of the
> old helpers outside of the header itself.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> Co-Authored-By: Claude Opus 4.6 <noreply@anthropic.com>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  net/fastboot.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/net/fastboot.c b/net/fastboot.c
> index 506af00cb8..b1cb8c8bf6 100644
> --- a/net/fastboot.c
> +++ b/net/fastboot.c
> @@ -23,8 +23,8 @@
>  
>  #define FASTBOOT_PORT 5554
>  #define MAX_MTU 1500
> -#define PACKET_SIZE (min(PKTSIZE, MAX_MTU + ETHER_HDR_SIZE) \
> -		      - (net_eth_to_udp_payload(0) - (char *)0))
> +#define NET_UDP_HDR_SIZE (ETHER_HDR_SIZE + sizeof(struct iphdr) + sizeof(struct udphdr))
> +#define PACKET_SIZE (min(PKTSIZE, MAX_MTU + ETHER_HDR_SIZE) - NET_UDP_HDR_SIZE)
>  
>  enum {
>  	FASTBOOT_ERROR = 0,
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



