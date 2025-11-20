Delivery-date: Thu, 20 Nov 2025 08:36:59 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vLzDv-002vtd-08
	for lore@lore.pengutronix.de;
	Thu, 20 Nov 2025 08:36:59 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vLzDu-0005DX-H0
	for lore@pengutronix.de; Thu, 20 Nov 2025 08:36:58 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=EbOD8j0hnD3+rSPCXAfrJgYHNBPWRrTmlc3G5LUUFKQ=; b=FIpZ8wwA0+esXkrEhI3tDjT+2d
	RahPcykLVFzqeRmRCsJ95PDeM1D403r9O1k1u3SPmL7tRqiV4qjANJKXRVSvp6HMPGnKsZvClrvsn
	l/MZfsBig1jAMXm1RuJq9IJAIvp17ruBcBK2ROOjeH4kv5poQ9XeuAUwpq6tlU7ykRDmSRbKTD3jF
	FYqSrRVlqrwIh7jqMQ4BExad4lUOHZb7yS4l5zpFP7psUSZ2NDstimm7xBmRy5Jh/6084oGKxM2cZ
	q99WXxBFATDOx4iwlxKJUNO4/FMFcrt/W2VM5JisktyoaLhz1MRLnj3ZcEgpAzEflB+10nh0pI71h
	ke20+1AA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLzDS-00000006Irc-0mTO;
	Thu, 20 Nov 2025 07:36:30 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLzDP-00000006IrC-1eGk
	for barebox@lists.infradead.org;
	Thu, 20 Nov 2025 07:36:28 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1vLzDL-00059Q-NR; Thu, 20 Nov 2025 08:36:23 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vLzDL-001NhD-1j;
	Thu, 20 Nov 2025 08:36:23 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vLzDL-00DtjW-1P;
	Thu, 20 Nov 2025 08:36:23 +0100
Date: Thu, 20 Nov 2025 08:36:23 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <aR7E9xMyExtL9XQU@pengutronix.de>
References: <20250320052019.1726331-1-a.fatoum@pengutronix.de>
 <20250320052019.1726331-6-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250320052019.1726331-6-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251119_233627_582266_DFC147B3 
X-CRM114-Status: GOOD (  16.44  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 5/6] commands: add new truncate command
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Ahmad,

On Thu, Mar 20, 2025 at 06:20:18AM +0100, Ahmad Fatoum wrote:
> +		case 's':
> +			size_str = optarg;
> +			if (!size_str)
> +				return COMMAND_ERROR_USAGE;
> +			switch (*size_str) {
> +			case '+':
> +				modify = 1;
> +				size_str++;
> +				break;
> +			case '-':
> +				return COMMAND_ERROR_USAGE;
> +			}
> +			size = strtoull_suffix(size_str, NULL, 10);
> +			break;

...

> +		if (modify) {
> +			struct stat st;
> +
> +			if (fstat(fd, &st) == -1) {
> +				perror("fstat");
> +				ret = 1;
> +				goto close;
> +			}
> +
> +			size = st.st_size + modify * size;

You have taken 'modify' into account here, likely to be able to set it
to -1 in order to decrease the size. Any particular reason you haven't
implemented it?

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


