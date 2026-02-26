Delivery-date: Thu, 26 Feb 2026 13:02:45 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vva4q-005s9f-1D
	for lore@lore.pengutronix.de;
	Thu, 26 Feb 2026 13:02:45 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vva4q-0004sR-OA
	for lore@pengutronix.de; Thu, 26 Feb 2026 13:02:45 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gZYigp61yXwOl6LVlIBq4hTV30CSFuDT/krIvHf9W5I=; b=yV4DYkZiYvXIKl6iIAuHhv6XVy
	KQPCVmnueZt7hJ2VtGND2VRWuwA9eQ/UxFsisVipVKyetFaNjpVsaT8jgnd7gYb4rxXUWgyp/pnS5
	fgzrNAqiYph7KfvdKqSCKOdBlcvSaU62QMVKo+A90OrF6h3sMl2fkt5+upl0lKpdHMWcMRf78lsEf
	75v6cJsj9BWu2D0OoWat0Ri5UvSTPZQVIK6WjO4ie9ctHWGu7ajiHNk7L7sDhxLtBn60nGiAQo7IA
	yY9j0028oNG6A7Q8VgGlHZEtNNJtbWspHjlYrfFl7O+LpzBmNMrMc31QU0zbW8mnxCQHgOy9cMiO5
	He6L77HQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vva4R-000000065Gn-47WX;
	Thu, 26 Feb 2026 12:02:20 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vva4R-000000065GM-1W4Y
	for barebox@bombadil.infradead.org;
	Thu, 26 Feb 2026 12:02:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=gZYigp61yXwOl6LVlIBq4hTV30CSFuDT/krIvHf9W5I=; b=MMq6PEop0KWX5H5WaXlqv5QTAx
	C7CKCAA1UObJxllG/fpRLWRz+BWtVNLRKMRyVl86AfLUDKFKi0jgv3g9wL3cRsU8DMWk7WwGpGVkF
	MJJxIdXhVdDQDzrMxe6lGf8mHFWz4ge6Qy/EsdkeEmlFIr0N693ZCy4kj3ZMg9OCcU9d5doZIq+k8
	XWnMCAshkQHQ3JOXxXVGvwS9cktyQsL18akPgsuQNh9lk+qx1b5WztuvSUr2DNbXN0XKAg4244eJt
	00m3LBT+9hr0p2nsD/JZV+kSn8Yw20jnQAOlXGU4DhI08k57w+oPAOGvDnsnhY2SKwh5Ff3/8jaB9
	4IwVQgwA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vva4N-0000000AuNo-3JLC
	for barebox@lists.infradead.org;
	Thu, 26 Feb 2026 12:02:18 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vva4N-0004eS-ED; Thu, 26 Feb 2026 13:02:15 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vva4L-002iuK-2q;
	Thu, 26 Feb 2026 13:02:15 +0100
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vva4N-00000007vIg-0iKD;
	Thu, 26 Feb 2026 13:02:15 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
Cc: Michael Tretter <m.tretter@pengutronix.de>
In-Reply-To: <20260226085034.1201683-1-s.hauer@pengutronix.de>
References: <20260226085034.1201683-1-s.hauer@pengutronix.de>
Message-Id: <177210733516.1888115.988839089301078416.b4-ty@pengutronix.de>
Date: Thu, 26 Feb 2026 13:02:15 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260226_120216_465744_2E9A78C0 
X-CRM114-Status: UNSURE (   6.25  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=ham
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: rockchip: fix SD card startup for Radxa ROCK 5T
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 26 Feb 2026 09:50:34 +0100, Sascha Hauer wrote:
> The upstream pinctrl change broke the SD card startup on Radxa ROCK 5T.
> 
> Revert back to the previous pinmux setting as a workaround.
> 
> 

Applied, thanks!

[1/1] ARM: rockchip: fix SD card startup for Radxa ROCK 5T
      https://git.pengutronix.de/cgit/barebox/commit/?id=bd5518cd7e34 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



