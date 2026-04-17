Delivery-date: Fri, 17 Apr 2026 12:22:10 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wDgKw-00D9w0-1d
	for lore@lore.pengutronix.de;
	Fri, 17 Apr 2026 12:22:10 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wDgKv-0001zc-UB
	for lore@pengutronix.de; Fri, 17 Apr 2026 12:22:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ZF+PmVJDstEHFGdOdL5lb7jDikxKewbdNpgFm2K7knU=; b=01OcfLr1UrVbFARtptXMfeRqPr
	qIloEllZuZrLHwHWZu/wZ/jQZEZ16K9m3w8439PK8/NTIZQynfcknuK9rdWH/7XNsvTX/MH+A4Bm/
	sVPjlANOOVzdfQ5+o6x4uOBAHsiPFHYZh91gMOLzW8H/iJ2L/5iUHfbznDig/mJdpv1sV95idiqGF
	Sv1Oe2BXu0PKdqwAy6ukO7pD5wXYuG2oqlwvAPL8mdOwaDaQr60toCRcICq8NU9v8qkkWNe+4ouaP
	0VA3woZGuYz3R9baVjhIecoo2ttRzqU5pbrADfEgYyXnh+k5E+SAEsFGdvXYcME0vIIhgG/IQF0nX
	5SlawpKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDgKX-00000003trz-2vY9;
	Fri, 17 Apr 2026 10:21:45 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDgKU-00000003tre-3jYR
	for barebox@lists.infradead.org;
	Fri, 17 Apr 2026 10:21:44 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wDgKT-0001qB-9I; Fri, 17 Apr 2026 12:21:41 +0200
Message-ID: <7ad46afe-923f-4dfb-a87e-7453d00f205a@pengutronix.de>
Date: Fri, 17 Apr 2026 12:21:40 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
Cc: "Claude Opus 4.6" <noreply@anthropic.com>
References: <20260402-net-eth-do-udp-v1-0-af5d9fd6beec@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20260402-net-eth-do-udp-v1-0-af5d9fd6beec@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260417_032142_942551_862651A7 
X-CRM114-Status: GOOD (  15.51  )
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
Subject: Re: [PATCH 00/10] net: prevent buffer overflows in UDP packets
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Sascha,

On 4/2/26 8:36 AM, Sascha Hauer wrote:
> Our UDP handlers all use a UDP packets length without checking if it
> fits into the incoming ethernet frame. Create a net_eth_to_udp() helper
> which does the bounds checking and use it throughout the code.

Thanks for the fixes!

For the protocols, I'd probably have used a macro:

	struct ntp_packet *ntp;

	ntp = net_eth_to_udp_proto(pkt, len, struct ntp_packet, &udp);
	if (!ntp)
		return;

But that's just personal taste.

A number of places were passing frame length although they have advanced
the base pointer. They all seem fixed here, but there's may be potential
for breakage because of incorrect assumptions that no longer hold.

I guess we will see.

Thanks again,
Ahmad

> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
> Sascha Hauer (10):
>       net: add net_eth_to_udp() helper for validated UDP extraction
>       fs: tftp: use net_eth_to_udp() for packet parsing
>       net: dhcp: use net_eth_to_udp() for packet parsing
>       fs: nfs: use net_eth_to_udp() for packet parsing
>       net: dns: use net_eth_to_udp() for packet parsing
>       net: sntp: use net_eth_to_udp() for packet parsing
>       net: netconsole: use net_eth_to_udp() for packet parsing
>       net: fastboot: use net_eth_to_udp() for packet parsing
>       net: fastboot: stop using net_eth_to_udp_payload() for PACKET_SIZE
>       net: remove unused net_eth_to_udp{hdr,_payload,len}() helpers
> 
>  fs/nfs.c         | 11 +++++++----
>  fs/tftp.c        |  9 +++++----
>  include/net.h    | 21 +++++++--------------
>  net/dhcp.c       | 16 +++++++++-------
>  net/dns.c        |  9 ++++++---
>  net/fastboot.c   | 25 ++++++++++++++++---------
>  net/net.c        | 40 ++++++++++++++++++++++++++++++++++++++++
>  net/netconsole.c |  7 +++++--
>  net/sntp.c       | 14 +++++++++-----
>  9 files changed, 104 insertions(+), 48 deletions(-)
> ---
> base-commit: 0933e8f2ebf0d91dfcf177a4e4292b02921a53f1
> change-id: 20260402-net-eth-do-udp-327f4e65ddd5
> 
> Best regards,

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



