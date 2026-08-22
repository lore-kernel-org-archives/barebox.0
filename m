Delivery-date: Sat, 22 Aug 2026 16:09:13 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wxmPI-00604Y-2r
	for lore@lore.pengutronix.de;
	Sat, 22 Aug 2026 16:09:13 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id ED4732018C1
	for <lore@pengutronix.de>; Sat, 22 Aug 2026 16:09:12 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=nVco8JVC;
	dkim=none ("invalid DKIM record") header.d=cetola.net header.s=default header.b="h/o9qvAr";
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wNZNHJXJQFPKO1q/w/jQ4sCijzplJzHFW2d2zWjzhzE=; b=nVco8JVC2eQYek
	iRsfDFaoQUIhZpwmVYSYiUQRVEFyiyPkVDfOhVHLiTRHSWBeqhYRiA0Ag3UeyCBfBq8YdFVZdHqVx
	Vf01dfsHO7bpwAXzr7xG89fYT740vcCUD3q2aKxm9vzXyGI+/bvtT3a+WFZQ5LPyMTItzFqWlkigL
	7ycpao35S5BQkml3pYMoIZXKUpma88zJ8HRd5t0l7rKN3RHR2YS5i3uRmhZ6BspQJLQDda5ni45iP
	JcTH2H1lHPYhMgjEuwfWP2gmlwCkTBzlH5aBQyTTjYMh43mTTNT1weo1C+hClN/ej4ecylW2W9F71
	ufWKA69m4nrbDHJuibDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wxmO5-0000000EZr0-05wB;
	Sat, 22 Aug 2026 14:07:57 +0000
Received: from omta038.useast.a.cloudfilter.net ([44.202.169.37])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wxmO2-0000000EZqF-3yRG
	for barebox@lists.infradead.org;
	Sat, 22 Aug 2026 14:07:56 +0000
Received: from eig-obgw-5007b.ext.cloudfilter.net ([10.0.29.167])
	by cmsmtp with ESMTPS
	id xlhQwpbnMJFmFxmO1wfxgx; Sat, 22 Aug 2026 14:07:53 +0000
Received: from box2192.bluehost.com ([50.87.253.143])
	by cmsmtp with ESMTPS
	id xmNzw03L3ukbsxmNzwQBx2; Sat, 22 Aug 2026 14:07:51 +0000
X-Authority-Analysis: v=2.4 cv=dcaA3WXe c=1 sm=1 tr=0 ts=6a89ad37
 a=j14/dPpTP3/5aO8YB4ELDw==:117 a=j14/dPpTP3/5aO8YB4ELDw==:17
 a=IkcTkHD0fZMA:10 a=Sv0fKeRqtYgA:10 a=jNmq5YGq058A:10 a=wTo936TsAAAA:8
 a=lrGZyPMByydXth9az_sA:9 a=QEXdDO2ut3YA:10 a=J3I8QpufI4RFOXkfet32:22
 a=dWMlSAZEh1Dptg_Be0X5:22
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=cetola.net;
	s=default; h=Cc:To:Message-Id:Content-Transfer-Encoding:Content-Type:
	MIME-Version:Subject:Date:From:Sender:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=wNZNHJXJQFPKO1q/w/jQ4sCijzplJzHFW2d2zWjzhzE=; b=h/o9qvArthP/ISFu7pNFVOTyML
	ojBKgypDWSj/+JNYkpAqWBTFF6SyTOIop5mB3AnnXu5THAz5dMrdSlipeJxb5WKfKcCDZu9THNecu
	456PSRsbD6P5loAemJXhZGS/T+pv6Ugrbc4JqZav6YOLG3SDiU7g9bi6MEsCplPa5y94=;
Received: from [71.238.14.13] (port=50974 helo=ishmael.local)
	by box2192.bluehost.com with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.99.5)
	(envelope-from <stephano@cetola.net>)
	id 1wxmNz-00000002uyj-0SDv;
	Sat, 22 Aug 2026 08:07:51 -0600
