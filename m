Delivery-date: Sat, 22 Aug 2026 16:09:06 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wxmPB-00603S-0u
	for lore@lore.pengutronix.de;
	Sat, 22 Aug 2026 16:09:06 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 7E174201BD1
	for <lore@pengutronix.de>; Sat, 22 Aug 2026 16:09:05 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=RAhEejRK;
	dkim=none ("invalid DKIM record") header.d=cetola.net header.s=default header.b=LHP8uqeb;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=eZo4Nc2Wp9GPuBVLzDQqvJl1bBbi52pogzOYJc7KU7k=; b=RAhEejRKbd74fO
	ji7+E84AhjEnMHZDAZpzNrsjrDPUlA0MAXymQVU1C1u68QH2k1u2uc1Iba6mew9ezPWaYqQ7pbu21
	DTvnPXaC01lUj4XqsWFL9EYJ7CHwjI3vciUYpR2TheEouPJQzAWTdzSS7f78wV5lQRzS1bMHzpxr8
	vvx8RIg/mEqlW/Bb1YVF51nXBLCAkGF31rUuZ+k51Rp14dzWg4ukU+cuo5Pb3l4vuY4FpQsuK/8W3
	dLkyRuS1qcKXYtLEukVRg9azEJiXFaO0qBiBxmTQ7HBW2eOVyAovxBsi8NoRpvHwIPUMqypRfhOZU
	n66TzVnuqlcUu/lbfPvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wxmNn-0000000EZo5-3W1V;
	Sat, 22 Aug 2026 14:07:39 +0000
Received: from omta036.useast.a.cloudfilter.net ([44.202.169.35])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wxmNi-0000000EZmn-0RDd
	for barebox@lists.infradead.org;
	Sat, 22 Aug 2026 14:07:39 +0000
Received: from eig-obgw-6006b.ext.cloudfilter.net ([10.0.30.211])
	by cmsmtp with ESMTPS
	id xULFwkfT5LvgbxmNfwGulo; Sat, 22 Aug 2026 14:07:31 +0000
Received: from box2192.bluehost.com ([50.87.253.143])
	by cmsmtp with ESMTPS
	id xmNdwzSyEmlNQxmNewNZFl; Sat, 22 Aug 2026 14:07:30 +0000
X-Authority-Analysis: v=2.4 cv=GMwIEvNK c=1 sm=1 tr=0 ts=6a89ad22
 a=j14/dPpTP3/5aO8YB4ELDw==:117 a=j14/dPpTP3/5aO8YB4ELDw==:17
 a=IkcTkHD0fZMA:10 a=Sv0fKeRqtYgA:10 a=jNmq5YGq058A:10 a=wTo936TsAAAA:8
 a=KZl6PYHxsAttpYQr21gA:9 a=QEXdDO2ut3YA:10 a=J3I8QpufI4RFOXkfet32:22
 a=dWMlSAZEh1Dptg_Be0X5:22
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=cetola.net;
	s=default; h=Cc:To:Message-Id:Content-Transfer-Encoding:Content-Type:
	MIME-Version:Subject:Date:From:Sender:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=eZo4Nc2Wp9GPuBVLzDQqvJl1bBbi52pogzOYJc7KU7k=; b=LHP8uqebu85PBOGHAZfDW7mGbs
	3pEBJdtq8siYchI0KYreXeye9CgzasYAdXKt4x+7aeBn8JPpMrOWj9Ss27PXZJ3RPutn5QsMlZV3W
	mQFxqWrogIx+vqRrJQP6bzgQYjKbSsqZoP/nAbujrN68/O8Wq/nwJjnZshlml5KtcZV8=;
Received: from [71.238.14.13] (port=33612 helo=ishmael.local)
	by box2192.bluehost.com with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.99.5)
	(envelope-from <stephano@cetola.net>)
	id 1wxmNd-00000002uPj-1LeW;
	Sat, 22 Aug 2026 08:07:29 -0600
From: Stephano Cetola <stephano@cetola.net>
Date: Sat, 22 Aug 2026 07:06:47 -0700
Subject: [PATCH] ARM: mmu: fix flush_cacheable_pages off-by-one touching
 guard page
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260822-send-mmu-flush-guard-v1-1-0a8c8f664b08@cetola.net>
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/yXMQQqDMBBA0avIrB0wUUr1KuIiMROdUqNkTCmId
 2+qy7f4/wChyCTQFQdE+rDwGjJUWcA4mzARsssGXelH9dQKhYLDZUno30lmnJKJDr2jtm2Msk1
 dQ063SJ6/17YfbkuyLxr3/wvO8wcOYmefeAAAAA==
X-Change-ID: 20260821-send-mmu-flush-guard-fde994a1b433
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.15.2
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - box2192.bluehost.com
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - cetola.net
X-BWhitelist: no
X-Source-IP: 71.238.14.13
X-Source-L: No
X-Exim-ID: 1wxmNd-00000002uPj-1LeW
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: (ishmael.local) [71.238.14.13]:33612
X-Source-Auth: stephano@cetola.net
X-Email-Count: 2
X-Org: HG=bhshared;ORG=bluehost;
X-Source-Cap: Y2V0b2xhbmU7Y2V0b2xhbmU7Ym94MjE5Mi5ibHVlaG9zdC5jb20=
X-Local-Domain: yes
X-CMAE-Envelope: MS4xfAY2UodwU3wbFMJNQJ0q24XrG3iya9v+Ng9KAQUbFD+V/KM/099KI8mRY3gsPz9wW0e+LihbXvsCWbNXljXVg4YO0lP0EQArlrT7DFYkisGOV++sWl94
 hJ6GPSgmkts8MzRK8lBaB6XUQQKf5pzbblf9PXamuYUWd/3PXJ5L9bbugYLbq4zpVoS/aFPYdY/53DSjJk/slo74YxeeSx5zhY8=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260822_070734_374670_9746F389 
