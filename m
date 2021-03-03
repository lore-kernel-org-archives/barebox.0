Delivery-date: Thu, 04 Mar 2021 01:03:30 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lHbSk-0000MD-52
	for lore@lore.pengutronix.de; Thu, 04 Mar 2021 01:03:30 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lHbSh-0005hm-M1
	for lore@pengutronix.de; Thu, 04 Mar 2021 01:03:29 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=xH27GlFf89KeZNhocN2E0ay+1PTpRPIQ7zKPdiWMxuU=; b=b+sziR7fqg9x7dzSMzNhWzUpk
	/w6BNLqGKuFAG2NUn+OvqWTJUhpuRmxX+X0p7g5/H5ScR9FAv6MD/5i0IfnWrZUmZDxdVC3f9pyLW
	wteDgI/jsyW64aAe3X1GAx+ckZk+VU54HbYTEwVfk++t4SW+Oz7vU5aQCOYZv9UHQMm3ElRASfsqL
	Z3ZtlnCDcCq8HXiZvJzYKEMjjhDSA4OoQUyJ5rEb3pOWOD0A6rIC1Q7Az26fGB4R17HGXETvJmOfr
	9H3HUVxbRGzFzncHQdzX1ZEHbbNE2M/qp0r4sHdZljy0vHd1BYgbY2mw/CgYMwj4sWFRJtlSdEamW
	NR8cSqvqg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lHbNj-0073BR-KH; Wed, 03 Mar 2021 23:58:19 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lHV2Q-005kDt-TT
 for barebox@desiato.infradead.org; Wed, 03 Mar 2021 17:11:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender
 :Reply-To:Content-ID:Content-Description;
 bh=KMI89Q/iCA556O5gvwcKeCoZh17mjDEYxIVpwfdF1zU=; b=q/VBODQXyD0eFFpLNzgvj1gKPX
 LASwCxURbCzbdoqdcI14XQmq1Fc0WH4hn4aGhCl7tnM8DIEQskaRcDxL94a1zVwhZ+nguLeU5Y6U1
 yvGIwZ+0CWQOAfZsS527ZgqWzYO/5sqoDYEjLAN+0Nx+iPaM4A8ZqTHHPXtk1aI7MzrddhkkTj+TE
 MdpqNpU67I++4KsMFqOTqpmXRnHYOuQjPtda9G734ZLL8Aix6V4Z1K98tIr/J7gMVG7t5rmp5azHl
 TYOevjgK/9RvIlAevMkbxYHobU3nQvrqgKaTlmMsZA3rujjw3haGSlldUIefCVRZMIahx0B8gPU//
 SGJRhMlg==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lHV2P-003VLQ-6M
 for barebox@lists.infradead.org; Wed, 03 Mar 2021 17:11:53 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[127.0.0.1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1lHV1I-0006lC-H8; Wed, 03 Mar 2021 18:10:44 +0100
To: Antony Pavlov <antonynpavlov@gmail.com>, Ahmad Fatoum <ahmad@a3f.at>
Cc: barebox@lists.infradead.org
References: <20210228190836.1451663-1-ahmad@a3f.at>
 <20210228190836.1451663-9-ahmad@a3f.at>
 <20210302172814.ac8a31bd01efa18df2065992@gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <f26cf4dc-5412-77b1-2b18-ad862eb5bbf7@pengutronix.de>
Date: Wed, 3 Mar 2021 18:10:43 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <20210302172814.ac8a31bd01efa18df2065992@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210303_171153_712031_E129340E 
X-CRM114-Status: GOOD (  19.88  )
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
X-Spam-Status: No, score=-3.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 9/9] virtio: virtio-pci: restrict MIPS support to MMU
 configuration
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Antony,

On 02.03.21 15:28, Antony Pavlov wrote:
> On Sun, 28 Feb 2021 20:08:36 +0100
> Ahmad Fatoum <ahmad@a3f.at> wrote:
> 
> Hi!
> 
>> MMU-less MIPS doesn't play along nicely with VIRTIO_PCI.
>> e.g. Reading from a virtio-rng, will return clearly bogus data.
>> Document this in the Kconfig, so no one else trips over this.
>>
>> Eventually, this should be fixed..
> 
> 
> Please describe, how can I reproduce the problem.

- Apply this series on top of next, but revert this patch
- Use qemu-malta-defconfig
- Built with CONFIG_HW_RANDOM_VIRTIO=y and CONFIG_VIRTIO_PCI=y
- Run:
  qemu-system-mips -m 256M -device VGA -M malta -serial stdio -monitor null \
  -bios ./images/barebox-qemu-malta.img -device virtio-rng-pci,disable-legacy=on
- Execute md -s /dev/hwrng0 three times:

