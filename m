Delivery-date: Mon, 13 Apr 2026 10:03:27 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCCGV-00Be64-2q
	for lore@lore.pengutronix.de;
	Mon, 13 Apr 2026 10:03:27 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCCGV-0001px-Bw
	for lore@pengutronix.de; Mon, 13 Apr 2026 10:03:27 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4J+SBazc3URUQMOoQ987P7HHM7y45CkjHULUESz94y0=; b=sQYjgYRRwmbBfnFmIPVDzPyn9C
	zk2iR22AFU6HV5NGULKU1uRuEJBvg0Ryrgq30xJ71Z7FFHeggnYWEYEjp4zSSjVaUdo1v/uatYEk7
	GInYHmQV3EDW4xd6kCVJaMZPdKJ4FQMqFKL4u8eV86rjWrW0eNBR1SY1zz5qUzaDXz8dMx3imNXe2
	q40vkHmNW8R1iFYSrXM7YfiN1gm45zA+QcQ1pWMpt0VRZdD4t+9pccq3NF/86Apkb2qWxEaF6pPZC
	Y9KOiqZZTLV7pLqzg5IViQbk+9eJQN1WTORNtb4t55H9cWUYhAP048fGSvjIkq15ZJ8Sy1LI0ZsHv
	uf+TgyyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCCGD-0000000FDRO-3uEe;
	Mon, 13 Apr 2026 08:03:09 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCCGC-0000000FDPn-2tL2
	for barebox@bombadil.infradead.org;
	Mon, 13 Apr 2026 08:03:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=4J+SBazc3URUQMOoQ987P7HHM7y45CkjHULUESz94y0=; b=p2fFkO2SfB4iyJkkPBuNdBQzUg
	guDDfSMxNtH3I8wK98kXihU322QNevcQfCOrdmvMb/nTfdONI+HL4f8ZRjqIYpzTTAVLtboOfc1hr
	DLgOReobx0OpEH4UsdyYrh1y9D/F0fp9n9wsTJG87HP1gtPNsk/vpdHito8I/kGVx9K0KlypHaCED
	0rnJcC/1XhjAGsBx6wDJXtlpc44NC1Rn0z3VG8fCUx00V4uZcbRSkBpcVFKx8VxkaLNj38suBTpKy
	YHV/T4zHydipDkzZbWqlOy9g7xt2EhrP+y8BMF7k91gLlQYtH0nJ0/ZrQnjjbej7iSb2UR53FYk+5
	0Md1WAMg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCCFo-0000000GLDW-3ZS0
	for barebox@lists.infradead.org;
	Mon, 13 Apr 2026 08:03:02 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wCCFn-0001Xv-JZ; Mon, 13 Apr 2026 10:02:43 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wCCFn-0058My-1L;
	Mon, 13 Apr 2026 10:02:43 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wCCFn-0000000EhfJ-1SX0;
	Mon, 13 Apr 2026 10:02:43 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
Cc: "Claude Opus 4.6 (1M context)" <noreply@anthropic.com>
In-Reply-To: <20260402-net-dns-buffer-overflows-v1-0-30621fe8c6b7@pengutronix.de>
References: <20260402-net-dns-buffer-overflows-v1-0-30621fe8c6b7@pengutronix.de>
Message-Id: <177606736334.3504416.17369288914748468846.b4-ty@pengutronix.de>
Date: Mon, 13 Apr 2026 10:02:43 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260413_090253_782067_C61B2071 
X-CRM114-Status: UNSURE (   5.30  )
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
	autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH 0/2] dns: Protect against too long hostnames and
 malicious packets
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 02 Apr 2026 10:25:08 +0200, Sascha Hauer wrote:
> This fixes some problems in the DNS code with wrong/malicious incoming
> data.
> 
> 

Applied, thanks!

[1/2] net: dns: fix packet buffer overflow from long hostnames
      https://git.pengutronix.de/cgit/barebox/commit/?id=ee221416cd5c (link may not be stable)
[2/2] net: dns: fix OOB read in dns_recv query type check
      https://git.pengutronix.de/cgit/barebox/commit/?id=b721ff38bf78 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



