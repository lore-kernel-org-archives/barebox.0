Delivery-date: Tue, 02 Sep 2025 11:34:49 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1utNPd-007EXv-2r
	for lore@lore.pengutronix.de;
	Tue, 02 Sep 2025 11:34:49 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1utNPc-0006Fv-9B
	for lore@pengutronix.de; Tue, 02 Sep 2025 11:34:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:To:Subject
	:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rx4IiraYic4qfJ3cZ1LU6BhSDfp2nX5saUCb0aOKiOE=; b=KpHYkWwb+4EIut
	vpwbyaWeNYNeoBMifi7Sp9yG4kH0bGsUw5WcQ2tnM1pUosUEI3mpvJ9PsYr0OFJXljtD+nY9mvLfI
	VXJD1blC3Mkgsu12BroJu4ugPKxVbMflQjMCyTMsmVIAEjRs6bzeeBcKcD0+X+9vU/3YTAcvVO99p
	Fwe6GFXG9RbagaQRgwCquav2ZLuTEsJ1NMIM/lxtOpNiRUtOaKq/Fx/SXEBOqrPx3KwSsmqZ99bDD
	sdVoKTMz0exHodXKqbHzCF379Rmqmd4/U33sJxMihKomaF1HRm6M0wCSjU7eUFpoK3HyprBPbj9qP
	AB7wZIa7ViBQSukI1qlA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utNP0-0000000GP7C-18qD;
	Tue, 02 Sep 2025 09:34:10 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utMvo-0000000GFMS-3GOG
	for barebox@bombadil.infradead.org;
	Tue, 02 Sep 2025 09:04:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=rx4IiraYic4qfJ3cZ1LU6BhSDfp2nX5saUCb0aOKiOE=; b=NoWg7dGhN+jUK5IIScjL9QLSHV
	YWbzoQOgrGj49hJexHHu256kIr0bUO/uROFlv+vPidesg26q1FDpTzLF68mFlWuTud58BMz2LI5Xi
	vHEu1DPYVjwGCuBo8eR50pkrFM9iVSivzSiRbM/Kv4VKQ46kfUINCZy3x2Shd9Kuv8t703a/useuP
	5+u5Sn9hrEb0WsFhHGT46d0r4hBb+oQErHSvJIga/SKV4mmCKWUzMaMvYIdiVu2xKtV5qwjGTmayI
	8vFG4J4gknqRGMlcSpKeYHipDmOx9U+cbbQlzHsXcqfw30Miav0+gk/PF8AEZMH2zFDI4Yc/RvP2u
	H23CeuFw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utMvk-00000003yP6-1Ogl
	for barebox@lists.infradead.org;
	Tue, 02 Sep 2025 09:03:59 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1utMvh-0001N1-D2; Tue, 02 Sep 2025 11:03:53 +0200
Message-ID: <24ac7ede-0f36-4283-b654-9cccdfa97a37@pengutronix.de>
Date: Tue, 2 Sep 2025 11:03:52 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Tobias Waldekranz <tobias@waldekranz.com>, barebox@lists.infradead.org
References: <20250828150637.2222474-1-tobias@waldekranz.com>
 <07a7e6e0-f0dd-4969-888a-b616fe337158@pengutronix.de>
 <87frd83p9h.fsf@waldekranz.com>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <87frd83p9h.fsf@waldekranz.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250902_100356_984833_CCE8B175 
X-CRM114-Status: GOOD (  49.07  )
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
Cc: Michael Olbrich <mol@pengutronix.de>, Richard Weinberger <richard@nod.at>, Marco Felsch <m.felsch@pengutronix.de>, anis chali <chalianis1@gmail.com>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 0/5] dm: Initial work on a device mapper
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 8/31/25 9:48 AM, Tobias Waldekranz wrote:
> On fre, aug 29, 2025 at 13:24, Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:
>> On 28.08.25 17:05, Tobias Waldekranz wrote:
>> Fortunately, Anis (Cc'd) is right now working on exactly the use case
>> of filling out the missing pieces for using barebox as EFI payload on ARM and has
>> already submitted patches bringing this closer to completion.
> 
> Thanks for the background. Yeah, once I figured out I needed
> CONFIG_COMPILE_TEST to build for aarch64 I got the sense that there was
> still work to be done there :) That's alright though, I'm skating to
> where the puck will be.

Great. I think it shapes up quite nicely right now.

>> Sidenote: Something that been irking me for ages is the over-reliance
>> on FAT in systemd-boot. Could the FAT on a file system level break
>> by inopportune power cuts? We go to great lengths with barebox-state
>> and redundant buckets on raw partitions to avoid this and it leaves
>> me asking: Was I wrong to mistrust FAT or is a sudden power cut during
>> file system write operations not as much a concern for their users?
> 
> This has been bothering me too, and AFAIK the UEFI spec does not
> describe any way of defining a redundant ESP either?

Not really, but depending on the tools you use, there are workarounds:

- barebox skips partitions with the DPS_TYPE_FLAG_NO_AUTO flag.
Currently only for blspec, but in future also when searching for ESP

- RAUC supports a "boot-gpt-switch"[1] that "[changes] the GPT to switch
the first GPT partition entry between the first and second halves of a
region configured for that purpose"

[1]:
https://rauc.readthedocs.io/en/latest/advanced.html#update-bootloader-partition-in-gpt

