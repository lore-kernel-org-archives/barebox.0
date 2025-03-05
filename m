Delivery-date: Wed, 05 Mar 2025 13:35:38 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tpnyM-00ABM6-2c
	for lore@lore.pengutronix.de;
	Wed, 05 Mar 2025 13:35:38 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tpnyL-0003Ik-Hb
	for lore@pengutronix.de; Wed, 05 Mar 2025 13:35:38 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=WP5hOLdLFExpU1Mk3wDo/GxPyL7wfncNmcczZRgabvY=; b=S7VtqDwal9HtNlIhRsIeYfDTaX
	sjmh9fkfVn7ZFpoUGPpN84PMtldxl0V28BZ5u4KzW3UMInb3M6hxc8++eInurQ12IWFkgpcjuMwBZ
	BlWhgo003+SfdXCl+cJG9fdoTr19Aedre5wVn/AJA9RJSDAajdmfknj+4cVHMhoSIiKdKCgIBZePV
	qD9k1nze8ko4dD4TkS7Lm9KYMgv9UfdPECSPcrGr7bdqvioVNLbHCWx8Z09RQ+zmfcAg1w5+qhQH9
	6krS/yXg6fTUd/+FwhGaMwaZznrEd+6Ov3FdzDfPgJs0FpUV8qeE6jd/CUO7d1jHMyi782n16a/ew
	Xp5lW0Ww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tpnxt-0000000823L-3mOo;
	Wed, 05 Mar 2025 12:35:09 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tpnie-00000007zzm-255m
	for barebox@lists.infradead.org;
	Wed, 05 Mar 2025 12:19:25 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tpnSv-0007YB-PR; Wed, 05 Mar 2025 13:03:09 +0100
Message-ID: <19b1fcef-836e-450b-9cf7-e1d5ccd4e416@pengutronix.de>
Date: Wed, 5 Mar 2025 13:03:09 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Martin Wege <martin.l.wege@gmail.com>,
 Dan Shelton <dan.f.shelton@gmail.com>,
 Cedric Blancher <cedric.blancher@gmail.com>,
 Barebox List <barebox@lists.infradead.org>,
 Sascha Hauer <s.hauer@pengutronix.de>
References: <CANH4o6Njc3uHE=NbasRJrRr0W5B89R8MTM_BwGwab7t5fNWuaA@mail.gmail.com>
 <Z6yxUVTp0vGWqs7Q@pengutronix.de>
 <CANH4o6NRK2+ekNe_LrUaoAi8PVbi-MC3hWerv4g6F-WmXmyK5w@mail.gmail.com>
 <Z8GWfv4oIhB7CDSU@pengutronix.de>
 <3ba4d5f3-9679-4a32-a3e7-a8c958107df9@pengutronix.de>
 <CANH4o6PN3tJC+zLt_eLeKzJ6BVFnGo+vYFDF+9Hjp9x6oz626g@mail.gmail.com>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <CANH4o6PN3tJC+zLt_eLeKzJ6BVFnGo+vYFDF+9Hjp9x6oz626g@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250305_041924_543701_B612B38E 
X-CRM114-Status: GOOD (  25.93  )
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
Subject: Re: Mount NFSv4.2 filesystem in barebox?
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Martin,

On 04.03.25 22:50, Martin Wege wrote:
> On Mon, Mar 3, 2025 at 9:40 AM Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:
>> We had a discussion about this last year, but it didn't result in any
>> upstream code yet:
>> https://lore.barebox.org/barebox/CAAvCNcCZhS8mkvdgcJ2L-eiur+OxgWEXRLnadO_HFyHfSi7WFA@mail.gmail.com/
>>
>> One question that I still have, is what do you use NFSv4 for?
>> Is it just for development and your IT is disabling NFSv3?
> 
> No, NFSv4.1 (NFSv4.0 is obsolete due to bugs) offers better
> performance, more flexibility, smaller footprint, better caching
> (delegations), ACLs, SELinux support, and can be tunneled through
> firewalls because it only uses TCP port 2049 and nothing else.

I am speaking in particular about NFS use in barebox itself,
where you'll likely to not benefit from better caching, ACLs, SELinux
support and so on. The kernel NFS server can provide both v3 and v4
in parallel and you can already set in barebox

  global.linux.rootnfsopts="v4,tcp"

So the booted kernel need not have any NFSv3 UDP support at all.

As David mentioned using TFTP in barebox instead of NFS is an option
as well for as long there is no NFSv4 support if NFSv3 is a no-go.

>> Do you use it in the field?
> 
> Yes, we do

So, you use barebox to load a kernel from NFS and then use the same
NFS as rootfs in production and currently you are using NFSv3
for both?

>> Knowing about the use case helps with prioritizing future work.
>> As it stands, NFS is mostly understood as development feature and
>> it's expected so far that interested users will be able to provide
>> a NFSv3 UDP server in their development network.
> 
> No, NFS is not only a development feature. For example CERN uses NFS
> boot (with patched NFSv4.1 stack) in radiation environments - that
> saves a SSD per embedded machine, which is typically one of the most
> affected pieces from radiation. AIRBUS also uses nfsboot in their
> equipment and flight deck systems.

We also use NFS at work for the developer workstations. My question
is strictly about _your_ NFS usage in barebox.

> So yes, you would have customers for NFSv4.1 support in barebox.

Just to clarify: I would love to see barebox support TCP and newer NFS
versions and if someone were to contribute that, I'd be happy to help with
testing and review to see it merged upstream.

So far, we had three threads on the mailing list, where users asked about
our plans. However, I haven't managed to find out how in particular they
currently use the NFS support in barebox.

We (as in the barebox maintainers) haven't been approached by a paying
customer interested in adding that support. That means, the topic has
to compete against other features we are interested in adding to barebox.

So far, NFSv4 has been low priority for us (TCP itself is not though and
I hope we might get there this year). So the way forward is either:

  - A user contributes support
  - A customer pays for the support
  - Users describe their use cases, so we as maintainers can better
    assess how useful NFSv4 support would be for barebox as a project

Thanks,
Ahmad


> 
> Thanks,
> Martin
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


