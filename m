Delivery-date: Mon, 12 Jun 2023 16:51:44 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q8itV-003wye-G4
	for lore@lore.pengutronix.de; Mon, 12 Jun 2023 16:51:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q8itT-00007I-6r
	for lore@pengutronix.de; Mon, 12 Jun 2023 16:51:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=d2h9Sq7GUmdfQ7VZxH3zeVrswRhS+EhjoXQNhBtUVrs=; b=g8NMGvHLtIsJO09I0mEXHspQRm
	33TeQNGjcrL07L+hkPzi0XAjXVtpobdcz8jF+3312wC4ekceHbW45s3nSx+hbMy/OxTWQnFfk7qDB
	ISjgsqbkRV//F3Sur3NobhL3hfSIb3Hstiw+ujEAzB6IbTiBmZe8OT1Sik215i2+M6FGXGAVvO67z
	U7Ao+kUo8g6XYFdg0vq6BOv6pBrFlmQ0fQWwG1WVXdKPTWG1TSwWG0VhPiDlDKBlDT9xWNiPDlbBN
	/Easq/3AbA/gprXs52k79yBE4JoDiVND6vFQ6JeKDPYLbwMPNwe6lhejxFbNVZfSBsbtk6SX4eKFF
	+COBxmzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q8isH-004MUe-0g;
	Mon, 12 Jun 2023 14:50:29 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q8isE-004MUC-1C
	for barebox@lists.infradead.org;
	Mon, 12 Jun 2023 14:50:27 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1q8isC-0008NP-Qy; Mon, 12 Jun 2023 16:50:24 +0200
Message-ID: <044fee32-5560-2e85-a0d3-cc7cea71ed48@pengutronix.de>
Date: Mon, 12 Jun 2023 16:50:24 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.2
Content-Language: en-US
To: Johannes Zink <j.zink@pengutronix.de>, barebox@lists.infradead.org
References: <f4fc4921-e722-353c-c901-7af8976043e4@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <f4fc4921-e722-353c-c901-7af8976043e4@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230612_075026_410508_52F8C554 
X-CRM114-Status: GOOD (  15.68  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [Bug] Nullpointer Exception in of_diff
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Johannes,

On 12.06.23 16:26, Johannes Zink wrote:
> Hi,
> 
> I observed a Nullpointer Exception in barebox barebox 2023.05.0 on a Rock3a when calling
> 
> of_diff . .

This should be already fixed in next. You can ask Sascha to pick
"commands: of_diff: simplify error handling" to master if that
fixes your issue.

> on the shell. Please find the complete dump below:

[snip]

> The behaviour is stable and reproducable on a Rock3A, probably also on other boards. Maybe someone of the more experienced barebox devs already has an idea what's going wrong here and wants to have a closer look, otherwise I'd probably give it a shot within the next few days (and if I manage to find some spare time...)

You can pipe barebox crash logs into Linux scripts/decode_stacktrace.sh
to get line numbers (don't forget to set ARCH/CROSS_COMPILE).
Enabling CONFIG_KASAN=y can also be very useful to pinpoint the origin
of memory corruptions.

Cheers,
Ahmad

> 
> Best regards
> Johannes
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



