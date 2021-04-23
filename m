Delivery-date: Fri, 23 Apr 2021 17:56:16 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lZyAC-0006YC-Os
	for lore@lore.pengutronix.de; Fri, 23 Apr 2021 17:56:16 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lZyAB-0001Ux-Vt
	for lore@pengutronix.de; Fri, 23 Apr 2021 17:56:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=t+5tabxsenLuxxfJjXdGriEmGalz+dZbSlmKTMC6M8M=; b=YZGPuDnjQB+jv3OgxTjhoBeEA
	bnqVHKbTNjwpGLhRdN+M2Hm/py0U2LgmuBs7odC/CoObmG6+Z6Tj/VRn5D4gjS7wG3Ij51AtQ93zv
	DV0z2flAI6NPOrtgUJtJGEXQ2RZ+fl50QgVlETSaNhxIwdem48aROS1FCxOlD6xkPEtG+/AXZcCTO
	TanGPLCrZ43OvZdvoMUKY4rroNS5tRTmZsLR2Z1vzZV51QP7pGEr4mSf4pJR+DOcYrSD7nAChKCfu
	POCLbAMEXmIj+JXzVhe+S3NMfOzC8xMo8t1ryH2dMao73UEa4kVz/ilRQ6n9s2c7xNdKurpHQlKHT
	ExPzSOgeA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lZy9B-001orv-5x; Fri, 23 Apr 2021 15:55:14 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lZy92-001oqt-CR
 for barebox@desiato.infradead.org; Fri, 23 Apr 2021 15:55:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:
 Subject:Sender:Reply-To:Cc:Content-ID:Content-Description;
 bh=crL74Z+MrMdO2XQins6PGvo1mPw+yYeFSOHZKpATP9U=; b=i1KW8gRUNCqO8+rAJJyIbic4oq
 Gr6ErwCbOYzElBWIA60TTQdFptg0y6e37xqyz445j+Mc5M40OF1vd8IwerN4ez4dE1COnZ8CM6zXA
 u/zTQakfiI9SS8LiPVuqQkMwrrZPCvxoClQPry76DYCTJrF16MoyP7a2crVZFEVztNOmRLfF9/jJc
 YPSsrcJXSJ91SzlYEoxd0eFmuzccwR9cUX0DuWKstidS5PsC9a5Utbholl/Ss3FVnrv4Jsiep3bY8
 Cm6qYdLuGtr+ZrgKy7F8eYvnaXUDxziwU0sDP01PQwTBx5mXQoystkGhhaXY2h28kSCEYeFzxxAHv
 fkTfCD/Q==;
