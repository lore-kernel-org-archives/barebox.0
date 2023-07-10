Delivery-date: Mon, 10 Jul 2023 14:11:32 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qIpjq-005hil-3o
	for lore@lore.pengutronix.de; Mon, 10 Jul 2023 14:11:32 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qIpjn-00012B-KO
	for lore@pengutronix.de; Mon, 10 Jul 2023 14:11:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4xS6YzykWS9nHWe3GwIUnBYvHva2REfKf6V6yOveqc8=; b=h/QK+sRGn+hEJdkVAvnH8tDOY3
	FjFmvu2qXFg3gnsawbj6vAJ+AqlsF9vBHTjjGYeN7K/gLD5QpBuiXJYpyGJuahEFIhRLVa4a3Hgqn
	lUzncF0VPisw2jhEJj+iXhDoPZZ5QhQayhbrDo/cxdRE7LevGZ2ZwKPDPxfl9csYKAO9K9zCtBZe1
	meMliTDNBSYUl/xL4rfJOHNUU6/TK2sQAkO9cuMkQpTksSb/9wI9/LBDESBA7ktHjtME2Z59oMvZr
	yuJluze0cUoVeFfIxkwM/wDJIm14FWD2NpIKZE0r3rEu1XMiWw7Boxo2+S/h0OdxbUVPBmi5f8q7J
	hJT+ssGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qIpiQ-00BYZt-2E;
	Mon, 10 Jul 2023 12:10:06 +0000
