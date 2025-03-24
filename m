Delivery-date: Mon, 24 Mar 2025 09:42:23 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1twdO3-003W5p-1W
	for lore@lore.pengutronix.de;
	Mon, 24 Mar 2025 09:42:23 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1twdO2-0006qa-Bu
	for lore@pengutronix.de; Mon, 24 Mar 2025 09:42:22 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=dNXZnP71PlHfm/5JPhCabMluW9qSgXnnaqbWDVLIEmo=; b=P+ubBbySce8b/cWWFBDa8bgrDb
	AnQcXcYg+JStm8BKprNC32DKa2OOkR4OIsL0Oz+i70ZSZ8CoCNHl4IHpa/p3onZO11dSCjG7vsG3p
	Ho67ZEsSXnfF1bFm/Y3RR6l4SQbmSr3HC5Hcapzx+3epXNKrtRaNC/91fOdxEy0N1c07WS6T0jUL5
	XzRZqox94sndRchZGhgxtDJ4qBdP73g8WyiiVfYVVJrPnXiQeP4vriQHdCKIIPOIKGFm0qNvK3gkJ
	OqFuYmHIDfSwoYH/AhmjtyvINI2O0zHsJSLluKr6rb3GkELvZX8QYjcgU2ikwXCv3grpzwxM14vui
	7K35hmzg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1twdNY-00000002cdZ-04wv;
	Mon, 24 Mar 2025 08:41:52 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1twdNW-00000002ccS-0QQH
	for barebox@bombadil.infradead.org;
	Mon, 24 Mar 2025 08:41:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:From:Sender:
	Reply-To:Cc:Content-ID:Content-Description;
	bh=dNXZnP71PlHfm/5JPhCabMluW9qSgXnnaqbWDVLIEmo=; b=oG5Ra3wJleAkltpKdWmeRFzLY1
	eLaAoB+c3RCu9QvyzpbdGJakNCSEKbOEzfhWkZeIX955QpLvgjdcH77p6+L3qjXdQDVj3VduoOFBr
	sGzpCMyuiBatMRpupOWe9QZeNCatlG8NTrUNCrvh4JVVdbXRfOgAVku+u8VsZ8IFDSJJffCGpwi+e
	Y+W+aEzokoJpnGQ1STiEebrD20aoK5hNBtMlON6wLJkRUMAevDSFeXZjrITNAVHKaSlNYH8EvnuNY
	gv5OFIxLrsPESMj9Nx8UXRxuR7AOsC0m/2jbgIbLPvVpyIQQKwUnX/p+xCko0V4lpOAf+KA0JQ08v
	BJJ4IgYA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1twdNS-00000005CBJ-3W96
	for barebox@lists.infradead.org;
	Mon, 24 Mar 2025 08:41:48 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1twdNN-0006i7-RQ; Mon, 24 Mar 2025 09:41:41 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1twdNN-001Nc1-0l;
	Mon, 24 Mar 2025 09:41:41 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1twdNN-007BHg-1u;
	Mon, 24 Mar 2025 09:41:41 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250320052027.1731144-1-a.fatoum@pengutronix.de>
References: <20250320052027.1731144-1-a.fatoum@pengutronix.de>
Message-Id: <174280570158.1711522.3299646559563120142.b4-ty@pengutronix.de>
Date: Mon, 24 Mar 2025 09:41:41 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250324_084147_004425_E4023089 
X-CRM114-Status: UNSURE (   8.77  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] driver: base: class: remove device from class on
 registration
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 20 Mar 2025 06:20:27 +0100, Ahmad Fatoum wrote:
> class_remove_device is the exception and normally, a device class
> doesn't change for the lifetime of a device after it's set the first
> time and removal from a class is done alongside removal of the device
> itself.
> 
> Let's therefore move the removal from class into core driver code.
> 
> [...]

Applied, thanks!

[1/1] driver: base: class: remove device from class on registration
      https://git.pengutronix.de/cgit/barebox/commit/?id=e092a8d685cf (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



