Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mickerik.phytec.de ([195.145.39.210])
 by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jt3zq-0006mI-Az
 for barebox@lists.infradead.org; Wed, 08 Jul 2020 06:55:59 +0000
References: <1593524914-228154-1-git-send-email-r.karszniewicz@phytec.de>
 <1a2cb925-dccd-8de7-08da-c4abe76d473c@phytec.de>
 <20200701055834.GK15485@pengutronix.de>
From: =?UTF-8?Q?Stefan_Riedm=c3=bcller?= <s.riedmueller@phytec.de>
Message-ID: <d89ff71b-e442-83aa-9ca5-dcf49002e23f@phytec.de>
Date: Wed, 8 Jul 2020 08:55:56 +0200
MIME-Version: 1.0
In-Reply-To: <20200701055834.GK15485@pengutronix.de>
Content-Language: en-US
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [RFC PATCH 0/4] Introduce global.bootm.root env var for booting
 via PARTUUID
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org, Robert Karszniewicz <r.karszniewicz@phytec.de>

Hi Sascha,

let me answer on behalf of Robert.

On 01.07.20 07:58, Sascha Hauer wrote:
> Hi Robert,
> 
> On Tue, Jun 30, 2020 at 04:20:17PM +0200, Robert Karszniewicz wrote:
>> The problem is that we want to be able to have the rootfs and kernel on
>> separate partitions.
> 
> Why do you want to have that? It's kind of traditional to have the
> kernel separated from the rootfs in some extra "kernel" partition, but
> are there good reasons for it? There's an overhead in that the
> bootloader has to read from a filesystem instead of only a raw
> partition. Is that the reason?

Actually the reason is that we have this separate setup for quite some time 
now in the field and changing it would have a whole string of consequences 
attached to it. So we try not to change this setup, at least for existing 
systems.

That is why we would like to be able to get the PARTUUID from another 
Partition than the one containing the kernel image.

What do you think of Roberts proposal?

> 
> Here at Pengutronix we are happy that we only have one partition image
> that has everything needed to boot, including a description how to boot
> it and including the kernel. No extra items that the bootloader has to
> take care of, just put one thing somewhere and be done with it.

This sounds like a good thing to have and I think we should consider this 
for new platforms.

Regards,
Stefan

> 
>> We've looked into the Boot Loader Specification, but
>> from what we saw, it makes A-B systems difficult (according to the spec,
>> there can only be one "$BOOT" filesystem on a device).
> 
> barebox is more relaxed here. What we do here is to put two full root
> filesystems into two different partitions on a SD/MMC. Each of the
> partitions has one or more /loader/entries/*.conf file(s) and kernels.
> You can then boot with "boot mmc0.0" into the first rootfs or with "boot
> mmc0.1" into the second.
> This may not be really conform to the specification, but works in
> barebox and is a supported usecase. We do this for A/B Boot scenarios in
> many projects.
> 
> Regards,
>    Sascha
> 

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