>> I hope someone (maybe me instead of talking) should do fault injection
>> in QEMU or using kernel APIs and see how broken it can get.
> 
> That would be great. Doing it at the VM layer seems very hard, at least
> if you want something deterministic. In the kernel though, it should be
> easier to know when a filesystem is in an inconsistent state, and inject
> the errors at that point.

Ack.

>> they also support XBOOTLDR partitions? At least in barebox, you should
>> be able to just assign the rootfs partition of the Infix OS the XBOOTLDR
>> partition Type UUID to have barebox automatically look for the bootloader
>> spec entries there.
> 
> They do support that, yes. However, but that would mean that we could
> not use the DPS/DDI partition types that would allow for discovery of
> verity data/signature etc.

I haven't read the spec in full, but after a discussion with Jan (Cc'd),
we had an unanswered question about the root verity partition:

"Contains dm-verity integrity hash data for the matching root partition.
If this feature is used the partition UUID of the root partition should
be the first 128 bits of the root hash of the dm-verity hash data, and
the partition UUID of this dm-verity partition should be the final 128
bits of it, so that the root partition and its Verity partition can be
discovered easily, simply by specifying the root hash."

Now a UUID is only 128 bits and the partition UUID is supposed to be
unique, so splitting a 256 bit hash over two partitions UUIDs means that
in an A/B setup, we can end up with duplicate partition UUIDs if the
same update bundle is installed twice.

  - A and B root partition are identical
  - A and B verity super block are identical

When updating this may prove to be problematic: The system will start up
normally (partitions are identical), but when flashing the update, how
would the updater easily find out which is the inactive partition that
it should write to..?

> This is my plan forward as well. We're using the syslinux-flavor of the
> same idea at the moment. I like barebox's relaxation of the standard to
> allow for locating boot entries outside of ESP/XBOOTLDR, without which
> we would be back at the split-rootfs-and-kernel problem. Have you
> thought about making this case to the UAPI group to amend the spec?

I tried to get linux-appendroot upstreamed as first step, but haven't
been too successful so far:
https://github.com/uapi-group/specifications/pull/136

> Yeah I noticed that, _very_ useful. For Infix, if we end up going with
> LVM, I suspect we won't be able to send all of that info along with the
> commandline, and will end up needing to figure that out (again) in an
> initramfs - but for most cases I think it would work really well!

Ah, didn't think of LVM. If mix-and-match is no problem for you, then
doing it in the initramfs is a workable solution of course.

>> Generally speaking, whether DDI or veritysetup, if there exists a scheme
>> to put a signed hash somewhere discoverable and it's adopted by some
>> widely used tool, barebox should not unnecessarily reinvent the wheel.
> 
> Exactly. From what I understand, systemd already supports automatically
> sourcing the signature from a partition with the ID specified in DPS. So
> I don't see them switching from that to something else (Poettering
> himself seems quite involved with all UAPI specs).

Ack.

>> Thanks for taking the time and the good timing. I was meaning to use
>> the time writing this mails to cut down on some of the slides[3] for a second
>> talk at the Linux Security Summit today, but now they are getting more.
>> At least the talk is right before a break :)
> 
> Thanks for the shout-out! :)

You had me dig out WordArt just for this special announcement ;)

Cheers,
Ahmad

> 
>> [1]: https://osseu2025.sched.com/event/25VqL
>> [2]: https://osseu2025.sched.com/event/25VwO
>> [3]: https://lsseu2025.sched.com/event/25GEc
>>
>> Cheers,
>> Ahmad
>>
>>
>>>
>>>
>>> [1]: https://github.com/kernelkit/infix/
>>>
>>> Tobias Waldekranz (5):
>>>   string: add strtok/strtokv
>>>   dm: Add initial device mapper infrastructure
>>>   dm: linear: Add linear target
>>>   test: self: dm: Add test of linear target
>>>   commands: dmsetup: Basic command set for dm device management
>>>
>>>  commands/Kconfig             |  14 ++
>>>  commands/Makefile            |   1 +
>>>  commands/dmsetup.c           | 145 +++++++++++++
>>>  drivers/block/Kconfig        |   2 +
>>>  drivers/block/Makefile       |   1 +
>>>  drivers/block/dm/Kconfig     |  14 ++
>>>  drivers/block/dm/Makefile    |   3 +
>>>  drivers/block/dm/dm-core.c   | 393 +++++++++++++++++++++++++++++++++++
>>>  drivers/block/dm/dm-linear.c | 123 +++++++++++
>>>  drivers/block/dm/dm-target.h |  39 ++++
>>>  include/dm.h                 |  16 ++
>>>  include/string.h             |   2 +
>>>  lib/string.c                 |  66 ++++++
>>>  test/self/Kconfig            |   7 +
>>>  test/self/Makefile           |   1 +
>>>  test/self/dm.c               | 159 ++++++++++++++
>>>  16 files changed, 986 insertions(+)
>>>  create mode 100644 commands/dmsetup.c
>>>  create mode 100644 drivers/block/dm/Kconfig
>>>  create mode 100644 drivers/block/dm/Makefile
>>>  create mode 100644 drivers/block/dm/dm-core.c
>>>  create mode 100644 drivers/block/dm/dm-linear.c
>>>  create mode 100644 drivers/block/dm/dm-target.h
>>>  create mode 100644 include/dm.h
>>>  create mode 100644 test/self/dm.c
>>>
>>
>>
>> -- 
>> Pengutronix e.K.                           |                             |
>> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
>> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
>> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



