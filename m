Delivery-date: Mon, 24 Aug 2026 17:32:55 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wyWfO-006kI2-2W
	for lore@lore.pengutronix.de;
	Mon, 24 Aug 2026 17:32:55 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 49B37201AD4
	for <lore@pengutronix.de>; Mon, 24 Aug 2026 17:32:51 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b="rNJ1K/Q3";
	dkim=none ("invalid DKIM record") header.d=cetola.net header.s=default header.b=fpxkb6fr;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2EoWR1BH86kjYeFDGXhfb6ZAaKYQFxdbO4BRFy+og9Y=; b=rNJ1K/Q39sbUREro6krF8AMz3K
	iEm+7Zq/O4Bsid4QL1ASIBusbnFmseADU2P2NFUxK2y48LB/Q3j8I8WU83jbI4LzpFy5QVkXas5QM
	GfPbTLlWBuIZOA/KOSL4zrxUVxEVR6Ag14XHGZxfIzpvId0sZ7DlJvPDrQHnWooiZgeabBdETZoPq
	w7gotb3USqdiVQVSnCVKQsdTs109aBpawlMxkjDIIuVcV/9l2+x1h45znZ1+wkprm2XEV9B01miqi
	m0Gu8O3BGIpfe65JQ0O1lsmi3PU9beYgOrQzbEBhu645SigPxzGBr5cVu3pAjDAPNwW2HDPRBfJLc
	EkE+ExOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyWdt-0000000GvuT-0Vcq;
	Mon, 24 Aug 2026 15:31:21 +0000
Received: from omta40.uswest2.a.cloudfilter.net ([35.89.44.39])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyWdp-0000000Gvtu-46WW
	for barebox@lists.infradead.org;
	Mon, 24 Aug 2026 15:31:20 +0000
Received: from eig-obgw-6001b.ext.cloudfilter.net ([10.0.30.143])
	by cmsmtp with ESMTPS
	id yV24wqtNkhJKMyWddwh7Tb; Mon, 24 Aug 2026 15:31:05 +0000
Received: from box2192.bluehost.com ([50.87.253.143])
	by cmsmtp with ESMTPS
	id yWdbwJKYkCitMyWdbwVgyb; Mon, 24 Aug 2026 15:31:03 +0000
X-Authority-Analysis: v=2.4 cv=UKfdHDfy c=1 sm=1 tr=0 ts=6a8c63b7
 a=j14/dPpTP3/5aO8YB4ELDw==:117 a=j14/dPpTP3/5aO8YB4ELDw==:17
 a=IkcTkHD0fZMA:10 a=Sv0fKeRqtYgA:10 a=jNmq5YGq058A:10
 a=GlNaT_mza0YR6DpcnbcA:9 a=QEXdDO2ut3YA:10 a=dWMlSAZEh1Dptg_Be0X5:22
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=cetola.net;
	s=default; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
	References:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=2EoWR1BH86kjYeFDGXhfb6ZAaKYQFxdbO4BRFy+og9Y=; b=fpxkb6frmKf7fe9brRH7YXeJ1B
	HcrIV97Fzl/UqWXTA8w8x2LOZGR9f06RnTu1yIVKA8ks/yqRiyRHCSY+VZT8+qOc6yCj8AIcf0KP0
	RjEBEKtWJHoNKA4pGZAQhT0lWcHXhKUQ7dqD5PSO+zgOFNlLpF+nwxTd3fgicJCPKOzQ=;
Received: from [71.238.14.13] (port=63162 helo=[192.168.1.145])
	by box2192.bluehost.com with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.99.5)
	(envelope-from <stephano@cetola.net>)
	id 1wyWda-00000000Moq-2i9w;
	Mon, 24 Aug 2026 09:31:02 -0600
Message-ID: <bc3c0e72-788c-41e2-a3c1-6c1b09ae3e04@cetola.net>
Date: Mon, 24 Aug 2026 08:30:58 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] ARM: mmu: fix flush_cacheable_pages off-by-one touching
 guard page
