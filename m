Delivery-date: Mon, 17 Mar 2025 10:02:04 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tu6MG-000YKY-1p
	for lore@lore.pengutronix.de;
	Mon, 17 Mar 2025 10:02:04 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tu6MC-0002LF-EF
	for lore@pengutronix.de; Mon, 17 Mar 2025 10:02:03 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=uJpiejRsn5l982E8v3ikuIghyYr+arPNIuZ5lbUCEJE=; b=pG/rr0+CnQAY2A6cUZZjrYde2h
	ZOqjyXJ7WfnclGjb4MJ2nAZzN8NcffPiOJNHLgL2muvB5dzwRgKCpa65KdlliIHy8f+nFBafA9y7a
	y2LUsZPgjixHUIFW/K7LzIBDFEq3KcrbByKIBOJdCfMh5G5xbIr+Y86tgdShKFvOCZ608MXuTAS3O
	YOUWjUAwgrUwpO5wBjrv2uNG+VfqJKbyhJJ5lHBjGU3R1K+Ox0E3hJK495lOV3pxsAi7wC31S5A7r
	PX6w1fcB7WVI1sadCfWeOTf/8OIZs+Qh5sg7Ipd+JZtquQ92pmudmY6r1/fbrGHaY26wxxipb8F/m
	KEk4h7+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tu6LL-00000001qJv-11W4;
	Mon, 17 Mar 2025 09:01:07 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tu6GS-00000001pXp-1vF3
	for barebox@lists.infradead.org;
	Mon, 17 Mar 2025 08:56:05 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tu6GR-0000jf-5f; Mon, 17 Mar 2025 09:56:03 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tu6GQ-000DPL-1o;
	Mon, 17 Mar 2025 09:56:02 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tu6GQ-00H3S6-2y;
	Mon, 17 Mar 2025 09:56:02 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20250314094559.3631184-1-s.hauer@pengutronix.de>
References: <20250314094559.3631184-1-s.hauer@pengutronix.de>
Message-Id: <174220176292.4064829.27224376056409189.b4-ty@pengutronix.de>
Date: Mon, 17 Mar 2025 09:56:02 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250317_015604_520848_FDC5F6E1 
X-CRM114-Status: UNSURE (   9.62  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] firmware: export firmware directory
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 14 Mar 2025 10:45:58 +0100, Sascha Hauer wrote:
> The recently added k3r5 code needs firmware blobs as part of the image
> generation. It hardcodes the firmware path to $(srctree)/firmware which
> is the default, but could changed with CONFIG_EXTRA_FIRMWARE_DIR.
> 
> Move setting of $(fwdir) to the toplevel Makefile and export it to make
> it available to images/Makefile.k3. As fwdir is a bad name for an
> exported variable rename it to FIRMWARE_DIR.
> 
> [...]

Applied, thanks!

[1/2] firmware: export firmware directory
      https://git.pengutronix.de/cgit/barebox/commit/?id=906ecf8c9c37 (link may not be stable)
[2/2] ARM: k3r5: Honour CONFIG_EXTRA_FIRMWARE_DIR
      https://git.pengutronix.de/cgit/barebox/commit/?id=78ebaea8ebd0 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



