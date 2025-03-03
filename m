Delivery-date: Mon, 03 Mar 2025 09:44:39 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tp1Pj-009GZD-3A
	for lore@lore.pengutronix.de;
	Mon, 03 Mar 2025 09:44:39 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tp1Pi-0001Lf-Qb
	for lore@pengutronix.de; Mon, 03 Mar 2025 09:44:39 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:To:Subject
	:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9wDPp0b1+lAaFJwFiyOYj3gQ/sJ7lvxBXvmEmz0Erc8=; b=1Hj2/vbL9hUcsi
	m3uwO51/6ZjA6vG+OjL5ZtqOVa/P1VFaTE31YHJk4YjW+43iTxunPwyxj2iaE6Y2TLCzYEZo+3lXs
	lvwj7/9WZRlZA896iRjmetnDDOt71KHGcQ0h8eh39xG6iMA4oGsRolRAan+C6LsR36xFA4ZSU4zSY
	xwCqDb0lQ0GPiV0EuZ0px82eeq8BPEzRTErSBSeHkKh0gvvSRReScjTyWUfUaqqb9chnKenMSuvlp
	kUrGvusRwwEjb1ksTndQZUSFN+Tlm2ULm0bOsoG3NsjfrtNGGZ3H62guKrTv70NPjpkEoK8CBCbSJ
	XMNr8arG297fFaDezSbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tp1P6-0000000HZgo-21nu;
	Mon, 03 Mar 2025 08:44:00 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tp1M4-0000000HZBJ-2TI8
	for barebox@lists.infradead.org;
	Mon, 03 Mar 2025 08:40:53 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tp1M1-0000qj-3O; Mon, 03 Mar 2025 09:40:49 +0100
Message-ID: <3ba4d5f3-9679-4a32-a3e7-a8c958107df9@pengutronix.de>
Date: Mon, 3 Mar 2025 09:40:48 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Martin Wege <martin.l.wege@gmail.com>,
 Dan Shelton <dan.f.shelton@gmail.com>,
 Cedric Blancher <cedric.blancher@gmail.com>
References: <CANH4o6Njc3uHE=NbasRJrRr0W5B89R8MTM_BwGwab7t5fNWuaA@mail.gmail.com>
 <Z6yxUVTp0vGWqs7Q@pengutronix.de>
 <CANH4o6NRK2+ekNe_LrUaoAi8PVbi-MC3hWerv4g6F-WmXmyK5w@mail.gmail.com>
 <Z8GWfv4oIhB7CDSU@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <Z8GWfv4oIhB7CDSU@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250303_004052_627750_195114CC 
X-CRM114-Status: GOOD (  18.48  )
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
Cc: Barebox List <barebox@lists.infradead.org>
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
Subject: Re: Mount NFSv4.2 filesystem in barebox?
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 28.02.25 11:57, Sascha Hauer wrote:
> On Fri, Feb 21, 2025 at 12:54:00PM +0100, Martin Wege wrote:
>> On Wed, Feb 12, 2025 at 3:33 PM Sascha Hauer <s.hauer@pengutronix.de> wrote:
>>>
>>> Hi Martin,
>>>
>>> On Tue, Feb 11, 2025 at 01:56:58PM +0100, Martin Wege wrote:
>>>> Hello!
>>>>
>>>> Does barebox have support to mount a NFSv.2 filesystem?
>>>
>>> No, not yet. For NFSv4 we would first need TCP support. While we started
>>> to integrate a TCP stack we are not there yet unfortunately.
>>
>> How long is this going to take?
> 
> I don't think this will happen anytime soon. It's quite some work and
> our bandwidth for adding such a feature without (paying) customer
> demand is limited.
> 
> That said, the lack of NFSv4 support is nagging me personally as well.

We had a discussion about this last year, but it didn't result in any
upstream code yet:
https://lore.barebox.org/barebox/CAAvCNcCZhS8mkvdgcJ2L-eiur+OxgWEXRLnadO_HFyHfSi7WFA@mail.gmail.com/

One question that I still have, is what do you use NFSv4 for?
Is it just for development and your IT is disabling NFSv3?

Do you use it in the field?

Knowing about the use case helps with prioritizing future work.
As it stands, NFS is mostly understood as development feature and
it's expected so far that interested users will be able to provide
a NFSv3 UDP server in their development network.

Thanks,
Ahmad



> 
> Sascha
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


