Delivery-date: Thu, 04 Apr 2024 21:50:40 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rsT6e-00Ajbm-0l
	for lore@lore.pengutronix.de;
	Thu, 04 Apr 2024 21:50:40 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rsT6d-0002v2-M2
	for lore@pengutronix.de; Thu, 04 Apr 2024 21:50:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:References:To:From:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=pC/X3hhCB9Ctn9LLCDQ4iKbPq1JkzvOY1avc1/dMM0Q=; b=crcAWpb7rZSIoR6+zhDxhqrDSB
	bqo4ts6qRl77pHKCv7gWpT/uiOIhnIyzFHh5AHU/k4N4IkvEoGNYCcYTDIOFZ5Bpv7ALASqtCYezH
	+Wa+lOY4O6V3Gr1t34PY6ccmj2MdXJhKkaqydlDg168x/C2d3jWPVHg41v5xiQR9O9Lm1GXC/VXlG
	VAUtvs89gcWPM9+mgQOBB/UNoH+Pvsu5GPrNFg7cTEg/ni0YgcRg13SkwuMpgTmTrempZDaYWnDl9
	Vbs6c1XIhZ1ZNCa2VypB+rRNShsfvnRYR00hJHyvNySWhy7RRDao9r8bS0OoAittkeYzINePxz2wi
	h+GF7qSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsT66-0000000474W-3HfE;
	Thu, 04 Apr 2024 19:50:06 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsT60-0000000472x-0Pny
	for barebox@lists.infradead.org;
	Thu, 04 Apr 2024 19:50:01 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rsT5t-0001wu-7m
	for barebox@lists.infradead.org; Thu, 04 Apr 2024 21:49:53 +0200
Message-ID: <e6043e94-1b47-48a7-82e8-5ceafda0a40f@pengutronix.de>
Date: Thu, 4 Apr 2024 21:49:52 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
References: <20240404184001.1532897-1-a.fatoum@pengutronix.de>
In-Reply-To: <20240404184001.1532897-1-a.fatoum@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240404_125000_172768_A6B7EF34 
X-CRM114-Status: GOOD (  13.98  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 00/10] net: fix problems handling trailing bytes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 04.04.24 20:39, Ahmad Fatoum wrote:
> This started by pinging a Raspberry Pi 3b running barebox sitting behind
> a router employing conntrack. The router discarded the ping responses
> due to the wrong ICMP checksum and these issues do not pop up normally
> because the ping command itself doesn't bother to verify the checksum.

Fix for iputils ping(1) here: https://github.com/iputils/iputils/pull/534

> 
> This unearthed issues in two drivers as well as the barebox network
> stack itself.
> 
> See the commit messages for details.
> 
> Ahmad Fatoum (10):
>   net: free packets with net_free_packet
>   net: ip: don't blindly trust driver supplied frame size
>   net: icmp: don't blindly trust driver supplied frame size
>   net: icmp: properly set IP TTL and fragement fields
>   net: icmp: don't overrun buffer on send
>   net: cpsw: report correct frame size to network stack
>   net: usb: smsc95xx: don't opencode get/put_aligned_le32
>   net: usb: smsc95xx: don't blindly trust hardware size
>   net: usb: smsc95xx: fix handling of multiple packets per urb
>   net: usb: smsc95xx: disable HW checksumming in driver
> 
>  drivers/net/cpsw.c         |  7 +++-
>  drivers/net/usb/smsc95xx.c | 68 ++++++++++++++++----------------------
>  net/net.c                  | 64 +++++++++++++++++++++++++++++------
>  3 files changed, 88 insertions(+), 51 deletions(-)
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



