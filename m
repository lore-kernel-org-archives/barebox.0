Delivery-date: Thu, 16 Jun 2022 18:40:34 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o1sXo-0049ob-UG
	for lore@lore.pengutronix.de; Thu, 16 Jun 2022 18:40:34 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o1sXp-0004ZU-0E
	for lore@pengutronix.de; Thu, 16 Jun 2022 18:40:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=pzI+DUruabSt6Rjd05IE0C4oQJo3oCha0OgyC/lMTmQ=; b=u6CS5i3lhJ3sK77PGyBe0MB9N3
	UKbdnzmE5PGGWiwxErh6K2qc6Wqqud6joxg/uDEBLzzWNfB9eVagNSLlN0rD4BBD3qXGkICufzItg
	JJJhi2zXzp9eJguSMaLr+psjr5/U1DesfSQ9zjnu8x909sJTlY1eJmDEJRfLCJF7GnzetpAHRxmQ6
	lKQ9XHXeq5wP6qRDVtqgJuD4IrI8dDByVDWIc+OSQ+TrSxSUrivJfIrIwLdam3YzhXyhqjvNy63ez
	OdZwAkqP+revp5Wp+Xn8W/xN029fOJmrw7K/GAsMRTqyq0BFg/48YI0WLJws5R12VCpe3e6um/RDd
	bqZ3eupA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1sWP-003RiW-2p; Thu, 16 Jun 2022 16:39:05 +0000
