Delivery-date: Mon, 03 Nov 2025 09:51:27 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vFqHf-00EnUD-0c
	for lore@lore.pengutronix.de;
	Mon, 03 Nov 2025 09:51:27 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vFqHe-0001cj-Mb
	for lore@pengutronix.de; Mon, 03 Nov 2025 09:51:27 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=mUCDjuYWLpqrqLR27Wl/WYTxRY5R7Lh5zZW/9T05U7w=; b=hFSdcJbMe2p6w1lFUjR59/FMxW
	BdrnbBe00TNIhe9zH/JoR18E+miCqIB3JnN8LdNXkVKTCurNm4LUcY5kkuin7NiON99EU4iU10sMl
	daVT5PASDT+rG2aLzQLozYrUJ7lX6R6ymfs88gzov89OazYE5u2/Qnw4d9kwC0VsXqsUJcjUjxwRG
	owY63r7LLLmEJUaC1kWA2PJBClVdqErFErQ6T54/CgtDGXelaXzAebwMCDNForjlMSZBLx6ytpm0E
	Dwk7ZMUphdbGHp1vAy2hwL7i4jrX+FC2czJUc9/cKQYYpnKgma6999j+oVBABzf7varT2EaYf3mK4
	xPbPA7zg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vFqHD-00000009T2N-0Euj;
	Mon, 03 Nov 2025 08:50:59 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vFqHB-00000009T1r-0cGE
	for barebox@lists.infradead.org;
	Mon, 03 Nov 2025 08:50:58 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vFqH9-0001Xn-3j; Mon, 03 Nov 2025 09:50:55 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vFqH8-006pUH-2w;
	Mon, 03 Nov 2025 09:50:54 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vFqH9-0000000HMXV-1CgZ;
	Mon, 03 Nov 2025 09:50:54 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Jonas Rebmann <jre@pengutronix.de>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20251029-dmesg-v2-1-c54c7daef91b@pengutronix.de>
References: <20251029-dmesg-v2-1-c54c7daef91b@pengutronix.de>
Message-Id: <176215985483.4138152.5219583354196002667.b4-ty@pengutronix.de>
Date: Mon, 03 Nov 2025 09:50:54 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251103_005057_210232_1EBD6E47 
X-CRM114-Status: UNSURE (   7.39  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2] commands: dmesg: clear logbuffer fully if not
 requested otherwise
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 29 Oct 2025 14:18:27 +0100, Jonas Rebmann wrote:
> Previously, `dmesg -c` would clear the logbuffer except for the last 10
> lines. This comes with a fair amount of surprise given linux `dmesg -c`
> clears the whole logbuffer.
> 
> Clear the complete logbuffer given `dmesg -c` but with an optional
> argument `dmesg -c [<num>]` to keep <num> lines.
> 
> [...]

Applied, thanks!

[1/1] commands: dmesg: clear logbuffer fully if not requested otherwise
      https://git.pengutronix.de/cgit/barebox/commit/?id=4463660e1f5d (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



