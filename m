Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnhGp-0005Cm-JV
 for barebox@lists.infradead.org; Wed, 17 Jul 2019 10:34:48 +0000
References: <20190716105837.18237-1-bst@pengutronix.de>
 <20190716105837.18237-2-bst@pengutronix.de>
 <20190717094845.nshhbzetbprptqst@pengutronix.de>
 <333c80d8-ae65-1ed4-9c18-ab9bb31716a1@pengutronix.de>
 <20190717103149.jub6iz2lulyy5f32@pengutronix.de>
From: Bastian Krause <bst@pengutronix.de>
Message-ID: <52883d36-7789-cec6-2bcf-e4157a840456@pengutronix.de>
Date: Wed, 17 Jul 2019 12:34:46 +0200
MIME-Version: 1.0
In-Reply-To: <20190717103149.jub6iz2lulyy5f32@pengutronix.de>
Content-Language: en-US
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
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 2/3] common: machine_id: introduce machine id generation
 and pass id on
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org


On 7/17/19 12:31 PM, Sascha Hauer wrote:
> On Wed, Jul 17, 2019 at 11:58:59AM +0200, Bastian Krause wrote:
>>
>>>> +	struct digest *digest = NULL;
>>>> +	unsigned char machine_id[SHA1_DIGEST_SIZE];
>>>> +	char *hex_id;
>>>> +	int ret = 0;
>>>> +
>>>> +	if (!__machine_id_hashable) {
>>>> +		pr_warn("No hashable set, will not pass id to kernel\n");
>>>
>>> I don't think this is worth a warning. With this series this will be
>>> issued for example on all non i.MX6 boards enabled in imx_v7_defconfig.
>>
>> If I enable CONFIG_MACHINE_ID I'd expect the machine id being passed to
>> the kernel. This is not the case for these boards. Isn't that somewhat
>> surprising?
> 
> With that argument we would get a lot of warnings in a imx_v7_defconfig.
> A lot of features end up unused on different boards.

Okay, agreed. I'll remove the warning and add a note to the kconfig help
text instead.

Bastian

-- 
Pengutronix e.K.
Industrial Linux Solutions
http://www.pengutronix.de/
Peiner Str. 6-8, 31137 Hildesheim, Germany
Amtsgericht Hildesheim, HRA 2686

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
