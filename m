Delivery-date: Mon, 19 May 2025 21:56:46 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uH6bO-000bit-2a
	for lore@lore.pengutronix.de;
	Mon, 19 May 2025 21:56:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uH6bO-0005Pc-5U
	for lore@pengutronix.de; Mon, 19 May 2025 21:56:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=eDpW0/Nz8RlGjMOaLVD0r0bpCD+e4pn//sDz80TV+Qs=; b=Dv0bx+ZazEsOJvggXIFZkAdlXl
	MOQCrYao1vYD9fzuDBeqxy+W0mjpJC44jkd8YetsD6Yl86GUHZLWh+OkgvEZOZ+TUerYAp/J24OWe
	GMOnmIE2TDQ5f+mcxsx3DNQ7tv3TSf2aCIA9w8NFLvg+JYqzPu9k8Ob0Lry+QBPvXkhx4KamSmqDx
	mksl1koJ+nkUZiVDqreYbE11I3a3zxoPOp5GdMkYt6gqNnQAmn/HAL4iPBZtgIZgegCo+PTxL9XfX
	RBmSQq1SISMo9oYAT80np7htS6mTZzoNMNssjK+SFbIqZ80N3JlkeYrpIMLTKXfHPq42NDM/ftlAg
	pVIDbyaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uH6aK-0000000AI0j-13s2;
	Mon, 19 May 2025 19:55:40 +0000