X-CRM114-Status: GOOD (  11.24  )
X-Spam-Score: -0.4 (/)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  flush_cacheable_pages() accumulates contiguous cacheable page
    ranges and tracks flush_end as the exclusive end of each range: the address
    of the first page BEYOND the last cacheable block, which equal [...] 
 
 Content analysis details:   (-0.4 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  1.3 RCVD_IN_BL_SPAMCOP_NET RBL: Received via a relay in bl.spamcop.net
               [Blocked - see <https://www.spamcop.net/bl.shtml?44.202.169.35>]
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
X-Stat-Signature: k468htrfbiuusdt34kgqcktb9xb6q5be
X-Spamd-Result: default: False [-7.41 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_NA(0.00)[cetola.net];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	FORGED_SENDER_FORWARDING(0.00)[];
	DKIM_MIXED(0.00)[];
	FORGED_SENDER(0.00)[stephano@cetola.net,barebox-bounces@lists.infradead.org];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	R_DKIM_PERMFAIL(0.00)[cetola.net:s=default];
	TO_DN_ALL(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[stephano@cetola.net,barebox-bounces@lists.infradead.org];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROM(0.00)[];
	RECEIVED_SPAMHAUS_PBL(0.00)[71.238.14.13:received];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	HAS_X_SOURCE(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ARC_NA(0.00)[];
	HAS_X_ANTIABUSE(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,cetola.net:~]
X-Rspamd-Queue-Id: 7E174201BD1

flush_cacheable_pages() accumulates contiguous cacheable page ranges and
tracks flush_end as the exclusive end of each range: the address of the
first page BEYOND the last cacheable block, which equals the start
address of the next block. The flush_end == addr extension test relies
on this invariant holding everywhere flush_end is assigned.

Two places break the invariant.

First: when a non-cacheable page (e.g. the stack guard page) creates a
gap in the middle of a flush region followed by more cacheable pages,
dma_flush_range_end(flush_start, flush_end) is called just before
starting a new range.

Second: flush_end is clamped against region_end via
min(flush_end + block_size, region_end), in both the range-extension
branch and right after starting a new range. region_end is computed as
PAGE_ALIGN(region_start + size) - 1, an inclusive last-address value.

Fix both by keeping flush_end consistently exclusive: clamp against
region_end + 1 (not region_end) at both extension sites, and subtract
1 to convert to the inclusive end dma_flush_range_end expects at both
call sites.

Observed on RK3588S (Radxa CM5) during boot-from NVMe bring-up.

Fixes: 04bfef82e33e ("ARM: mmu64: fix benign off-by-one in flush_cacheable_pages")
Signed-off-by: Stephano Cetola <stephano@cetola.net>
---
 arch/arm/cpu/flush_cacheable_pages.h | 17 +++++++----------
 1 file changed, 7 insertions(+), 10 deletions(-)

diff --git a/arch/arm/cpu/flush_cacheable_pages.h b/arch/arm/cpu/flush_cacheable_pages.h
index a5c54864d4..25990282ca 100644
--- a/arch/arm/cpu/flush_cacheable_pages.h
+++ b/arch/arm/cpu/flush_cacheable_pages.h
@@ -55,26 +55,23 @@ static void flush_cacheable_pages(void *start, size_t size)
 
 		if (flush_end == addr) {
 			/*
-			 * While it's safe to flush the whole block_size,
-			 * it's unnecessary time waste to go beyond region_end.
+			 * region_end is inclusive, flush_end exclusive:
+			 * clamp to region_end + 1.
 			 */
-			flush_end = min(flush_end + block_size, region_end);
+			flush_end = min(flush_end + block_size, region_end + 1);
 			continue;
 		}
 
-		/*
-		 * We don't have a previous contiguous flush area to append to.
-		 * If we recorded any area before, let's flush it now
-		 */
+		/* flush_end is exclusive; dma_flush_range_end() wants an inclusive end. */
 		if (flush_start != ~0UL)
-			dma_flush_range_end(flush_start, flush_end);
+			dma_flush_range_end(flush_start, flush_end - 1);
 
 		/* and start the new contiguous flush area with this page */
 		flush_start = addr;
-		flush_end = min(flush_start + block_size, region_end);
+		flush_end = min(flush_start + block_size, region_end + 1);
 	}
 
 	/* The previous loop won't flush the last cached range, so do it here */
 	if (flush_start != ~0UL)
-		dma_flush_range_end(flush_start, flush_end);
+		dma_flush_range_end(flush_start, flush_end - 1);
 }

---
base-commit: 9bc1a26592a59919d2ee8c60c273d87d3d9f2e81
change-id: 20260821-send-mmu-flush-guard-fde994a1b433