Received: from mout.gmx.net ([212.227.15.15])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lZy8z-00EWiw-IZ
 for barebox@lists.infradead.org; Fri, 23 Apr 2021 15:55:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1619193297;
 bh=eq3b/IkgDMNDqEkIiXRKhmQumULz6ztyCUKNrmBM7yo=;
 h=X-UI-Sender-Class:Subject:To:References:From:Date:In-Reply-To;
 b=eLozPgMdEyVQ6awqU46lCULkQcqcPtBXL/w5fZdrIyazNosGDd6BA00wqkhsa23Kb
 x5fio/PKM5GOXnx2AhGkGYkso2KnABGxOkvNlL5r8PYdEqiwHV1qlw6cMb17jAJsXy
 C4/IDYBLcJ4qqlV6JB81AnK8SLwB9ZseXt9+1R9U=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.178.44] ([95.91.192.147]) by mail.gmx.net (mrgmx004
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1M3DO3-1ldWuq03Sv-003cie; Fri, 23
 Apr 2021 17:54:57 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>,
 Oleksij Rempel <o.rempel@pengutronix.de>, barebox@lists.infradead.org
References: <20210423142829.29468-1-o.rempel@pengutronix.de>
 <20210423142829.29468-3-o.rempel@pengutronix.de>
 <e2787ffc-cdcd-9b94-fd8e-2e64616f3c47@pengutronix.de>
From: Oleksij Rempel <linux@rempel-privat.de>
Message-ID: <b4c7ee6f-7ef1-1c6b-be6f-bc44b81ccfdf@rempel-privat.de>
Date: Fri, 23 Apr 2021 17:54:56 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <e2787ffc-cdcd-9b94-fd8e-2e64616f3c47@pengutronix.de>
Content-Language: en-US
X-Provags-ID: V03:K1:+vzMJUsW1e7Ag1pVYuWOsBX0xhB3wpMHsTxhzPBle0/1zN0kKbi
 fbZLcfp4k05+/zSnS++dK8bIoXaxuxz6gOEYznhUCSXX6gMl2nyPhzAJdjmt/4OhpAMQ9C2
 H6Au5nU7E/WvytC6bZSvsJbhLLqL58OXkASS+bDayoy4na414XUnVEwU49BAPivC3V1MESV
 hN2hL4AviLbJhqtaxTaBw==
X-UI-Out-Filterresults: notjunk:1;V03:K0:NjHasupBNdk=:5LQN8Hrv9O8IqVtn5H2zGR
 Ta9sHLEfpSJ+H7hFjqsaKLB1AiBGZnlqJ63Y/qyy/D2HrI0zOfAxErEXUZUVzGj5P2D87RhI6
 92X46ptxhwsNai82wHZVJY09ohxl4tv0tgEtJuI62L03MTOO4XF2HaevnaK4bvBOJ+kwwKJT+
 oX6zCyp5WowCx6OHsdlHGiFTIN/IH+Ue11y4OGl+BhfkBKlkELGFxde6AI/5ElVW2qLd4Pk4e
 okCM7rcqt2b5TeDqAzsK98Ee8+S9qYuVHmuXWBZqvbqjfiaZCm8Kd7HDTyBRS+gjMXMM1Q+Ry
 EfDHJfztjtn5XylcTdWzjlzTPKaadgnZHI3AZ0zeBxRHOkkAARfS8lViim2ZL1FaL+EZxhCJM
 GT56QcaGSGvgZS9++EQgUIzYPZn14xJDXdtJnjHOH1RYjlhVO9qh5uc4tjmogyRJsOHbFzzWo
 fPAK0V9s4qh06aQHhSxNWYW8roe+lQbMVdcPOHGCdT/Wptehdh/2bL7mnt1NN0BSfIQjRI4WX
 rvg8Q0SDvs36VGz3FkOcz7z8IdVWd+idXNS0rsIXJJHzQq8KO4ADA+1Z5Zi+7UpVQwGwT+Kwl
 TJ8H632ik0mqWaQJIWGc220aGZWwPJvG3NqrUDTesOnXpxgZDpuFNO2qehrfczeVw0CeYVzvr
 RQvDKVBqJ+4YhXxnap7DNEDfOo+jJYl5sRsLQg5V8j1U2+749Bbw9hJPmeyLl2ZDcNpMEWqTv
 s9PfvFp8CGziwIyMGTIb6I1Dfqeed+AsCHK7bVVRAQXwTc7bmkigIV4KNMCEHxYjSQ+1aH4+G
 jb9f6WxOvLbce7YZrpB1wx5TgO8bjh33IiSNnvuiCsnQIWy2Sqxb9HFciqqsiEgy2uzLbavS/
 1oRHznjMKdtVFEfXUstyHBlX+ckeVR2ColA94o8qF7BLeVij8KE51eGBh8ZIDZduGBwGmpuTu
 59CXL03Usk5S3LLyrdVGXSbPX1dK9E4jc3z+iyRcQ5wmJq9PyOhdfIaw3Gz9ltAuZWP7OwoL5
 fw3TQVExjMUwKwA6N12nkWpJE9PfAy7ZqKCUCcGo98sPN1818i5mrZzArhH7enGnd6S1k58bq
 htk58b1TPHbBgKJRQV8wugNdeKCLgJUWOqk5mockoz+7rRpDIvO1awG6EIMlYAFjg+Yocd/P7
 akJ3tv7iHIa2kttsVyaW6JvOy/uSRe7/1wBtbr0LLDd4QvWuHWgQJzNF00zbrxCAG1GN9oLt+
 gXv9zC+sMKjCDX9FS
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210423_085501_926289_41987BD2 
X-CRM114-Status: GOOD (  12.64  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 2/6] ARM: at91: xload-mmc: add
 sama5d3_atmci_start_image() helper
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Am 23.04.21 um 17:26 schrieb Ahmad Fatoum:
> Hello Oleksij,
>
> On 23.04.21 16:28, Oleksij Rempel wrote:
>> +void __noreturn sama5d3_atmci_start_image(u32 boot_src, unsigned int clock,
>> +					  unsigned int slot)
>> +{
>> +	void *buf = (void *)SAMA5_DDRCS;
>> +	const struct atmci_instance *instance;
>> +	struct pbl_bio bio;
>> +	const s8 *pin;
>> +	int ret;
>> +
>> +	ret = sama5_bootsource_instance(boot_src);
>> +	if (ret > ARRAY_SIZE(atmci_instances) - 1)
>> +		panic("Couldn't determine boot MCI instance\n");
>> +
>> +	instance = &atmci_instances[boot_src];
>
> What's the difference between slot and instance?

there are 3 MCI controllers (instances), each controller has multiple
slots. Usually slots board specific and configured over devicetree.

> Looks to me like you could drop slot in favor of instance and support
> booting from any controller with the same image?

Currently it is not supported. For some reasons i was not able to detect
boot source. In any case, this can be investigated separately if some
will need this functionality.

>> +
>> +	sama5d3_pmc_enable_periph_clock(SAMA5D2_ID_PIOD);
>> +	for (pin = instance->pins; *pin >= 0; pin++) {
>> +		at91_mux_pio3_pin(IOMEM(SAMA5D3_BASE_PIOD),
>> +					 pin_to_mask(*pin), instance->periph, 0);
>> +	}
>> +
>> +	sama5d3_pmc_enable_periph_clock(instance->id);
>> +
>> +	ret = at91_mci_bio_init(&bio, instance->base, clock, slot);
>> +	if (ret)
>> +		goto out_panic;
>> +
>> +	at91_fat_start_image(&bio, buf, SZ_16M, boot_src);
>> +
>> +out_panic:
>> +	panic("FAT chainloading failed\n");
>> +}
>>
>


--
Regards,
Oleksij

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

