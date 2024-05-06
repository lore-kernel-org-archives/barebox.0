Delivery-date: Mon, 06 May 2024 08:34:07 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s3rvL-005e4S-0y
	for lore@lore.pengutronix.de;
	Mon, 06 May 2024 08:34:07 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s3rvK-0005VO-OR
	for lore@pengutronix.de; Mon, 06 May 2024 08:34:07 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=VrM3R1jSr1Xyp9o7S4Y3fCMmrq1eLq2vLhfcqqfuB0M=; b=L9RnHhUzD/Lxq3mcP8cE9olqoL
	GT2WV5Tp7d2Z6B12ziS2hzvW7qyhx72prxeoNs2ikTzVj4UnQFrL2JmNJVHgrqLxrgbos0NCfh77B
	pzhLFSzyCePLJmcLCv7815FL0kCxNqvh10GRPVZrCNjb0poiFNZ7gL/JI7kRY4opjqgUWWXtn6K3S
	3SZWFzOFjaog8C1juGBjFfnB0J0y9Tj85fWQBTi1Yc4EgpCoATVXa64YAAo7RHRrUjXF9wxJjdZfE
	edOHklsX0b81uns916Tg2+SmdsalWBZISHSk+1TctqmEP4cXy9Ti6EIQy0vsAyhMSTqErlLYvAS3B
	H5YAcKAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s3rur-00000006Jvw-3o4V;
	Mon, 06 May 2024 06:33:37 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s3rup-00000006JvS-02oj
	for barebox@lists.infradead.org;
	Mon, 06 May 2024 06:33:36 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1s3run-0005Mv-EB; Mon, 06 May 2024 08:33:33 +0200
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1s3run-00GDBm-14; Mon, 06 May 2024 08:33:33 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1s3rum-00EWws-32;
	Mon, 06 May 2024 08:33:32 +0200
Date: Mon, 6 May 2024 08:33:32 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, mfe@pengutronix.de
Message-ID: <Zjh5vPXOrbAf1nyG@pengutronix.de>
References: <20240503103230.1367842-1-a.fatoum@pengutronix.de>
 <20240503103230.1367842-2-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240503103230.1367842-2-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240505_233335_073271_965929F2 
X-CRM114-Status: GOOD (  17.66  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/3] ARM: layerscape: add helpful runtime warning when
 firmware is missing
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Fri, May 03, 2024 at 12:32:29PM +0200, Ahmad Fatoum wrote:
> Firmware compiled into barebox PBL is rarely optional, so even if
> CONFIG_MISSING_FIRMWARE_ERROR is disabled, barebox will not generate
> images with missing PBL firmware.
> 
> We can relax this for firmware compiled into barebox proper though: If
> the user disables CONFIG_MISSING_FIRMWARE_ERROR, just have the driver
> fail at runtime as not to break other boards in the same build that
> don't require the firmware.
> 
> Missing barebox proper firmware will be detectable as a 0-byte firmware
> blob in the follow-up commit, so prepare for that by printing an
> informative error message.

I changed the order of the first two patches to what this sentence
suggests.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