To: Ahmad Fatoum <a.fatoum@pengutronix.de>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 "open list:BAREBOX" <barebox@lists.infradead.org>
References: <20260822-send-mmu-flush-guard-v1-1-0a8c8f664b08@cetola.net>
 <66e33b76-4121-4c1c-8a2d-8b6d74e3d3d4@pengutronix.de>
Content-Language: en-US
From: Stephano Cetola <stephano@cetola.net>
In-Reply-To: <66e33b76-4121-4c1c-8a2d-8b6d74e3d3d4@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - box2192.bluehost.com
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - cetola.net
X-BWhitelist: no
X-Source-IP: 71.238.14.13
X-Source-L: No
X-Exim-ID: 1wyWda-00000000Moq-2i9w
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: ([192.168.1.145]) [71.238.14.13]:63162
X-Source-Auth: stephano@cetola.net
X-Email-Count: 1
X-Org: HG=bhshared;ORG=bluehost;
X-Source-Cap: Y2V0b2xhbmU7Y2V0b2xhbmU7Ym94MjE5Mi5ibHVlaG9zdC5jb20=
X-Local-Domain: yes
X-CMAE-Envelope: MS4xfHg9BGQagI76mAoRo6wBZNQICNDDoW4+juGubIon23RXWXGcwYmwCuF7QXii4EB8ebe71ea834PwehirMyjrWHdLsvlDNr+drA2//stWSMUl2S64N4wR
 JmvKCwC3Tb9SPl5a8cyxYXOMjTpuclus8bRcdw2vJQIA6VO5PNxhUi/h7HHrlyxVX9Cgbud8zo9MhZjLF468l3lzkySeErpdLu4=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260824_083118_200885_C34BBD3A 
X-CRM114-Status: UNSURE (   8.41  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.4 (/)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On 8/24/26 6:27 AM, Ahmad Fatoum wrote: > Hello Stephano,
    > > Thanks for your patch! Thank you for encouraging me to upstream. :) 
 
 Content analysis details:   (-0.4 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
                             trust
                             [35.89.44.39 listed in list.dnswl.org]
  1.3 RCVD_IN_BL_SPAMCOP_NET RBL: Received via a relay in bl.spamcop.net
                 [Blocked - see <https://www.spamcop.net/bl.shtml?35.89.44.39>]
  0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [35.89.44.39 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
  0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 DMARC_MISSING          Missing DMARC policy
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
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: qbfbt6pir7ijmar7ggusjfzmaxqigdn5
X-Spamd-Result: default: False [-7.03 / 15.00];
	BAYES_HAM(-2.62)[98.32%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_NA(0.00)[cetola.net];
	DKIM_MIXED(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[stephano@cetola.net,barebox-bounces@lists.infradead.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	R_DKIM_PERMFAIL(0.00)[cetola.net:s=default];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	TO_DN_ALL(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[stephano@cetola.net,barebox-bounces@lists.infradead.org];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	HAS_X_SOURCE(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_IN_DNSWL_NONE(0.00)[35.89.44.39:received];
	HAS_X_ANTIABUSE(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,cetola.net:~]
X-Rspamd-Queue-Id: 49B37201AD4



On 8/24/26 6:27 AM, Ahmad Fatoum wrote:
> Hello Stephano,
> 
> Thanks for your patch!

Thank you for encouraging me to upstream. :)

> 
> I agree there is a bug here, but making flush_end exclusive doesn't
> sound like the best remedy to me, exactly because these + 1's and - 1's
> are so error-prone.

Ah okay, this makes sense now.

> 
> Also it seems the code has problems if a cached region reaches the end
> of address space, which can happen on some 32-bit ARM SoCs, like the i.MX6Q.
> 
> I am working on a revised patch that I will share within the week.
> 

Excellent. I will test your fix on the Radxa CM5 RK3588S2. Let me know
if there's anything else I can do to help here.

Cheers,
Stephano