From: Stephano Cetola <stephano@cetola.net>
Date: Sat, 22 Aug 2026 07:07:45 -0700
Subject: [PATCH] spi: rockchip: restore bus_num alias lookup via dev->id
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260822-send-spi-rockchip-busnum-v1-1-bf9c183786e4@cetola.net>
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/yXMQQqDMBBA0avIrDvgBJXaq5QukjitU2kMGSOCe
 HfTdvkW/++gnIQVbtUOiVdRmUMBXSrwow0vRhmKwdSmq6+GUDkMqFEwzX7yo0R0WUP+oO0dEXV
 MjW2h5DHxU7bf+v74W7N7s1++PziOExr5V318AAAA
X-Change-ID: 20260821-send-spi-rockchip-busnum-a9b1116e14a5
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
X-Exim-ID: 1wxmNz-00000002uyj-0SDv
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: (ishmael.local) [71.238.14.13]:50974
X-Source-Auth: stephano@cetola.net
X-Email-Count: 5
X-Org: HG=bhshared;ORG=bluehost;
X-Source-Cap: Y2V0b2xhbmU7Y2V0b2xhbmU7Ym94MjE5Mi5ibHVlaG9zdC5jb20=
X-Local-Domain: yes
X-CMAE-Envelope: MS4xfEU427BRiC1pRW3xVJFM8fo4oZz4fqQi2rx1ENHPGiD22YQxQfhPKFbIr5HOogYT2dLNg2bMxqn9vjQ0TWk5notOZnfkTejraHO16pdp0wX0I+QATRRW
 lsT8IQvAlexVRcKclJl9Sqsb96W2ljZoOB+LCy4/UAKw40POfOUoHQB+M8OIj/H8I7cQzU6CAfgtHPKn04MBM5L+q+z0OyDFqZo=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260822_070755_062150_19D0C863 
X-CRM114-Status: UNSURE (   7.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.4 (/)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  ctlr->bus_num = pdev->id was commented out when this driver
    was ported from Linux (pdev doesn't exist in barebox's device model here,
    only dev - the port left this line unresolved rather than translat [...] 
 
 Content analysis details:   (-0.4 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  1.3 RCVD_IN_BL_SPAMCOP_NET RBL: Received via a relay in bl.spamcop.net
               [Blocked - see <https://www.spamcop.net/bl.shtml?44.202.169.37>]
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
X-Stat-Signature: txhcyho7kth15u3ngdde3x7k5s1a1ut6
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
X-Rspamd-Queue-Id: ED4732018C1

ctlr->bus_num = pdev->id was commented out when this driver was
ported from Linux (pdev doesn't exist in barebox's device model here,
only dev - the port left this line unresolved rather than translating
it). With bus_num left at its kzalloc default of 0,
spi_register_controller() only runs the alias lookup when bus_num < 0,
so it's skipped and every Rockchip SPI controller ends up on bus 0.

On RK3588S, spi@feb20000 returns the PMIC controller instead of
the intended gpio-spi RP2040 bus. The barebox spi command then does
a write+read through the Rockchip SPI driver, which programmes the
hardware in XFM_RO (RX-only) mode for the read phase. In that mode
dummy TXDR writes don't generate clock pulses, the RX FIFO never
fills, and rockchip_spi_pio's while(1) loop never exits -> boot hang.

Fixes: 1efba64ba04 ("spi: add rockchip spi controller support")
Signed-off-by: Stephano Cetola <stephano@cetola.net>
---
 drivers/spi/spi-rockchip.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/spi/spi-rockchip.c b/drivers/spi/spi-rockchip.c
index 1e81e9393f..b9f43fa4d6 100644
--- a/drivers/spi/spi-rockchip.c
+++ b/drivers/spi/spi-rockchip.c
@@ -514,7 +514,7 @@ static int rockchip_spi_probe(struct device *dev)
 		goto err_put_ctlr;
 	}
 
-//	ctlr->bus_num = pdev->id;
+	ctlr->bus_num = dev->id;
 //	ctlr->mode_bits = SPI_CPOL | SPI_CPHA | SPI_LOOP | SPI_LSB_FIRST;
 
 	/*

---
base-commit: 9bc1a26592a59919d2ee8c60c273d87d3d9f2e81
change-id: 20260821-send-spi-rockchip-busnum-a9b1116e14a5