Received: from mout.gmx.net ([212.227.17.22])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1sWK-003Rgd-0L
	for barebox@lists.infradead.org; Thu, 16 Jun 2022 16:39:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
	s=badeba3b8450; t=1655397526;
	bh=fQoW9Vg6qrR+SslsvTVPlieyHr2jdDDoD34nYFNqj74=;
	h=X-UI-Sender-Class:Date:Subject:To:Cc:References:From:In-Reply-To;
	b=NVQK7zQMp3O7SBnl7NkikEYfFmD2NzAFfS+mUpK/Wdr/jdr5q4BdMghih36zyCUdz
	 rtLJeLqln+yXhGERd3+PGzIWzcRsAAt8aQkXDmEhMIKNeHYxcbEKVPc1Lnys5oY+iY
	 C+RP1xskwdMDyqcomAPMxv8soC+fwcjtV9a+2CxY=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.86.95] ([95.91.192.147]) by mail.gmx.net (mrgmx105
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1MD9T7-1nsq6p1lA1-00956Y; Thu, 16
 Jun 2022 18:38:46 +0200
Message-ID: <85d82f53-5290-613f-2214-924dc2135cb6@rempel-privat.de>
Date: Thu, 16 Jun 2022 18:38:45 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Content-Language: en-US
To: Oleksij Rempel <o.rempel@pengutronix.de>,
 Robin van der Gracht <robin@protonic.nl>
Cc: barebox@lists.infradead.org, david@protonic.nl
References: <20220616131114.214628-1-robin@protonic.nl>
 <20220616131114.214628-2-robin@protonic.nl>
 <20220616162833.GD28995@pengutronix.de>
From: Oleksij Rempel <linux@rempel-privat.de>
In-Reply-To: <20220616162833.GD28995@pengutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:KMzibZrRw7RkpSpSUNxAW9ExVjfMrCxCelKUDYnuMg2CZCRqGr5
 6qHR3peI1xcuhSP8RgEuiyx+LYLh0riy3EVocRMfB9y4jViCWRnC4bfiUQu3cghtNuiTUj1
 A2K45eT7TOOb+A3X8cLApTziW2+TPw6ZVEgqtRc1Sasg/LGMWgkA//QTs1TOZDBHQNgkZJV
 xdmLKyTBiCadIDWVJF4MQ==
X-UI-Out-Filterresults: notjunk:1;V03:K0:ADsLzG0ZTmQ=:fKXmoIQldio2tg3WKdcDCZ
 QP8/bzQKw6UcpvvMc4IrYz+i4VzCspiWxMlTkhZkqNBN+RVOOydUCkkgdShFtUt6tJjt7/HY4
 ikXuNFxplAJcSrZkcUKPz648mL2eN0J8x9qSITN+oN8Szosf3Ev02aMql/oMKh0lFJRquezn8
 y5C1WkwgSLz+4JlAl82pzUJWwl52qTmF0F4GgUahgYtj4EAoC7WZn5skd8HZxBSkLEygDFSnA
 Q9Y4ekhPcJy8ud7fj95Uw2UXCK7n21iBzyM52WYuK4icJsj0DYivLmCuseqdVkqK0oS+ndVZx
 dp2N4Pk97Fqgts1pTPnDGE6DrgIKy7y0ZhT45P2VzceKYJ0GaapRA/1AZnyDbMMKOjnfiQjNx
 vYUv4Ua74SqjRCG3wIIa7+azLNun82LG+2B7QAp1dfVR0JV0NnKuSadrmEPGP0lmAWTOKGaSQ
 J6bjfCnrazZUb3NhFYN5vN23sr5feIuNl8lkGte75dWlNf7C4SMbQuS3DNY3tRTdlnBPWm+vZ
 UgA77yLtmHOi10lqQS0Db0OR45IO8aNC6Ydw1S6QtTt3YhKI8AXSIOvMTArVH2SieuSfDh7Xy
 QUBchtZmv3p4Uaf77AhP3SoRFw8Zx6QHhXVDKbKiaaNmQVSrJDDrCx/m2LDgDEeNAFYYMWvoq
 HcyAYL0lHk3LXN9mkp0gzJH0Kx4zj1o7QpgBFJYimn9o4b9wKI3uWRDYPhxlJ39O8dTN4OxWP
 WmBrRqKqOT3xx+FYXMB9yjIZf4eLKGG6pQgQ5fg0kGY3s2IH0ojU+hGX5SAV2LV74jRhj42D9
 bPAPk8gZFjfiQGpJ3XceLsv1Gtnn70jrW6EfJQmMSbHif3HjroEGsHvxS1MhK29wZEYyiTDfT
 ceLSqaCUoYYRYTh/IS+Zl7OUiueHYLJ71ryATaNbEeO7ywXVWEmiwHIVtVutAqXNQyzb+v/I9
 8VJMqoFvHL88lPyhSOvelamEUxRZN/g9VPzGFdxq7HFELZJao4NBEK3gUJHDeBei9dhYb+ivg
 M0uJM4eZ/NZ3oyxodpnA95Lis9tDv4dZXkH8WI11h5A9UxAl/0LHieTrtmcdaFO/uC18p+AFo
 55ngMQZGqm56wuweKJ0bcfV+iXFAba/DlnEzBgEvc9MUG2Jz2qAD23E7w==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220616_093900_560343_170EC54F 
X-CRM114-Status: GOOD (  13.79  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	NICE_REPLY_A,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 1/9] ARM: boards: protonic-imx6: prtvt7 hardkey inputs are
 active low
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Am 16.06.22 um 18:28 schrieb Oleksij Rempel:
> Hi Robin,
>
> On Thu, Jun 16, 2022 at 03:11:06PM +0200, Robin van der Gracht wrote:
>> The usb check needs to be skipped unless both keys are pressed
>> simultaneously.
>>
>> Signed-off-by: Robin van der Gracht <robin@protonic.nl>
>> ---
>>   arch/arm/boards/protonic-imx6/board.c | 2 +-
>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/arch/arm/boards/protonic-imx6/board.c b/arch/arm/boards/pr=
otonic-imx6/board.c
>> index cdbb8debe6..8f8a0c745e 100644
>> --- a/arch/arm/boards/protonic-imx6/board.c
>> +++ b/arch/arm/boards/protonic-imx6/board.c
>> @@ -645,7 +645,7 @@ static int prt_imx6_init_prtvt7(struct prt_imx6_pri=
v *priv)
>>   	gpio_direction_input(GPIO_KEY_F6);
>>   	gpio_direction_input(GPIO_KEY_CYCLE);
>>
>> -	if (gpio_get_value(GPIO_KEY_CYCLE) && gpio_get_value(GPIO_KEY_F6))
>> +	if (gpio_get_value(GPIO_KEY_CYCLE) || gpio_get_value(GPIO_KEY_F6))
>>   		priv->no_usb_check =3D 1;
>
> Hm, you probably wont:
> 	if (!(gpio_get_value(GPIO_KEY_CYCLE) && gpio_get_value(GPIO_KEY_F6)))
>
> otherwise usb check will be always skipped.

Or, it is active low and your patch is correct :D


=2D-
Regards,
Oleksij


