Delivery-date: Fri, 11 Feb 2022 11:56:03 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nITat-00Cl1N-GY
	for lore@lore.pengutronix.de; Fri, 11 Feb 2022 11:56:03 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nITas-0002Ip-8w
	for lore@pengutronix.de; Fri, 11 Feb 2022 11:56:03 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=sHZcd62PSnkpZis4XzfSyvsLLSGCQ+Q+jXuZPTH05hY=; b=VxPlYtKiDdm9t7+v5zqJXVt34w
	W7jTmRwa7NdbchpCbGYvI6oGFvkXGEUB9D1o68eNdD+oP8tq9FnROVPcaPAP8Gu+Rupvpu/smhiRK
	TFCYERQJjx4fVkkFM8zDiZQpLXY2//ku/LNCp3ZA1KQYY/HuzIJc4Rpm4jv2rxVtaGfS8ReJZn4QH
	8SyoLjXL5HFwrzKu3KpPCQKgjRHBv7HX0+kInf+K2eu8motz+FE35t+/r4mcJzQEk+ztoKtaLDqOV
	z2jUmZ6M6J48HHcKlpKzsRUj1zT7KHxs/QmyioV8CeZ+da/EZzBnBjZMKm3W4y95xX2ZGy5IcV2l+
	/eyKkg5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nITZU-006ic5-Pf; Fri, 11 Feb 2022 10:54:36 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nITQv-006f3v-Uk
 for barebox@lists.infradead.org; Fri, 11 Feb 2022 10:45:47 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nITQu-0000gX-L2; Fri, 11 Feb 2022 11:45:44 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nITQu-0003eg-BY; Fri, 11 Feb 2022 11:45:44 +0100
Date: Fri, 11 Feb 2022 11:45:44 +0100
To: Frank Wunderlich <linux@fw-web.de>
Cc: barebox@lists.infradead.org, Frank Wunderlich <frank-w@public-files.de>
Message-ID: <20220211104544.GH18637@pengutronix.de>
References: <20220211091354.11573-1-linux@fw-web.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220211091354.11573-1-linux@fw-web.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 11:43:53 up 62 days, 19:29, 87 users,  load average: 0.08, 0.15, 0.17
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220211_024546_069807_4D652846 
X-CRM114-Status: GOOD (  17.80  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v3] ARM: Rockchip: Add rk3568 BananaPi R2 Pro board support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Feb 11, 2022 at 10:13:54AM +0100, Frank Wunderlich wrote:
> From: Frank Wunderlich <frank-w@public-files.de>
> 
> This adds support for the BananaPi R2 Pro board.
> It is basicly a copy of rk3568 evb board but with slightly modified DTS.
> Added GPIO-Leds to dts and modified the hw-detection a bit.
> 
> Tested features so far are:
> 
>  - 1st stage booting
>  - Network
>  - SD card and Emmc
>  - usb (1.1 and 3 work, usb2 not working)
>  - power LED (green)
> 
> Signed-off-by: Frank Wunderlich <frank-w@public-files.de>

Applied, thanks

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