Received: from mout.kundenserver.de ([212.227.126.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uH5R0-0000000AA2I-3JZl
	for barebox@lists.infradead.org;
	Mon, 19 May 2025 18:42:00 +0000
Received: from InfinityCube ([95.91.232.251]) by mrelayeu.kundenserver.de
 (mreue010 [213.165.67.97]) with ESMTPSA (Nemesis) id
 1N4Qbu-1uzfcw0mwQ-00yCQP; Mon, 19 May 2025 20:41:48 +0200
Date: Mon, 19 May 2025 20:41:43 +0200
From: Johannes Roith <johannes@gnu-linux.rocks>
To: Michael Graichen <michael.graichen@hotmail.com>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>,
	"barebox@lists.infradead.org" <barebox@lists.infradead.org>
Message-ID: <aCt7Z5Dw3QhPgTNg@InfinityCube>
References: <DB7PR02MB43321CDF6386A16A725DC131ABF40@DB7PR02MB4332.eurprd02.prod.outlook.com>
 <845b2228ae93d93e331556bb983f19cf67a025b8.camel@pengutronix.de>
 <DB7PR02MB4332F692229D1F189B11EC49ABF00@DB7PR02MB4332.eurprd02.prod.outlook.com>
 <aCeMAO9MFhGJBStt@Precision-T3610>
 <9babe122-45a3-4843-a2bb-178979164339@pengutronix.de>
 <aCoTbGjxgymNPSQF@Precision-T3610>
 <VI1PR02MB4429AA325D9A08D898319A40AB9CA@VI1PR02MB4429.eurprd02.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <VI1PR02MB4429AA325D9A08D898319A40AB9CA@VI1PR02MB4429.eurprd02.prod.outlook.com>
X-Provags-ID: V03:K1:EDaaB/Y1ERCgRYb02MWZsnMCaTiNK012OHSzx4psFBhdE5QQ0+9
 4U9onp1YULo/SwwPigzACIIiwgkTXqvYBSs73xUYyZZAQDwDQf8s0IoLJpVtDI3faf25xlo
 u6u3gTqbjTjVXwF02+Z7XnahZC01amX1w52iK4Hia8wMkXLcxWRuIuec0W8c6i5w9JbzYAN
 Ch+cWUON6d/lgpQPIbVaQ==
UI-OutboundReport: notjunk:1;M01:P0:Gplw+SVTTn0=;5OtYSu5417yKtwssCerrkpFyNvB
 8HvbooG1Pn2GBtbmZQHaVOckKyp4M0vMqYX/Bghhf98mE56BdBhGH3+lxAg8ahdFgy8Q+xs85
 3Iwpa+4OiNqycrVu81Q7jgedZ3yzcssT4Q3Z6yyswgaF+dHAxOjnAfkWLXWYj+yhJjhjMUOXD
 gBqxH331Xt0WcoCd8X/1cXuZWOetl5oQ7nOgzL9Dl83nS74jWqBae6eV1LnJwRtU74vL6VOdb
 ZSPdzPhXQu9zBKvQZr3eQysvttxodX4nW4/8ggXinQgZDHKmVE4aRzDa0L78YMluxhf4HhG21
 0+0CCFaNvgFG1IVAcCnenuWwWnnVaLixxO+rzdo6AGLtj1JJLds21NGzmDWptt9zRz9GQ/2ib
 mIY8qKUf1o1PWZ5EP/dAk1Yv8MA2/CzZqtnrGwdF9jEKpis0D20fIDkTKxUBgtE8lICvriEEe
 VYhwwRVeJOFrqp/ym1HkzFg/BOAT1/iM60uDK0AdsMhKb834lSvuoCC5JiqGsvYWgO3mJ7agS
 NcBOp0W/r2xWelK2nETiL3gLFR1kX2KaEWBeMvRcsO6DST8EAzV0MPFmqmFfMz1kFkA3AT0Zc
 ICqO0vCGjC3HKoKs3byYVWIcRcAQxEZUrHsqBr1BscQp9Err+ct+wnJY/tk7DaePfSY6nBRUI
 6YG8UyyatuBKgIhTZkTOkG+QHPPInGiFdhbmC88vU2DG4IPEQcwyP3U0sh+tiuAGtWWaxQvl6
 vO3+YwyOpeiUwlJs0o7jJP2wQQLK1bAFrLTbBHZJqz+XrYuPq+8l+IwBu3XKnc+uXimG/Sdpr
 V5Gp7+P9jUIrWpkg3xCm8RXMOJng24xafdWzY0IeNlKyt8ga5ge+No4tRlafQFNTWKApRd++x
 aYDITFU/6ewnEhxwZkmkt9oCoxUiOEDtt4UwByuRwsjSYFETwOieJA4qrG8VcObqZSy0AQJFR
 I1PQ6Pq0Vp7JMuHpIi/1BsvjBkqJtvRYsFZXw2LOLkt6Qg//XKo5//ksEld8BSL4BWjwOtNBY
 BDsuRQyUMjjwmxh3p40INRH7/aKRrTCcXlo5GcL7B6lYbbDLAA8VBd9jYy+4dAaO8joYp+SXz
 mt23JV3TNkXt9X10ZE0twuUfKjiukDqQ9R8WdPzQp1aXgZsf3hMyEC4rtVVNiD6lftiZrK3Qk
 rxQJ0RA+T1Lp3x4/uWN+h5pbvzce4itlEHjsCYRl9IUx1ZB11BAFvb3cSjXE48NUY2cMPI+57
 /lhMXhqSoP2c3t4qRsP3Z1mI9hHYt3Gn9vbnLxQ5DJKt4nF7W7oyMSLVzlo/EajOBX8rlZjwW
 TlGjC0BWH0+uCkFRLePEVFRIm+cYogvWaq+6sPzL7qR15g61s9W3ZN+4cd7yhu5/JzaprYHBv
 DErUEtAUm666If0ogLXC0zyPAYkV7sNOcMzGCV6tjNQkTjXbZniD98Tpi1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250519_114159_137218_258700B6 
X-CRM114-Status: GOOD (  12.88  )
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
Subject: Re: Barebox for Zedboard
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Am Mon, May 19, 2025 at 06:50:23AM +0000 schrieb Michael Graichen:
> 
> Dear Johannes et al.
> 
> i'am using
> 
> 
> for an PS<->PL FIFO.
> But this is not used within barebox in my case. It's only there because barebox passes it's devicetree to the Linux Kernel. I only do the programming of the FPGA in barebox within my init script by
> 
> firmwareload -t zynq-fpga-manager /mnt/boot/design_1_wrapper.bit
> 
> I will send the latest version of my zynq-fpga-manager to the mailing list soon. 
> Please feel free to pick it up and finish my work since i did not do it since 2020.
> 
> Best Regards, 
> Michael
> 
> 
Dear Michael,

thanks for sharing. The patch worked on my board just fine after
increasing the timeouts a little bit :)

If you don't mind I can take care of the patches and incoperate the
feedback from the barebox maintainer and try to bring them upstream.

Best regards,
Johannes