Received: from mout.gmx.net ([212.227.17.20])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qIpiM-00BYYJ-2B
	for barebox@lists.infradead.org;
	Mon, 10 Jul 2023 12:10:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=rempel-privat.de;
 s=s31663417; t=1688990996; x=1689595796; i=linux@rempel-privat.de;
 bh=rnwaBnQczPFFiqIo4FaQacECLB43UiwPs5dpbJp9GOk=;
 h=X-UI-Sender-Class:Date:Subject:To:References:From:In-Reply-To;
 b=tEClgq2nP3csIHf/1daG2X7TnBCFe9t9geydqR4UJ84bScU5vFWtuKgPltt7iU3Sh8IKVgZ
 /mDud8TMyG80cs6dH+KwPRY53q7qrm7KgE6+EKuUMjTsD96OiD65YqJQnfE+NG5eYGb7kwUNh
 RWjvqYh2ioxSr2Bs3LSE5C0Zz0vkQI+Zw2f5uocBm7x8Ri4IaoI6I8M7Uxaii7/uFY/Nt26uj
 uu06/De+M5wJob5u3ONDRnf1SFUvme5qTGLkOnrbVYUO7ooaLLY1mDb7CkmAdd05PqD5gFSme
 UyMpT9jC8bLseeVL6DT49IJbI3vB0WrY0ZgTHXpPTBEo2fOBTqLg==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from [192.168.86.182] ([95.91.195.205]) by mail.gmx.net (mrgmx104
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1MBUqF-1q85191wkh-00D2yy for
 <barebox@lists.infradead.org>; Mon, 10 Jul 2023 14:09:56 +0200
Message-ID: <d8057a76-dfc5-bdc1-3949-63933a904ecb@rempel-privat.de>
Date: Mon, 10 Jul 2023 14:10:13 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To: barebox@lists.infradead.org
References: <20230710063653.660040-1-m.felsch@pengutronix.de>
 <20230710063653.660040-5-m.felsch@pengutronix.de>
 <08b0cae6-4dd5-b349-296c-e24ec761f30f@pengutronix.de>
From: Oleksij Rempel <linux@rempel-privat.de>
In-Reply-To: <08b0cae6-4dd5-b349-296c-e24ec761f30f@pengutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:qfNmXq16AWjmYKREuKcraBQ2w/HMvnBZttcUiurta/9uLYORvyZ
 UZIkM/jgy3Nm9SG0gCmpSRru5gLLQvSQB4NPYs4I3XDSHSbtdDFxDEWxx8JLKPQ1rc1XG2I
 8t6MUpfhsJYpQWIIwhMIRHd/yvceOqVbZgTZnT5ugTp9m+NVFJ37NSV+8i1nV1Crxjtpo30
 hPylxnKlzNHycoQAuMS1A==
UI-OutboundReport: notjunk:1;M01:P0:K44PlgkBsf0=;H2YQCK5ShCZy97tdMtfzGrGfZqP
 E6rrtUjhVtwszBeKB8lDtuXbpVHHfiDEdLOAwxY9sPaqFkECbrVrRImWQoitGccXeUjA2Apry
 D3l4fFx/ORylxvDiUwx1c4s/oxCYKNMeDn36rG/qE6ttGyC1qTpcJtsqA90ftomE60O+53AeW
 vb/C5Joh2drEnNNpsTsCTqUlzKJk1uDHhpQK8tdy2sj/rzNB6BcwF2XwsEYO7dFTvzIF6CgwN
 VZOUOkZb69ne+FTz8FhoaH6RL0KJLj5g9JTeLsIWfDTVFUY/+aG4/iY1ZX5Q5CzL0WbLjjw4x
 IqmG01qVzEAYlcVIwAgYAI/UZ8ZlMpWficr3H2kcsM7/RbaUl5mP4ZjvVauLXpuDaMSFJOLJR
 +Jvo9iMg7zD/GhzpmV7Zpp2saw0RYZxG0PjEdsAiPoZeB265bqxZySSsHcU2ru3Ji+9MFgRWH
 rVihZQoSNjvcb8shtwNPTRBfiNDdQ6ZflFYKORvACeVZnaPFsLGAUA4rbGHbmjgu7XhQeJ6DU
 49xuhGZlV4Xs8OlVj91482dizOj84gQPWN92w76TADfQvf2e1J70XYntgUTQPmuEkmIHwganX
 xcixym6BnhilLYZEd+Rjn6c9bZ68RLw6EtLmXSVWfqn6BYtfHTm2BYPDdpWzbnKFHY+SFoKma
 oaVYJtlVsRXf6H9rlpNWHtqL/wPyR4jDY7o+Fvy40HLqMRnitkgw6s0uWITH7fq6iqTNiR+H5
 pc/ZtePnP9JxcMUpjreT9tQzPXvy7yhVbxRrVRcs0a5CewhuWyy6k2IwEChY0PbXwFngr+XxT
 bs4SIw+cv6RnB/qOicKucF7jByUucBuCwqQf/QIZkUt7o2hdBxuEq6eAL0veaFPX7YcGbbWCl
 stlRJzLcy/kkk6IvTTjCjP52QF7H9ne5ryTDJxOj0dhLan2ZVB0X7JCYDEKZA1ce7la5+GFMa
 llJZWOEaEsfaNLVOIe4+30x2dhk=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230710_051003_223367_760AAC84 
X-CRM114-Status: GOOD (  13.11  )
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
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 5/7] net: phy: at803x: add support for configuring
 SmartEEE
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Am 10.07.23 um 12:10 schrieb Ahmad Fatoum:
> On 10.07.23 08:36, Marco Felsch wrote:
>> This commit port Linux commit:
>>
>> | commit 390b4cad81484124db2b676ed20a265adc032bae
>> | Author: Russell King <rmk+kernel@armlinux.org.uk>
>> | Date:   Thu Jan 14 10:45:49 2021 +0000
>> |
>> |     net: phy: at803x: add support for configuring SmartEEE
>> |
>> |     SmartEEE for the atheros phy was deemed buggy by Freescale and co=
mmits
>> |     were added to disable it for their boards.
>> |
>> |     In initial testing, SolidRun found that the default settings were
>> |     causing disconnects but by increasing the Tw buffer time we could=
 allow
>> |     enough time for all parts of the link to come out of a low power =
state
>> |     and function properly without causing a disconnect. This allows u=
s to
>> |     have functional power savings of between 300 and 400mW, rather th=
an
>> |     disabling the feature altogether.
>> |
>> |     This commit adds support for disabling SmartEEE and configuring t=
he Tw
>> |     parameters for 1G and 100M speeds.
>> |
>> |     Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
>> |     Signed-off-by: Jakub Kicinski <kuba@kernel.org>
>>
>> I slightly adapted the at803x_config_init() as well to be more in line
>> with the Linux code base.
>>
>> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
>
> Same question as in follow-up commit: Can't we just disable it unconditi=
onally?

Most of PHYs with EEE support have EEE advertisement register on the same =
offset. I would recommend
to create a common function for all PHYs drivers to clear all EEE advertis=
ing bits and call it the
PHY framework. EEE should be never advertised by barebox. As a side effect=
, if Atheros PHY do not
advertise EEE, SmartEEE will not be activated.

=2D-
Regards,
Oleksij



