Delivery-date: Sat, 05 Aug 2023 09:25:12 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qSBey-008Iee-Tb
	for lore@lore.pengutronix.de; Sat, 05 Aug 2023 09:25:12 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qSBex-0006cs-8T
	for lore@pengutronix.de; Sat, 05 Aug 2023 09:25:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=p20SGbLKfzSCW3i3sc4dymPcK4JHHjF+E8m979meCHk=; b=g6U7/TZHchDB3YpubaJa+mL5jU
	1YVaZzR7ihtk1oBHiuS4DuvaT+mPzfx5lJkHIDFz7tKq0F2aoN1JfCXaHHm9NuL4BobB9OrqxBoQE
	jnl6trqAI+z7qSL5HRg1qbIqlrXrAFl11NOBliQp4gW51vN6W2di2CrDNzQJujE8L7XVO9pMbsRHv
	R2vigNmsqm4wnKx65KKS+mNlEtif6GLm70qruy0ooviQwJY8O+5MiLvFiwBZ3TzlR/x7Jur5+vFNa
	pLPvMEmfLbg4soA5SUmXU5C8Ksuq6d0yWerc7nVNN2LuoRgPII7Fc1uqzOfkEz/PqVM1rMMfmwr3l
	lKVai48A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qSBda-00Dnn1-0N;
	Sat, 05 Aug 2023 07:23:46 +0000
Received: from mout.gmx.net ([212.227.15.19])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qSBdW-00DnmI-2F
	for barebox@lists.infradead.org;
	Sat, 05 Aug 2023 07:23:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=rempel-privat.de;
 s=s31663417; t=1691220209; x=1691825009; i=linux@rempel-privat.de;
 bh=g9OxzCzZeqSu8gwjoiNRvyz3q8jUTguxAKai+ZvYdPU=;
 h=X-UI-Sender-Class:Date:Subject:To:References:From:In-Reply-To;
 b=i/UTZiDOmVX893h1PXpqW1Op1yr8OvJBaOncghd1UijzQCEqNVuu/s4lG8S9B1AZ/kH9QAH
 gPjPz/z0MFmfBkAexdmx7W4RQlCnQij48kK0MVrGDUFdJj32JqwqYo6s+oZpGVKINlIZ3xlvW
 7iLF7avgZGdkl1gVJC8Fco9HLXVEY9hy7AdUjg8zgBkOSA5T3ZKfNhPNjecunxvvFpIHbfyML
 IdKp7Sasb9DDSGXolhnv93vIEjGU3qboW/Su9H80YjwPQf4c/hkvFCAuj7MHimeKHx/f6blLW
 rKhiYXV4Ynxkx5xOhhK697wmitha6n9mGf/gb96ymY7fwLXP/Ejw==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from [192.168.86.182] ([95.91.195.205]) by mail.gmx.net (mrgmx004
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1MxlzI-1pcoV51eLm-00zBcK; Sat, 05
 Aug 2023 09:23:29 +0200
Message-ID: <29852d75-d488-ff4c-026a-6fa845ad7059@rempel-privat.de>
Date: Sat, 5 Aug 2023 09:23:32 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
To: John Connor <jtconnor4@comcast.net>, barebox@lists.infradead.org
References: <0E7349F1-0575-4093-A9E0-1F844E7F5922@comcast.net>
Content-Language: en-US
From: Oleksij Rempel <linux@rempel-privat.de>
In-Reply-To: <0E7349F1-0575-4093-A9E0-1F844E7F5922@comcast.net>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:eRCL7f+DeFma4cvwz53IKVXIQAtAtOF+TqRA57u81UgftV4+qxK
 1hUKua7HSuX6cf9wglBnE04M7oLesG2w9NPwPjNeg7ppwOBR/UIOo7U+CD5lbBQBTfhQf2f
 Baj9QRK+ibzfNvRkYDmUDKVJnZ/K1T1mJYIhuyd0ozPJqoTSRoP9GXJPNhzHTqNxQEZYbYG
 rK0EibGT53ZsSp+MrM7DQ==
UI-OutboundReport: notjunk:1;M01:P0:1dRJ6uCCjeY=;sau8KtFYRPQCs4DfUXJsBtUCk1G
 lWmKF5kr+s/T9kpeEmkQCNi8VS6XOasD3W3HuvNY/VOaog4fkdJvcJk5Re8XMoZes0i3xSnjM
 KptDesHIxt1fM9utwVts8riRrQ5p841xNrADf9ySl/XpbvJh50oSFMxToa9BfE7qzeBUyCj86
 dR5UalK7288+hhcOVkysoVmqoptEn2F9XqOH6NkDHOqzgnKsrMAbsI8TxJXl4SEYSlxTAAD3t
 sHng0aUugCFbkxqWXp8R6NAoTJr/z0JzpNRu+0iihaQMiQoHaVKBeKWoIbIIJaEaTS0KAnbNh
 lG/YT60xdrDUTO3XDEfrTAcg0wFHPPGLOQpFer3Feb8KrCaSZLG1hrJpkYwGy97GsuuDDhTRF
 4o0yZ4cLGvlXGF3nrcGqyMa/bhv5TLuAdXMjJZ3gBWj0q1dO8zMfQMM//4gCVxjfYoj/4LGN6
 JnE9LcQV60yiSxXLOhB3duXml51yk4gCkkdAIoFwFAHflTuKEhxd0MT4A0wYTX/DbQWnANiDC
 E04pjw0bp9JQ9w+YP/EJXAXGJRRw+YXJUGsCS+Z0OtDaEPLHPZ7ubXySney9uYdMA2i66OwUb
 CmYcKkJDAogaW/WlOXU64dfnMw5zEsuzHGpbJsMvU874PosdNAt/HvpjRvzkpluWt2v3988qo
 EPgie5uDpT7DYzJRS7boLn0j5oy5Vw+E26YH9Z36bJHXbY6CbMDiDl0JrLRXupQhpfsf7toJi
 Hy4Y0p/eGJetP1cwn6kURxpwGtEvIMI5DM4pE2Wtff8/KlAAvbTYRhua1PEwammEGEN8h+s7A
 lyYCSqPdhuKvadqovlrxkVxEkV4nooS9z6GfqKSI3kbqRfGVvwpzriD9nVM50EN7Algqwq8Yg
 wm/6/UQQJh9Nc/6rvVt6lVEeXsUtEsDM02an9HqXzF7lUYkMebovsp2GqcnY5ZZPrLQL0RMpt
 CVZ/iA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230805_002343_231744_276B434B 
X-CRM114-Status: UNSURE (   8.24  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: macb_main.c ethernet driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi John,

Am 04.08.23 um 23:15 schrieb John Connor:
> Are there any plans to upgrade barebox to support more modern features o=
f the Linux network stack.  i.e. NAPI support, phylink support etc.  Newer=
 versions of the macb driver use these features and will not work in bareb=
ox.
>
> Are there any patches that exist that add support for this?

So far there was no plans to do so and I haven't seen any patches floating=
 around. But, i assume,
some limited implementation may get handy. Patches are welcome.
=2D-
Regards,
Oleksij



