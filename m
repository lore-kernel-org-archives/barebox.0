Delivery-date: Fri, 11 Feb 2022 11:37:27 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nITIt-00CkWd-Gl
	for lore@lore.pengutronix.de; Fri, 11 Feb 2022 11:37:27 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nITIs-0007Jc-5j
	for lore@pengutronix.de; Fri, 11 Feb 2022 11:37:26 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jEuHMvUSeJ5UMbi6ehuYhwPsZ4YzjtQg+GzFcS4Ja1c=; b=4DEZmkkAFfxf+k
	4GBGd71xOZ6CO0YOHdKQQg1jOgKLV5eV2FapBAfoka+bC8z+S5V+LrfirK7xV5o46xCQh0wfQNASe
	K4x7ek3mdxgwtkJkiSQ4VMrDHrl7JHpJsQeywhKXH4XQ+AQ2I34i1WTbFHZnuKN9u4aUGAAEi6TRY
	QNYkioa1kj8YxKKQfMXqjP2Wr0cJpR6q46N2f3611Ypi/Vxdd+PPRM86kFywwlDLXIWXpy7Pb0KBc
	UEWsgVF0N6Lnq2vvorTeEmaEUH3LSD1dqpdDq6gNi/xQKeGim3cJVBMVLfBdf9fov8zIscroc1GL7
	PpkS205Mu8H0yy0vdmMA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nITHP-006axt-P0; Fri, 11 Feb 2022 10:35:55 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nITHK-006awB-05
 for barebox@lists.infradead.org; Fri, 11 Feb 2022 10:35:51 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nITHH-00072i-V4; Fri, 11 Feb 2022 11:35:47 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nITHH-00032H-Dr; Fri, 11 Feb 2022 11:35:47 +0100
Date: Fri, 11 Feb 2022 11:35:47 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org
Message-ID: <20220211103547.GF18637@pengutronix.de>
References: <20220210134639.341801-1-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220210134639.341801-1-antonynpavlov@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 11:35:28 up 62 days, 19:21, 87 users,  load average: 0.16, 0.15, 0.17
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220211_023550_076294_69F31F2E 
X-CRM114-Status: GOOD (  17.06  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] imd: add optional endianness= parameter for bi-endian
 systems
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Feb 10, 2022 at 04:46:39PM +0300, Antony Pavlov wrote:
> MIPS architecture supports both little- and big-endian modes.
> It's handy to have means to determine endianness of barebox
> image. This patch adds necessary record into imd block.
> 
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
>  common/Kconfig       |  6 ++++++
>  common/imd-barebox.c | 10 ++++++++++
>  2 files changed, 16 insertions(+)

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