barebox@qemu malta:/ md -s /dev/hwrng0 
00000000: 0000e632 0000000d 81ff8410 00000000                ...2............
00000010: 0000e632 0000000d 81ff8410 00000000                ...2............
00000020: 0000e632 0000000d 81ff8410 00000000                ...2............
00000030: 0000e632 0000000d 81ff8410 00000000                ...2............
00000040: 0000e632 0000000d 81ff8410 00000000                ...2............
00000050: 0000e632 0000000d 81ff8410 00000000                ...2............
00000060: 0000e632 0000000d 81ff8410 00000000                ...2............
00000070: 0000e632 0000000d 81ff8410 00000000                ...2............
00000080: 0000e632 0000000d 81ff8410 00000000                ...2............
00000090: 0000e632 0000000d 81ff8410 00000000                ...2............
000000a0: 0000e632 0000000d 81ff8410 00000000                ...2............
000000b0: 0000e632 0000000d 81ff8410 00000000                ...2............
000000c0: 0000e632 0000000d 81ff8410 00000000                ...2............
000000d0: 0000e632 0000000d 81ff8410 00000000                ...2............
000000e0: 0000e632 0000000d 81ff8410 00000000                ...2............
000000f0: 0000e632 0000000d 81ff8410 00000000                ...2............
barebox@qemu malta:/ md -s /dev/hwrng0 
00000000: 30303030 30306630 3a203030 30306536                000000f0: 0000e6
00000010: 30303030 30306630 3a203030 30306536                000000f0: 0000e6
00000020: 30303030 30306630 3a203030 30306536                000000f0: 0000e6
00000030: 30303030 30306630 3a203030 30306536                000000f0: 0000e6
00000040: 30303030 30306630 3a203030 30306536                000000f0: 0000e6
00000050: 30303030 30306630 3a203030 30306536                000000f0: 0000e6
00000060: 30303030 30306630 3a203030 30306536                000000f0: 0000e6
00000070: 30303030 30306630 3a203030 30306536                000000f0: 0000e6
00000080: 30303030 30306630 3a203030 30306536                000000f0: 0000e6
00000090: 30303030 30306630 3a203030 30306536                000000f0: 0000e6
000000a0: 30303030 30306630 3a203030 30306536                000000f0: 0000e6
000000b0: 30303030 30306630 3a203030 30306536                000000f0: 0000e6
000000c0: 30303030 30306630 3a203030 30306536                000000f0: 0000e6
000000d0: 30303030 30306630 3a203030 30306536                000000f0: 0000e6
000000e0: 30303030 30306630 3a203030 30306536                000000f0: 0000e6
000000f0: 30303030 30306630 3a203030 30306536                000000f0: 0000e6
barebox@qemu malta:/ md -s /dev/hwrng0 
00000000: 30303030 30306630 3a203330 33303330                000000f0: 303030
00000010: 30303030 30306630 3a203330 33303330                000000f0: 303030
00000020: 30303030 30306630 3a203330 33303330                000000f0: 303030
00000030: 30303030 30306630 3a203330 33303330                000000f0: 303030
00000040: 30303030 30306630 3a203330 33303330                000000f0: 303030
00000050: 30303030 30306630 3a203330 33303330                000000f0: 303030
00000060: 30303030 30306630 3a203330 33303330                000000f0: 303030
00000070: 30303030 30306630 3a203330 33303330                000000f0: 303030
00000080: 30303030 30306630 3a203330 33303330                000000f0: 303030
00000090: 30303030 30306630 3a203330 33303330                000000f0: 303030
000000a0: 30303030 30306630 3a203330 33303330                000000f0: 303030
000000b0: 30303030 30306630 3a203330 33303330                000000f0: 303030
000000c0: 30303030 30306630 3a203330 33303330                000000f0: 303030
000000d0: 30303030 30306630 3a203330 33303330                000000f0: 303030
000000e0: 30303030 30306630 3a203330 33303330                000000f0: 303030
000000f0: 30303030 30306630 3a203330 33303330                000000f0: 303030


Something is clearly wrong here, but I didn't look further.
If you repeat the same steps but with CONFIG_MMU=y, you will see random
data as expected (You can cp /dev/hwrng0 /dev/fb0 to see for yourself
that there is no obvious pattern, unlike with MMU=n).

Cheers,
Ahmad

> 
> 
>>
>> Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
>> ---
>>  drivers/virtio/Kconfig | 1 +
>>  1 file changed, 1 insertion(+)
>>
>> diff --git a/drivers/virtio/Kconfig b/drivers/virtio/Kconfig
>> index ecf66987b3ed..91a89d3e1b89 100644
>> --- a/drivers/virtio/Kconfig
>> +++ b/drivers/virtio/Kconfig
>> @@ -28,6 +28,7 @@ config VIRTIO_MMIO
>>  config VIRTIO_PCI
>>  	tristate "PCI driver for virtio devices"
>>  	depends on PCI && HAS_DMA
>> +	depends on MMU && MIPS || !MIPS
>>  	select VIRTIO
>>  	help
>>  	  This driver provides support for virtio based paravirtual device
>> -- 
>> 2.30.0
>>
>>
>> _______________________________________________
>> barebox mailing list
>> barebox@lists.infradead.org
>> http://lists.infradead.org/mailman/listinfo/barebox
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

